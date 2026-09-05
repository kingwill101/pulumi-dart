// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus {
  final pulumi.Input<double> max;
  final pulumi.Input<double> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus].
  /// [max] Required.
  /// [min] Required.
  const GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus(
      max: pulumi.Input.fromValue((map['max'] as num).toDouble()),
      min: pulumi.Input.fromValue((map['min'] as num).toDouble()),
    );
  }
}
