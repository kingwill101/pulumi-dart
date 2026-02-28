// ignore_for_file: unused_element, unnecessary_cast


class FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb {
  /// The maximum amount of total local storage, in GB. To specify no maximum limit, omit this parameter.
  final double? max;
  /// The minimum amount of total local storage, in GB. To specify no minimum limit, omit this parameter.
  final double? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb].
  /// [max] The maximum amount of total local storage, in GB. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of total local storage, in GB. To specify no minimum limit, omit this parameter.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb({
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
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

