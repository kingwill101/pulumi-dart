// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib {
  /// The maximum amount of accelerator memory, in MiB. To specify no maximum limit, omit this parameter.
  final pulumi.Input<int>? max;
  /// The minimum amount of accelerator memory, in MiB. To specify no minimum limit, omit this parameter.
  final pulumi.Input<int>? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib].
  /// [max] The maximum amount of accelerator memory, in MiB. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of accelerator memory, in MiB. To specify no minimum limit, omit this parameter.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib(
      max: map['max'] == null ? null : ((map['max'] as int).input()).input(),
      min: map['min'] == null ? null : ((map['min'] as int).input()).input(),
    );
  }
}

