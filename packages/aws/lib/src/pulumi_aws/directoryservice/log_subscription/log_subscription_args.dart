// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogSubscription.
class LogSubscriptionArgs {
  /// ID of directory.
  final pulumi.Input<String> directoryId;

  /// Name of the cloudwatch log group to which the logs should be published. The log group should be already created and the directory service principal should be provided with required permission to create stream and publish logs. Changing this value would delete the current subscription and create a new one. A directory can only have one log subscription at a time.
  final pulumi.Input<String> logGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LogSubscriptionArgs({
    required this.directoryId,
    required this.logGroupName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['directoryId'] = directoryId;
    map['logGroupName'] = logGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LogSubscriptionArgs(
      directoryId: pulumi.Input.asInput<String>(map['directoryId']),
      logGroupName: pulumi.Input.asInput<String>(map['logGroupName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
