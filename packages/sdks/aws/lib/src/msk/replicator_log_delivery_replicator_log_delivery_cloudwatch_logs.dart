// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs {
  /// Boolean whether to enable log delivery to CloudWatch Logs.
  final pulumi.Input<bool> enabled;
  /// Name of CloudWatch Logs log group. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  final pulumi.Input<String?>? logGroup;

  /// Creates a new [ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs].
  /// [enabled] Boolean whether to enable log delivery to CloudWatch Logs.
  /// [logGroup] Name of CloudWatch Logs log group. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  const ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
    };
  }

  factory ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ReplicatorLogDeliveryReplicatorLogDeliveryCloudwatchLogs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
