// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb {
  /// The maximum amount of total local storage, in GB. To specify no maximum limit, omit this parameter.
  final pulumi.Input<double>? max;
  /// The minimum amount of total local storage, in GB. To specify no minimum limit, omit this parameter.
  final pulumi.Input<double>? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb].
  /// [max] The maximum amount of total local storage, in GB. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of total local storage, in GB. To specify no minimum limit, omit this parameter.
  const FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

