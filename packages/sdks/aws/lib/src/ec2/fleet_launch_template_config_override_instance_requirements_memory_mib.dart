// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib {
  /// The maximum amount of memory, in MiB. To specify no maximum limit, omit this parameter.
  final pulumi.Input<int>? max;
  /// The minimum amount of memory, in MiB. To specify no minimum limit, specify `0`.
  final pulumi.Input<int> min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib].
  /// [max] The maximum amount of memory, in MiB. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of memory, in MiB. To specify no minimum limit, specify `0`.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      min: pulumi.Input.fromValue(map['min'] as int),
    );
  }
}

