// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_launch_template_config_launch_template_specification.dart';
import 'fleet_launch_template_config_override.dart';

class FleetLaunchTemplateConfig {
  /// Nested argument containing EC2 Launch Template to use. Defined below.
  final FleetLaunchTemplateConfigLaunchTemplateSpecification?
  launchTemplateSpecification;

  /// Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.
  final List<FleetLaunchTemplateConfigOverride>? overrides;

  /// Creates a new [FleetLaunchTemplateConfig].
  /// [launchTemplateSpecification] Nested argument containing EC2 Launch Template to use. Defined below.
  /// [overrides] Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.
  FleetLaunchTemplateConfig({this.launchTemplateSpecification, this.overrides});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': ?launchTemplateSpecification == null
          ? null
          : launchTemplateSpecification!.toMap(),
      'overrides': ?overrides == null
          ? null
          : pulumi.Input.encodeList<
              FleetLaunchTemplateConfigOverride,
              Map<String, dynamic>
            >(overrides!, (value) => value.toMap()),
    };
  }

  factory FleetLaunchTemplateConfig.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfig(
      launchTemplateSpecification: map['launchTemplateSpecification'] == null
          ? null
          : FleetLaunchTemplateConfigLaunchTemplateSpecification.fromMap(
              (map['launchTemplateSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      overrides: map['overrides'] == null
          ? null
          : pulumi.Input.decodeList<FleetLaunchTemplateConfigOverride>(
              map['overrides'],
              (value) => FleetLaunchTemplateConfigOverride.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
