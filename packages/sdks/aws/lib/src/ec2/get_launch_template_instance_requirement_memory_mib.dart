// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementMemoryMib {
  final pulumi.Input<int> max;
  final pulumi.Input<int> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementMemoryMib].
  /// [max] Required.
  /// [min] Required.
  const GetLaunchTemplateInstanceRequirementMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementMemoryMib.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementMemoryMib(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}
