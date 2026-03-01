// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesType {
  /// Cpu size of the instance type.
  final int cpuSize;
  /// Mem size of the instance type.
  final int memSize;
  /// Name of the instance type.
  final String value;

  /// Creates a new [GetInstanceTypesType].
  /// [cpuSize] Cpu size of the instance type.
  /// [memSize] Mem size of the instance type.
  /// [value] Name of the instance type.
  GetInstanceTypesType({
    required this.cpuSize,
    required this.memSize,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuSize': cpuSize,
      'memSize': memSize,
      'value': value,
    };
  }

  factory GetInstanceTypesType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesType(
      cpuSize: map['cpuSize'] as int,
      memSize: map['memSize'] as int,
      value: map['value'] as String,
    );
  }
}

