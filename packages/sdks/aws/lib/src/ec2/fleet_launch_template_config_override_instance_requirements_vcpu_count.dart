// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount {
  /// The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  final pulumi.Input<int>? max;
  /// The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  final pulumi.Input<int> min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount].
  /// [max] The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  /// [min] The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : (map['max'] as int).input(),
      min: (map['min'] as int).input(),
    );
  }
}

