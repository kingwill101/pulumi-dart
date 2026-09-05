// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib {
  final pulumi.Input<int> max;
  final pulumi.Input<int> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib].
  /// [max] Required.
  /// [min] Required.
  const GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib(
      max: pulumi.Input.fromValue((map['max'] as num).toInt()),
      min: pulumi.Input.fromValue((map['min'] as num).toInt()),
    );
  }
}
