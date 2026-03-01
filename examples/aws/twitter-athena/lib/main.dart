import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class TwitterAthenaStack extends pulumi.Stack {
  late final pulumi.Output<String> bucketName;
  late final pulumi.Output<String> athenaDatabase;
  late final pulumi.Output<String> topUsersQueryUri;
  late final pulumi.Output<String> createTableQueryUri;

  TwitterAthenaStack() {
    final config = pulumi.Config();
    final consumerKey = config.require('twitterConsumerKey');
    final consumerSecret = config.require('twitterConsumerSecret');
    final accessTokenKey = config.require('twitterAccessTokenKey');
    final accessTokenSecret = config.require('twitterAccessTokenSecret');
    final twitterQuery = config.require('twitterQuery');

    final bucket = aws.s3.Bucket(
      'tweet-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true),
    );

    aws.s3.BucketServerSideEncryptionConfigurationV2(
      'tweet-bucket-sse',
      args: aws.s3.BucketServerSideEncryptionConfigurationV2Args(
        bucket: bucket.bucket,
        rules: [
          aws.s3.BucketServerSideEncryptionConfigurationV2Rule(
            applyServerSideEncryptionByDefault:
                aws.s3.BucketServerSideEncryptionConfigurationV2RuleApplyServerSideEncryptionByDefault(
                      sseAlgorithm: 'AES256',
                    )
                    .output(),
          ),
        ].output(),
      ),
    );

    final fetchTweetsRole = aws.iam.Role(
      'fetch-tweets-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy:
            '''
{
  "Version":"2012-10-17",
  "Statement":[
    {
      "Effect":"Allow",
      "Principal":{"Service":"lambda.amazonaws.com"},
      "Action":"sts:AssumeRole"
    }
  ]
}
''',
      ),
    );

    aws.iam.RolePolicyAttachment(
      'fetch-tweets-lambda-exec',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: fetchTweetsRole.name,
        policyArn: 'arn:aws:iam::aws:policy/AWSLambdaExecute',
      ),
    );

    final fetchTweets = aws.lambda.FunctionType(
      'on-timer-event',
      args: aws.lambda.FunctionArgs(
        role: fetchTweetsRole.arn,
        runtime: aws.lambda.Runtime.nodeJS20dX.value,
        handler: 'index.handler',
        code: pulumi.FileArchive('./lambda/fetch-tweets'),
        timeout: 30,
        environment: aws.lambda.FunctionEnvironment(
          variables: {
            'TWITTER_CONSUMER_KEY': consumerKey,
            'TWITTER_CONSUMER_SECRET': consumerSecret,
            'TWITTER_ACCESS_TOKEN_KEY': accessTokenKey,
            'TWITTER_ACCESS_TOKEN_SECRET': accessTokenSecret,
            'TWITTER_QUERY': twitterQuery,
            'OUTPUT_FOLDER': 'tweets',
            'BUCKET_NAME': bucket.bucket,
          },
        ).output(),
      ),
    );

    final rule = aws.cloudwatch.EventRule(
      'twitter-search-timer',
      args: aws.cloudwatch.EventRuleArgs(scheduleExpression: 'rate(1 minute)'),
    );

    aws.cloudwatch.EventTarget(
      'twitter-search-target',
      args: aws.cloudwatch.EventTargetArgs(arn: fetchTweets.arn, rule: rule.name),
    );

    aws.lambda.Permission(
      'allow-events-invoke-fetch-tweets',
      args: aws.lambda.PermissionArgs(
        action: 'lambda:InvokeFunction',
        function: fetchTweets.name,
        principal: 'events.amazonaws.com',
        sourceArn: rule.arn,
      ),
    );

    final athenaDb = aws.athena.Database(
      'tweets_database_1',
      args: aws.athena.DatabaseArgs(bucket: bucket.bucket, forceDestroy: true),
    );

    final createTableQuery = bucket.bucket.apply(
      (b) => '''
CREATE EXTERNAL TABLE IF NOT EXISTS tweets (
  id string,
  text string,
  user string,
  isVerified boolean,
  url string,
  followers int,
  hashtags string,
  isRetweet boolean
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://$b/tweets/';
''',
    );

    final topUsersQuery = '''
select distinct user, followers, text, url
from tweets
where isRetweet = false and followers > 1000
order by followers desc
''';

    final createTableNamed = aws.athena.NamedQuery(
      'createTable',
      args: aws.athena.NamedQueryArgs(
        database: athenaDb.id,
        query: createTableQuery,
      ),
    );

    final topUsersNamed = aws.athena.NamedQuery(
      'topUsers',
      args: aws.athena.NamedQueryArgs(database: athenaDb.id, query: topUsersQuery),
    );

    final awsConfig = pulumi.Config('aws');
    final region = awsConfig.require('region');

    String queryUri(String queryId) =>
        'https://$region.console.aws.amazon.com/athena/home?force#query/saved/$queryId';

    bucketName = bucket.bucket;
    athenaDatabase = athenaDb.id;
    topUsersQueryUri = topUsersNamed.id.apply(queryUri);
    createTableQueryUri = createTableNamed.id.apply(queryUri);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('bucketName', bucketName),
      pulumi.OutputProperty('athenaDatabase', athenaDatabase),
      pulumi.OutputProperty('topUsersQueryUri', topUsersQueryUri),
      pulumi.OutputProperty('createTableQueryUri', createTableQueryUri),
    ];
  }
}
