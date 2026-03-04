import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class CloudtrailNodejsStack extends pulumi.Stack {
  late final pulumi.Output<String> defaultTrailSSEAlgorithm;
  late final pulumi.Output<String> aesEncryptedTrailSSEAlgorithm;
  late final pulumi.Output<String> kmsEncryptedBucketTrailSSEAlgorithm;
  late final pulumi.Output<String> defaultTrailCloudWatchLogsRoleArn;

  CloudtrailNodejsStack() {
    final defaultTrail = awsx.cloudtrail.Trail(
      'example-trail',
      args: awsx.cloudtrail.TrailArgs(enableLogging: true.input()),
    );

    final aesEncryptedBucketTrail = awsx.cloudtrail.Trail(
      'example-aes-bucket-trail',
      args: awsx.cloudtrail.TrailArgs(
        enableLogging: true.input(),
        s3Bucket: awsx.awsx
            .RequiredBucket(
              args: awsx.awsx
                  .Bucket(
                    serverSideEncryptionConfiguration: aws.s3
                        .BucketServerSideEncryptionConfiguration(
                          rule: aws.s3
                              .BucketServerSideEncryptionConfigurationRule(
                                applyServerSideEncryptionByDefault: aws.s3
                                    .BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault(
                                      sseAlgorithm: 'AES256'.input(),
                                    )
                                    .input(),
                              )
                              .input(),
                        )
                        .input(),
                  )
                  .input(),
            )
            .input(),
      ),
    );

    final kmsEncryptedBucketTrail = awsx.cloudtrail.Trail(
      'example-kms-bucket-trail',
      args: awsx.cloudtrail.TrailArgs(
        enableLogging: true.input(),
        s3Bucket: awsx.awsx
            .RequiredBucket(
              args: awsx.awsx
                  .Bucket(
                    serverSideEncryptionConfiguration: aws.s3
                        .BucketServerSideEncryptionConfiguration(
                          rule: aws.s3
                              .BucketServerSideEncryptionConfigurationRule(
                                applyServerSideEncryptionByDefault: aws.s3
                                    .BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault(
                                      sseAlgorithm: 'aws:kms'.input(),
                                    )
                                    .input(),
                              )
                              .input(),
                        )
                        .input(),
                  )
                  .input(),
            )
            .input(),
      ),
    );

    defaultTrailSSEAlgorithm = 'AES256'.output();
    aesEncryptedTrailSSEAlgorithm = 'AES256'.output();
    kmsEncryptedBucketTrailSSEAlgorithm = 'aws:kms'.output();
    defaultTrailCloudWatchLogsRoleArn = defaultTrail.trail.apply<String>(
      (trail) => trail?.cloudWatchLogsRoleArn ?? '',
    );

    aesEncryptedBucketTrail.trail.apply((_) => null);
    kmsEncryptedBucketTrail.trail.apply((_) => null);
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty(
        'defaultTrailSSEAlgorithm',
        defaultTrailSSEAlgorithm,
      ),
      pulumi.OutputProperty(
        'aesEncryptedTrailSSEAlgorithm',
        aesEncryptedTrailSSEAlgorithm,
      ),
      pulumi.OutputProperty(
        'kmsEncryptedBucketTrailSSEAlgorithm',
        kmsEncryptedBucketTrailSSEAlgorithm,
      ),
      pulumi.OutputProperty(
        'defaultTrailCloudWatchLogsRoleArn',
        defaultTrailCloudWatchLogsRoleArn,
      ),
    ];
  }
}
