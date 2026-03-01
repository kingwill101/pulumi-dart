// ignore_for_file: unused_element, unnecessary_cast


class FleetLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib {
  /// The maximum amount of memory, in MiB. To specify no maximum limit, omit this parameter.
  final int? max;
  /// The minimum amount of memory, in MiB. To specify no minimum limit, specify `0`.
  final int min;

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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}

