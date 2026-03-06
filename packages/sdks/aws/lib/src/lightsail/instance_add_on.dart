// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAddOn {
  /// Daily time when an automatic snapshot will be created. Must be in HH:00 format, and in an hourly increment and specified in Coordinated Universal Time (UTC). The snapshot will be automatically created between the time specified and up to 45 minutes after.
  final pulumi.Input<String> snapshotTime;
  /// Status of the add-on. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String> status;
  /// Add-on type. There is currently only one valid type `AutoSnapshot`.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceAddOn].
  /// [snapshotTime] Daily time when an automatic snapshot will be created. Must be in HH:00 format, and in an hourly increment and specified in Coordinated Universal Time (UTC). The snapshot will be automatically created between the time specified and up to 45 minutes after.
  /// [status] Status of the add-on. Valid values: `Enabled`, `Disabled`.
  /// [type] Add-on type. There is currently only one valid type `AutoSnapshot`.
  const InstanceAddOn({
    required this.snapshotTime,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotTime': snapshotTime,
      'status': status,
      'type': type,
    };
  }

  factory InstanceAddOn.fromMap(Map<String, dynamic> map) {
    return InstanceAddOn(
      snapshotTime: pulumi.Input.fromValue(map['snapshotTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

