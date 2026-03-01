// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_subscription_filter_log_subscription_filter_args_doc}
/// The set of arguments for LogSubscriptionFilter.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_subscription_filter_log_subscription_filter_args_doc}
class LogSubscriptionFilterArgs {
  /// Boolean to indicate whether to apply the subscription filter on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  final pulumi.Input<bool>? applyOnTransformedLogs;
  /// ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
  final pulumi.Input<String> destinationArn;
  /// Method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
  final pulumi.Input<String>? distribution;
  /// List of system fields to include in the log events sent to the subscription destination. These fields provide source information for centralized log data in the forwarded payload. Valid values: `"@aws.account"`, `"@aws.region"`. To remove this argument after it has been set, specify an empty list `[]` explicitly to avoid perpetual differences.
  final pulumi.Input<List<String>>? emitSystemFields;
  /// Valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string `""` to match everything. For more information, see the [Amazon CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String> filterPattern;
  /// Name of the log group to associate the subscription filter with.
  final pulumi.Input<String> logGroup;
  /// Name for the subscription filter.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery. If you use Lambda as a destination, you should skip this argument and use `aws.lambda.Permission` resource for granting access from CloudWatch logs to the destination Lambda function.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [LogSubscriptionFilterArgs].
  /// [applyOnTransformedLogs] Boolean to indicate whether to apply the subscription filter on the transformed version of the log events instead of the original ingested log events. Defaults to `false`. Valid only for log groups that have an active log transformer.
  /// [destinationArn] ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN.
  /// [distribution] Method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. Valid values are "Random" and "ByLogStream".
  /// [emitSystemFields] List of system fields to include in the log events sent to the subscription destination. These fields provide source information for centralized log data in the forwarded payload. Valid values: `"@aws.account"`, `"@aws.region"`. To remove this argument after it has been set, specify an empty list `[]` explicitly to avoid perpetual differences.
  /// [filterPattern] Valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. Use empty string `""` to match everything. For more information, see the [Amazon CloudWatch Logs User Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroup] Name of the log group to associate the subscription filter with.
  /// [name] Name for the subscription filter.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery. If you use Lambda as a destination, you should skip this argument and use `aws.lambda.Permission` resource for granting access from CloudWatch logs to the destination Lambda function.
  LogSubscriptionFilterArgs({
    pulumi.Output<bool>? applyOnTransformedLogs,
    required pulumi.Output<String> destinationArn,
    pulumi.Output<String>? distribution,
    pulumi.Output<List<String>>? emitSystemFields,
    required pulumi.Output<String> filterPattern,
    required pulumi.Output<String> logGroup,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
  }) :
      applyOnTransformedLogs = pulumi.Input.asOptionalInput<bool>(applyOnTransformedLogs),
      destinationArn = pulumi.Input.asInput<String>(destinationArn),
      distribution = pulumi.Input.asOptionalInput<String>(distribution),
      emitSystemFields = pulumi.Input.asOptionalInput<List<String>>(emitSystemFields),
      filterPattern = pulumi.Input.asInput<String>(filterPattern),
      logGroup = pulumi.Input.asInput<String>(logGroup),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnTransformedLogs': ?applyOnTransformedLogs,
      'destinationArn': destinationArn,
      'distribution': ?distribution,
      'emitSystemFields': ?emitSystemFields,
      'filterPattern': filterPattern,
      'logGroup': logGroup,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory LogSubscriptionFilterArgs.fromMap(Map<String, dynamic> map) {
    return LogSubscriptionFilterArgs(
      applyOnTransformedLogs: map['applyOnTransformedLogs'] == null ? null : pulumi.Output.create<bool>(map['applyOnTransformedLogs'] as bool),
      destinationArn: pulumi.Output.create<String>(map['destinationArn'] as String),
      distribution: map['distribution'] == null ? null : pulumi.Output.create<String>(map['distribution'] as String),
      emitSystemFields: map['emitSystemFields'] == null ? null : pulumi.Output.create<List<String>>((map['emitSystemFields'] as List).cast<String>()),
      filterPattern: pulumi.Output.create<String>(map['filterPattern'] as String),
      logGroup: pulumi.Output.create<String>(map['logGroup'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

