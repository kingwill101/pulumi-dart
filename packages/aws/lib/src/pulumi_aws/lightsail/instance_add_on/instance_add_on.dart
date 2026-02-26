// ignore_for_file: unused_element, unnecessary_cast

class InstanceAddOn {
  /// Daily time when an automatic snapshot will be created. Must be in HH:00 format, and in an hourly increment and specified in Coordinated Universal Time (UTC). The snapshot will be automatically created between the time specified and up to 45 minutes after.
  final String snapshotTime;

  /// Status of the add-on. Valid values: `Enabled`, `Disabled`.
  final String status;

  /// Add-on type. There is currently only one valid type `AutoSnapshot`.
  final String type;

  InstanceAddOn({
    required this.snapshotTime,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['snapshotTime'] = snapshotTime;
    map['status'] = status;
    map['type'] = type;
    return map;
  }

  factory InstanceAddOn.fromMap(Map<String, dynamic> map) {
    return InstanceAddOn(
      snapshotTime: map['snapshotTime'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
