// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementVcpuCount {
  final pulumi.Input<int> max;
  final pulumi.Input<int> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementVcpuCount].
  /// [max] Required.
  /// [min] Required.
  const GetLaunchTemplateInstanceRequirementVcpuCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementVcpuCount.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementVcpuCount(
      max: pulumi.Input.fromValue(map['max'] as int),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}
