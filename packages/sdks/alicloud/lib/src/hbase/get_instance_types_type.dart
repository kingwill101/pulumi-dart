// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesType {
  /// Cpu size of the instance type.
  final pulumi.Input<int> cpuSize;
  /// Mem size of the instance type.
  final pulumi.Input<int> memSize;
  /// Name of the instance type.
  final pulumi.Input<String> value;

  /// Creates a new [GetInstanceTypesType].
  /// [cpuSize] Cpu size of the instance type.
  /// [memSize] Mem size of the instance type.
  /// [value] Name of the instance type.
  const GetInstanceTypesType({
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
      cpuSize: pulumi.Input.fromValue(map['cpuSize'] as int),
      memSize: pulumi.Input.fromValue(map['memSize'] as int),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

