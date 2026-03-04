// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount {
  /// The maximum number of network interfaces. To specify no maximum limit, omit this parameter.
  final pulumi.Input<int>? max;

  /// The minimum number of network interfaces. To specify no minimum limit, omit this parameter.
  final pulumi.Input<int>? min;

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
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
