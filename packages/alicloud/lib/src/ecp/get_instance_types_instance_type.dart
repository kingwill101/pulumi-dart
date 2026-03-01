// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesInstanceType {
  /// The cpu core count of the current instance type.
  final int cpuCoreCount;
  /// The default resolution of the current instance type.
  final String defaultResolution;
  /// The list of available instance type.
  final String instanceType;
  final String instanceTypeFamily;
  /// The name of the current instance type.
  final String name;
  /// The English name of the current instance type.
  final String nameEn;

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
      cpuCoreCount: map['cpuCoreCount'] as int,
      defaultResolution: map['defaultResolution'] as String,
      instanceType: map['instanceType'] as String,
      instanceTypeFamily: map['instanceTypeFamily'] as String,
      name: map['name'] as String,
      nameEn: map['nameEn'] as String,
    );
  }
}

