// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesInstanceType {
  /// The cpu core count of the current instance type.
  final pulumi.Input<int> cpuCoreCount;

  /// The default resolution of the current instance type.
  final pulumi.Input<String> defaultResolution;

  /// The list of available instance type.
  final pulumi.Input<String> instanceType;
  final pulumi.Input<String> instanceTypeFamily;

  /// The name of the current instance type.
  final pulumi.Input<String> name;

  /// The English name of the current instance type.
  final pulumi.Input<String> nameEn;

  /// Creates a new [GetInstanceTypesInstanceType].
  /// [cpuCoreCount] The cpu core count of the current instance type.
  /// [defaultResolution] The default resolution of the current instance type.
  /// [instanceType] The list of available instance type.
  /// [instanceTypeFamily] Required.
  /// [name] The name of the current instance type.
  /// [nameEn] The English name of the current instance type.
  GetInstanceTypesInstanceType({
    required this.cpuCoreCount,
    required this.defaultResolution,
    required this.instanceType,
    required this.instanceTypeFamily,
    required this.name,
    required this.nameEn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCoreCount': cpuCoreCount,
      'defaultResolution': defaultResolution,
      'instanceType': instanceType,
      'instanceTypeFamily': instanceTypeFamily,
      'name': name,
      'nameEn': nameEn,
    };
  }

  factory GetInstanceTypesInstanceType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceType(
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      defaultResolution: pulumi.Input.fromValue(
        map['defaultResolution'] as String,
      ),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      instanceTypeFamily: pulumi.Input.fromValue(
        map['instanceTypeFamily'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameEn: pulumi.Input.fromValue(map['nameEn'] as String),
    );
  }
}
