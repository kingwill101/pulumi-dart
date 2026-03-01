// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directoryservice_log_subscription_log_subscription_args_doc}
/// The set of arguments for LogSubscription.
/// {@endtemplate}
/// {@macro pulumi_directoryservice_log_subscription_log_subscription_args_doc}
class LogSubscriptionArgs {
  /// ID of directory.
  final pulumi.Input<String> directoryId;
  /// Name of the cloudwatch log group to which the logs should be published. The log group should be already created and the directory service principal should be provided with required permission to create stream and publish logs. Changing this value would delete the current subscription and create a new one. A directory can only have one log subscription at a time.
  final pulumi.Input<String> logGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LogSubscriptionArgs].
  /// [directoryId] ID of directory.
  /// [logGroupName] Name of the cloudwatch log group to which the logs should be published. The log group should be already created and the directory service principal should be provided with required permission to create stream and publish logs. Changing this value would delete the current subscription and create a new one. A directory can only have one log subscription at a time.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LogSubscriptionArgs({
    required pulumi.Output<String> directoryId,
    required pulumi.Output<String> logGroupName,
    pulumi.Output<String>? region,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      logGroupName = pulumi.Input.asInput<String>(logGroupName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'logGroupName': logGroupName,
      'region': ?region,
    };
  }

  factory LogSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LogSubscriptionArgs(
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      logGroupName: pulumi.Output.create<String>(map['logGroupName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

