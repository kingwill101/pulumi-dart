// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesMasterInstanceType {
  /// Cpu size of the instance type.
  final pulumi.Input<int> cpuSize;
  /// The hbase instance type of create hbase cluster instance.
  final pulumi.Input<String> instanceType;
  /// Mem size of the instance type.
  final pulumi.Input<int> memSize;

  /// Creates a new [GetInstanceTypesMasterInstanceType].
  /// [cpuSize] Cpu size of the instance type.
  /// [instanceType] The hbase instance type of create hbase cluster instance.
  /// [memSize] Mem size of the instance type.
  GetInstanceTypesMasterInstanceType({
    required this.cpuSize,
    required this.instanceType,
    required this.memSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSize': cpuSize,
      'instanceType': instanceType,
      'memSize': memSize,
    };
  }

  factory GetInstanceTypesMasterInstanceType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesMasterInstanceType(
      cpuSize: (map['cpuSize'] as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      memSize: (map['memSize'] as int).input(),
    );
  }
}

