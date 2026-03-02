// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus {
  final pulumi.Input<double> max;
  final pulumi.Input<double> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus({
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
      max: (map['max'] as double).input(),
      min: (map['min'] as double).input(),
    );
  }
}

