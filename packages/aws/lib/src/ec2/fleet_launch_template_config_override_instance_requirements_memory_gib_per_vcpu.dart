// ignore_for_file: unused_element, unnecessary_cast


class FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu {
  /// The maximum amount of memory per vCPU, in GiB. To specify no maximum limit, omit this parameter.
  final double? max;
  /// The minimum amount of memory per vCPU, in GiB. To specify no minimum limit, omit this parameter.
  final double? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu].
  /// [max] The maximum amount of memory per vCPU, in GiB. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of memory per vCPU, in GiB. To specify no minimum limit, omit this parameter.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

