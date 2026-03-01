// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesCoreInstanceType {
  /// Name of the category, single or cluster.
  final String category;
  /// Cpu size of the instance type.
  final int cpuSize;
  /// The engine name, `singlehbase`, `hbase`, `hbaseue`, `bds`.
  final String engine;
  /// The hbase instance type of create hbase cluster instance.
  final String instanceType;
  /// Max count of the core instance nodes.
  final int maxCoreCount;
  /// Mem size of the instance type.
  final int memSize;
  /// Name of the storage type.
  final String storageType;
  /// The engine version, singlehbase/hbase=1.1/2.0, bds=1.0.
  final String version;
  /// Name of zone id.
  final String zone;

  /// Creates a new [GetInstanceTypesCoreInstanceType].
  /// [category] Name of the category, single or cluster.
  /// [cpuSize] Cpu size of the instance type.
  /// [engine] The engine name, `singlehbase`, `hbase`, `hbaseue`, `bds`.
  /// [instanceType] The hbase instance type of create hbase cluster instance.
  /// [maxCoreCount] Max count of the core instance nodes.
  /// [memSize] Mem size of the instance type.
  /// [storageType] Name of the storage type.
  /// [version] The engine version, singlehbase/hbase=1.1/2.0, bds=1.0.
  /// [zone] Name of zone id.
  GetInstanceTypesCoreInstanceType({
    required this.category,
    required this.cpuSize,
    required this.engine,
    required this.instanceType,
    required this.maxCoreCount,
    required this.memSize,
    required this.storageType,
    required this.version,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'cpuSize': cpuSize,
      'engine': engine,
      'instanceType': instanceType,
      'maxCoreCount': maxCoreCount,
      'memSize': memSize,
      'storageType': storageType,
      'version': version,
      'zone': zone,
    };
  }

  factory GetInstanceTypesCoreInstanceType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesCoreInstanceType(
      category: map['category'] as String,
      cpuSize: map['cpuSize'] as int,
      engine: map['engine'] as String,
      instanceType: map['instanceType'] as String,
      maxCoreCount: map['maxCoreCount'] as int,
      memSize: map['memSize'] as int,
      storageType: map['storageType'] as String,
      version: map['version'] as String,
      zone: map['zone'] as String,
    );
  }
}

