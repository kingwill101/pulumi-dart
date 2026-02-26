// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fleet_launch_template_config_launch_template_specification/fleet_launch_template_config_launch_template_specification.dart';
import '../fleet_launch_template_config_override/fleet_launch_template_config_override.dart';

class FleetLaunchTemplateConfig {
  /// Nested argument containing EC2 Launch Template to use. Defined below.
  final FleetLaunchTemplateConfigLaunchTemplateSpecification?
      launchTemplateSpecification;

  /// Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.
  final List<FleetLaunchTemplateConfigOverride>? overrides;

  FleetLaunchTemplateConfig({
    this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final launchTemplateSpecificationValue = launchTemplateSpecification;
    if (launchTemplateSpecificationValue != null) {
      map['launchTemplateSpecification'] =
          launchTemplateSpecificationValue.toMap();
    }
    final overridesValue = overrides;
    if (overridesValue != null) {
      map['overrides'] = Input.encodeList<FleetLaunchTemplateConfigOverride,
          Map<String, dynamic>>(overridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FleetLaunchTemplateConfig.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfig(
      launchTemplateSpecification: map['launchTemplateSpecification'] == null
          ? null
          : FleetLaunchTemplateConfigLaunchTemplateSpecification.fromMap(
              (map['launchTemplateSpecification'] as Map)
                  .cast<String, dynamic>()),
      overrides: map['overrides'] == null
          ? null
          : Input.decodeList<FleetLaunchTemplateConfigOverride>(
              map['overrides'],
              (value) => FleetLaunchTemplateConfigOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
