// ignore_for_file: unused_element, unnecessary_cast

/// Driver scheduling configuration.
class DriverSchedulingConfig {
  /// The amount of memory in MB the driver is requesting.
  final int memoryMb;

  /// The number of vCPUs the driver is requesting.
  final int vcores;

  /// Creates a new [DriverSchedulingConfig].
  /// [memoryMb] The amount of memory in MB the driver is requesting.
  /// [vcores] The number of vCPUs the driver is requesting.
  DriverSchedulingConfig({
    required this.memoryMb,
    required this.vcores,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['memoryMb'] = memoryMb;
    map['vcores'] = vcores;
    return map;
  }

  factory DriverSchedulingConfig.fromMap(Map<String, dynamic> map) {
    return DriverSchedulingConfig(
      memoryMb: map['memoryMb'] as int,
      vcores: map['vcores'] as int,
    );
  }
}
