// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesMasterInstanceType {
  /// Cpu size of the instance type.
  final int cpuSize;
  /// The hbase instance type of create hbase cluster instance.
  final String instanceType;
  /// Mem size of the instance type.
  final int memSize;

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
      cpuSize: map['cpuSize'] as int,
      instanceType: map['instanceType'] as String,
      memSize: map['memSize'] as int,
    );
  }
}

