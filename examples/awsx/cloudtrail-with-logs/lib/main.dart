import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class CloudtrailWithLogsNodejsStack extends pulumi.Stack {
  late final pulumi.Output<String?> logGroupArn;
  late final pulumi.Output<String?> trailCloudWatchLogGroupArn;

  CloudtrailWithLogsNodejsStack() {
    final trail = awsx.cloudtrail.Trail(
      'with-logs',
      args: awsx.cloudtrail.TrailArgs(
        enableLogging: true.input(),
        cloudWatchLogsGroup: awsx.awsx
            .OptionalLogGroup(
              enable: true.input(),
              args: awsx.awsx.LogGroup(retentionInDays: 7.input()).input(),
            )
            .input(),
      ),
    );

    logGroupArn = trail.logGroup.apply<String?>((lg) => lg?.arn);
    trailCloudWatchLogGroupArn = logGroupArn.apply<String?>(
      (arn) => arn == null ? null : '$arn:*',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('logGroupArn', logGroupArn),
      pulumi.OutputProperty(
        'trailCloudWatchLogGroupArn',
        trailCloudWatchLogGroupArn,
      ),
    ];
  }
}
