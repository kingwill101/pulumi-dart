// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskTypesType {
  /// The maximum value of the data disk to supported the specific instance type
  final pulumi.Input<int> max;
  /// The mininum value of the data disk to supported the specific instance type
  final pulumi.Input<int> min;
  /// The value of the data disk or system disk
  final pulumi.Input<String> value;

  /// Creates a new [GetDiskTypesType].
  /// [max] The maximum value of the data disk to supported the specific instance type
  /// [min] The mininum value of the data disk to supported the specific instance type
  /// [value] The value of the data disk or system disk
  const GetDiskTypesType({
    required this.max,
    required this.min,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
      'value': value,
    };
  }

  factory GetDiskTypesType.fromMap(Map<String, dynamic> map) {
    return GetDiskTypesType(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

