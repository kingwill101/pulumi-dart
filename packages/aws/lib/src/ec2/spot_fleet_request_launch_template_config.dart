// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_template_config_launch_template_specification.dart';
import 'spot_fleet_request_launch_template_config_override.dart';

class SpotFleetRequestLaunchTemplateConfig {
  /// Launch template specification. See Launch Template Specification below for more details.
  final SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification
      launchTemplateSpecification;

  /// One or more override configurations. See Overrides below for more details.
  final List<SpotFleetRequestLaunchTemplateConfigOverride>? overrides;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfig].
  /// [launchTemplateSpecification] Launch template specification. See Launch Template Specification below for more details.
  /// [overrides] One or more override configurations. See Overrides below for more details.
  SpotFleetRequestLaunchTemplateConfig({
    required this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['launchTemplateSpecification'] = launchTemplateSpecification.toMap();
    final overridesValue = overrides;
    if (overridesValue != null) {
      map['overrides'] = pulumi.Input.encodeList<
          SpotFleetRequestLaunchTemplateConfigOverride,
          Map<String, dynamic>>(overridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SpotFleetRequestLaunchTemplateConfig.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfig(
      launchTemplateSpecification:
          SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification
              .fromMap((map['launchTemplateSpecification'] as Map)
                  .cast<String, dynamic>()),
      overrides: map['overrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  SpotFleetRequestLaunchTemplateConfigOverride>(
              map['overrides'],
              (value) => SpotFleetRequestLaunchTemplateConfigOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
