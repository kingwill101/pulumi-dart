// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib {
  /// Maximum.
  final pulumi.Input<int> max;
  /// Minimum.
  final pulumi.Input<int> min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  const GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib.fromMap(Map<String, dynamic> map) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementMemoryMib(
      max: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['max'])),
      min: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['min'])),
    );
  }
}
