// ignore_for_file: unused_element, unnecessary_cast


class GetFlexibleServerStorage {
  /// Is Storage Auto Grow enabled?
  final bool autoGrowEnabled;
  /// Should IOPS be scaled automatically?
  final bool ioScalingEnabled;
  /// The storage IOPS of the MySQL Flexible Server.
  final int iops;
  /// The max storage allowed for the MySQL Flexible Server.
  final int sizeGb;

  /// Creates a new [GetFlexibleServerStorage].
  /// [autoGrowEnabled] Is Storage Auto Grow enabled?
  /// [ioScalingEnabled] Should IOPS be scaled automatically?
  /// [iops] The storage IOPS of the MySQL Flexible Server.
  /// [sizeGb] The max storage allowed for the MySQL Flexible Server.
  GetFlexibleServerStorage({
    required this.autoGrowEnabled,
    required this.ioScalingEnabled,
    required this.iops,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoGrowEnabled': autoGrowEnabled,
      'ioScalingEnabled': ioScalingEnabled,
      'iops': iops,
      'sizeGb': sizeGb,
    };
  }

  factory GetFlexibleServerStorage.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerStorage(
      autoGrowEnabled: map['autoGrowEnabled'] as bool,
      ioScalingEnabled: map['ioScalingEnabled'] as bool,
      iops: map['iops'] as int,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

