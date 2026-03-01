// ignore_for_file: unused_element, unnecessary_cast


class DedicatedPropreHostEcsClassList {
  /// Data disk PL level.
  final String? dataDiskPerformanceLevel;
  /// The capacity of the data disk.
  final int? diskCapacity;
  /// Number of mounted data disks.
  final int? diskCount;
  /// Data disk type, value range:
  /// - **cloud_essd**: the ESSD cloud disk.
  /// - **cloud_ssd**: SSD cloud disk.
  /// - **cloud_efficiency**: The ultra cloud disk.
  /// - **cloud_auto**: ESSD AutoPL cloud disk.
  final String? diskType;
  /// ECS specifications.
  final String instanceType;
  /// System disk capacity.
  final int sysDiskCapacity;
  /// System disk type, value:
  /// - **cloud_essd**: the ESSD cloud disk.
  /// - **cloud_ssd**: SSD cloud disk.
  /// - **cloud_efficiency**: The ultra cloud disk.
  /// - **cloud_auto**: ESSD AutoPL cloud disk.
  final String sysDiskType;
  /// System disk PL level.
  final String? systemDiskPerformanceLevel;

  /// Creates a new [DedicatedPropreHostEcsClassList].
  /// [dataDiskPerformanceLevel] Data disk PL level.
  /// [diskCapacity] The capacity of the data disk.
  /// [diskCount] Number of mounted data disks.
  /// [diskType] Data disk type, value range:
  /// [instanceType] ECS specifications.
  /// [sysDiskCapacity] System disk capacity.
  /// [sysDiskType] System disk type, value:
  /// [systemDiskPerformanceLevel] System disk PL level.
  DedicatedPropreHostEcsClassList({
    this.dataDiskPerformanceLevel,
    this.diskCapacity,
    this.diskCount,
    this.diskType,
    required this.instanceType,
    required this.sysDiskCapacity,
    required this.sysDiskType,
    this.systemDiskPerformanceLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskPerformanceLevel': ?dataDiskPerformanceLevel,
      'diskCapacity': ?diskCapacity,
      'diskCount': ?diskCount,
      'diskType': ?diskType,
      'instanceType': instanceType,
      'sysDiskCapacity': sysDiskCapacity,
      'sysDiskType': sysDiskType,
      'systemDiskPerformanceLevel': ?systemDiskPerformanceLevel,
    };
  }

  factory DedicatedPropreHostEcsClassList.fromMap(Map<String, dynamic> map) {
    return DedicatedPropreHostEcsClassList(
      dataDiskPerformanceLevel: map['dataDiskPerformanceLevel'] == null ? null : map['dataDiskPerformanceLevel'] as String,
      diskCapacity: map['diskCapacity'] == null ? null : map['diskCapacity'] as int,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      instanceType: map['instanceType'] as String,
      sysDiskCapacity: map['sysDiskCapacity'] as int,
      sysDiskType: map['sysDiskType'] as String,
      systemDiskPerformanceLevel: map['systemDiskPerformanceLevel'] == null ? null : map['systemDiskPerformanceLevel'] as String,
    );
  }
}

