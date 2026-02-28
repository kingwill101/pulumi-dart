// ignore_for_file: unused_element, unnecessary_cast

class FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount {
  /// The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  final int? max;

  /// The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  final int min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount].
  /// [max] The maximum number of vCPUs. To specify no maximum limit, omit this parameter.
  /// [min] The minimum number of vCPUs. To specify no minimum limit, specify `0`.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    map['min'] = min;
    return map;
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
