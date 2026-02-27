import 'package:pulumi/pulumi.dart';
import 'log_subscription_filter_args.dart';

/// Provides a CloudWatch Logs subscription filter resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs subscription filter using the log group name and subscription filter name separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logSubscriptionFilter:LogSubscriptionFilter test_lambdafunction_logfilter "/aws/lambda/example_lambda_name|test_lambdafunction_logfilter"
/// ```
class LogSubscriptionFilter extends CustomResource {
  /// Boolean to indicate whether to apply the subscription filter on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  late final Output<bool> applyOnTransformedLogs;

  /// ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
  late final Output<String> destinationArn;

  /// Method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
  late final Output<String?> distribution;

  /// List of system fields to include in the log events sent to the subscription destination. These fields provide source information for centralized log data in the forwarded payload. Valid values: `"@aws.account"`, `"@aws.region"`. To remove this argument after it has been set, specify an empty list `[]` explicitly to avoid perpetual differences.
  late final Output<List<String>?> emitSystemFields;

  /// Valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string `""` to match everything. For more information, see the [Amazon CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  late final Output<String> filterPattern;

  /// Name of the log group to associate the subscription filter with.
  late final Output<String> logGroup;

  /// Name for the subscription filter.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery. If you use Lambda as a destination, you should skip this argument and use `aws.lambda.Permission` resource for granting access from CloudWatch logs to the destination Lambda function.
  late final Output<String> roleArn;

  LogSubscriptionFilter(
    String name, {
    LogSubscriptionFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logSubscriptionFilter:LogSubscriptionFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyOnTransformedLogs =
        registerOutput<bool>('applyOnTransformedLogs');
    this.destinationArn = registerOutput<String>('destinationArn');
    this.distribution = registerOutput<String?>('distribution');
    this.emitSystemFields = registerOutput<List<String>?>('emitSystemFields');
    this.filterPattern = registerOutput<String>('filterPattern');
    this.logGroup = registerOutput<String>('logGroup');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
