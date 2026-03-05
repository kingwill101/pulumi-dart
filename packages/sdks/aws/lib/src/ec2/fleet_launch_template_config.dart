// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_launch_template_config_launch_template_specification.dart';
import 'fleet_launch_template_config_override.dart';

class FleetLaunchTemplateConfig {
  /// Nested argument containing EC2 Launch Template to use. Defined below.
  final pulumi.Input<FleetLaunchTemplateConfigLaunchTemplateSpecification>? launchTemplateSpecification;
  /// Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.
  final pulumi.Input<List<FleetLaunchTemplateConfigOverride>>? overrides;

  /// Creates a new [FleetLaunchTemplateConfig].
  /// [launchTemplateSpecification] Nested argument containing EC2 Launch Template to use. Defined below.
  /// [overrides] Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.
  FleetLaunchTemplateConfig({
    this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': ?pulumi.Input.mapOptionalInputValue<FleetLaunchTemplateConfigLaunchTemplateSpecification, Map<String, dynamic>>(launchTemplateSpecification, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<FleetLaunchTemplateConfigOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<FleetLaunchTemplateConfigOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetLaunchTemplateConfig.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfig(
      launchTemplateSpecification: (() { final guardedValue = map['launchTemplateSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetLaunchTemplateConfigLaunchTemplateSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetLaunchTemplateConfigOverride>(guardedValue, (value) => FleetLaunchTemplateConfigOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

