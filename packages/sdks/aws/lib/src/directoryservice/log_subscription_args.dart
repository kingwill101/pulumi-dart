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
    required this.directoryId,
    required this.logGroupName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'logGroupName': logGroupName,
      'region': ?region,
    };
  }

  factory LogSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LogSubscriptionArgs(
      directoryId: (map['directoryId'] as String).input(),
      logGroupName: (map['logGroupName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

