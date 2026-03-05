import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    aws.cloudwatch.Dashboard(
      'mydashboard',
      args: aws.cloudwatch.DashboardArgs(
        dashboardName: 'my-dashboard'.input(),
        dashboardBody: jsonEncode({
          'widgets': [
            {
              'type': 'metric',
              'x': 0,
              'y': 0,
              'width': 12,
              'height': 6,
              'properties': {
                'metrics': [
                  ['AWS/EC2', 'CPUUtilization', 'InstanceId', 'i-012345'],
                ],
                'period': 300,
                'stat': 'Average',
                'region': 'us-east-1',
                'title': 'EC2 Instance CPU',
              },
            },
            {
              'type': 'text',
              'x': 0,
              'y': 7,
              'width': 3,
              'height': 3,
              'properties': {'markdown': 'Hello world'},
            },
          ],
        }).input(),
      ),
    );

    final loginsTopic = aws.sns.Topic('myloginstopic');

    final eventRule = aws.cloudwatch.EventRule(
      'myeventrule',
      args: aws.cloudwatch.EventRuleArgs(
        eventPattern: jsonEncode({
          'detail-type': ['AWS Console Sign In via CloudTrail'],
        }).input(),
      ),
    );

    aws.cloudwatch.EventTarget(
      'myeventtarget',
      args: aws.cloudwatch.EventTargetArgs(
        rule: eventRule.name,
        targetId: 'SendToSNS'.input(),
        arn: loginsTopic.arn,
      ),
    );

    final logGroup = aws.cloudwatch.LogGroup('myloggroup');

    aws.cloudwatch.LogMetricFilter(
      'mylogmetricfilter',
      args: aws.cloudwatch.LogMetricFilterArgs(
        pattern: ''.input(),
        logGroupName: logGroup.name,
        metricTransformation: aws.cloudwatch
            .LogMetricFilterMetricTransformation(
              name: 'EventCount'.input(),
              namespace: 'YourNamespace'.input(),
              value: '1'.input(),
            )
            .input(),
      ),
    );

    aws.cloudwatch.LogStream(
      'mylogstream',
      args: aws.cloudwatch.LogStreamArgs(logGroupName: logGroup.name),
    );

    aws.cloudwatch.MetricAlarm(
      'mymetricalarm',
      args: aws.cloudwatch.MetricAlarmArgs(
        comparisonOperator: 'GreaterThanOrEqualToThreshold'.input(),
        evaluationPeriods: 2.input(),
        metricName: 'CPUUtilization'.input(),
        namespace: 'AWS/EC2'.input(),
        period: 120.input(),
        statistic: 'Average'.input(),
        threshold: 80.0.input(),
        alarmDescription: 'This metric monitors ec2 cpu utilization'.input(),
      ),
    );

    aws.dynamodb.Table(
      'mytable',
      args: aws.dynamodb.TableArgs(
        attributes: [
          aws.dynamodb.TableAttribute(name: 'Id'.input(), type: 'S'.input()),
        ].input(),
        hashKey: 'Id'.input(),
        readCapacity: 1.input(),
        writeCapacity: 1.input(),
      ),
    );

    aws.ec2.Eip('myeip');

    aws.ec2.SecurityGroup(
      'mysecuritygroup',
      args: aws.ec2.SecurityGroupArgs(
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final vpc = aws.ec2.Vpc(
      'myvpc',
      args: aws.ec2.VpcArgs(cidrBlock: '10.0.0.0/16'.input()),
    );

    final internetGateway = aws.ec2.InternetGateway(
      'myinternetgateway',
      args: aws.ec2.InternetGatewayArgs(vpcId: vpc.id),
    );

    aws.ec2.RouteTable(
      'myroutetable',
      args: aws.ec2.RouteTableArgs(
        routes: [
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0'.input(),
            gatewayId: internetGateway.id,
          ),
        ].input(),
        vpcId: vpc.id,
      ),
    );

    final repository = aws.ecr.Repository('myrepository');

    aws.ecr.RepositoryPolicy(
      'myrepositorypolicy',
      args: aws.ecr.RepositoryPolicyArgs(
        repository: repository.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Sid': 'new policy',
              'Effect': 'Allow',
              'Principal': '*',
              'Action': [
                'ecr:GetDownloadUrlForLayer',
                'ecr:BatchGetImage',
                'ecr:BatchCheckLayerAvailability',
                'ecr:PutImage',
                'ecr:InitiateLayerUpload',
                'ecr:UploadLayerPart',
                'ecr:CompleteLayerUpload',
                'ecr:DescribeRepositories',
                'ecr:GetRepositoryPolicy',
                'ecr:ListImages',
                'ecr:DeleteRepository',
                'ecr:BatchDeleteImage',
                'ecr:SetRepositoryPolicy',
                'ecr:DeleteRepositoryPolicy',
              ],
            },
          ],
        }).input(),
      ),
    );

    aws.ecr.LifecyclePolicy(
      'mylifecyclepolicy',
      args: aws.ecr.LifecyclePolicyArgs(
        repository: repository.id,
        policy: jsonEncode({
          'rules': [
            {
              'rulePriority': 1,
              'description': 'Expire images older than 14 days',
              'selection': {
                'tagStatus': 'untagged',
                'countType': 'sinceImagePushed',
                'countUnit': 'days',
                'countNumber': 14,
              },
              'action': {'type': 'expire'},
            },
          ],
        }).input(),
      ),
    );

    aws.ecs.Cluster('mycluster');

    final role = aws.iam.Role(
      'myrole',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'ec2.amazonaws.com'},
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicy(
      'myrolepolicy',
      args: aws.iam.RolePolicyArgs(
        role: role.id,
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': ['ec2:Describe*'],
              'Effect': 'Allow',
              'Resource': '*',
            },
          ],
        }).input(),
      ),
    );

    final policy = aws.iam.Policy(
      'mypolicy',
      args: aws.iam.PolicyArgs(
        policy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': ['ec2:Describe*'],
              'Effect': 'Allow',
              'Resource': '*',
            },
          ],
        }).input(),
      ),
    );

    aws.iam.RolePolicyAttachment(
      'myrolepolicyattachment',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: role.name,
        policyArn: policy.arn,
      ),
    );

    aws.iam.User('myuser');
    aws.iam.Group('mygroup');

    aws.kinesis.Stream(
      'mystream',
      args: aws.kinesis.StreamArgs(shardCount: 1.input()),
    );

    final queue = aws.sqs.Queue('myqueue');
    final topic = aws.sns.Topic('mytopic');

    aws.sns.TopicSubscription(
      'mytopicsubscription',
      args: aws.sns.TopicSubscriptionArgs(
        topic: topic.arn,
        protocol: 'sqs'.input(),
        endpoint: queue.arn,
      ),
    );
  }
}
