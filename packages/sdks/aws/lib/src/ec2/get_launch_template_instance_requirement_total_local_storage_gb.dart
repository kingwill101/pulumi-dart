// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementTotalLocalStorageGb {
  final pulumi.Input<double> max;
  final pulumi.Input<double> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementTotalLocalStorageGb].
  /// [max] Required.
  /// [min] Required.
  const GetLaunchTemplateInstanceRequirementTotalLocalStorageGb({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementTotalLocalStorageGb(
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
    );
  }
}

