// ignore_for_file: unused_element, unnecessary_cast

class FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount {
  /// The maximum number of network interfaces. To specify no maximum limit, omit this parameter.
  final int? max;

  /// The minimum number of network interfaces. To specify no minimum limit, omit this parameter.
  final int? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount].
  /// [max] The maximum number of network interfaces. To specify no maximum limit, omit this parameter.
  /// [min] The minimum number of network interfaces. To specify no minimum limit, omit this parameter.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
