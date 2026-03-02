// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesCoreInstanceType {
  /// Name of the category, single or cluster.
  final pulumi.Input<String> category;
  /// Cpu size of the instance type.
  final pulumi.Input<int> cpuSize;
  /// The engine name, `singlehbase`, `hbase`, `hbaseue`, `bds`.
  final pulumi.Input<String> engine;
  /// The hbase instance type of create hbase cluster instance.
  final pulumi.Input<String> instanceType;
  /// Max count of the core instance nodes.
  final pulumi.Input<int> maxCoreCount;
  /// Mem size of the instance type.
  final pulumi.Input<int> memSize;
  /// Name of the storage type.
  final pulumi.Input<String> storageType;
  /// The engine version, singlehbase/hbase=1.1/2.0, bds=1.0.
  final pulumi.Input<String> version;
  /// Name of zone id.
  final pulumi.Input<String> zone;

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
      category: (map['category'] as String).input(),
      cpuSize: (map['cpuSize'] as int).input(),
      engine: (map['engine'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      maxCoreCount: (map['maxCoreCount'] as int).input(),
      memSize: (map['memSize'] as int).input(),
      storageType: (map['storageType'] as String).input(),
      version: (map['version'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

