// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZonalAutoshiftConfigurationBlockingAlarm {
  /// ARN of the CloudWatch alarm.
  final pulumi.Input<String> alarmIdentifier;
  /// Type of control condition. Valid value: `CLOUDWATCH`.
  final pulumi.Input<String> type;

  /// Creates a new [ZonalAutoshiftConfigurationBlockingAlarm].
  /// [alarmIdentifier] ARN of the CloudWatch alarm.
  /// [type] Type of control condition. Valid value: `CLOUDWATCH`.
  const ZonalAutoshiftConfigurationBlockingAlarm({
    required this.alarmIdentifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmIdentifier': alarmIdentifier,
      'type': type,
    };
  }

  factory ZonalAutoshiftConfigurationBlockingAlarm.fromMap(Map<String, dynamic> map) {
    return ZonalAutoshiftConfigurationBlockingAlarm(
      alarmIdentifier: pulumi.Input.fromValue(map['alarmIdentifier'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
