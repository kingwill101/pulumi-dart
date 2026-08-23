// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_fleet_request_launch_template_config_launch_template_specification.dart';
import 'spot_fleet_request_launch_template_config_override.dart';

class SpotFleetRequestLaunchTemplateConfig {
  /// Launch template specification. See Launch Template Specification below for more details.
  final pulumi.Input<SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification> launchTemplateSpecification;
  /// One or more override configurations. See Overrides below for more details.
  final pulumi.Input<List<SpotFleetRequestLaunchTemplateConfigOverride>>? overrides;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfig].
  /// [launchTemplateSpecification] Launch template specification. See Launch Template Specification below for more details.
  /// [overrides] One or more override configurations. See Overrides below for more details.
  const SpotFleetRequestLaunchTemplateConfig({
    required this.launchTemplateSpecification,
    this.overrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launchTemplateSpecification': pulumi.Input.mapInputValue<SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification, Map<String, dynamic>>(launchTemplateSpecification, (value) => value.toMap()),
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<SpotFleetRequestLaunchTemplateConfigOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<SpotFleetRequestLaunchTemplateConfigOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SpotFleetRequestLaunchTemplateConfig.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfig(
      launchTemplateSpecification: pulumi.Input.fromValue(SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification.fromMap((map['launchTemplateSpecification']! as Map).cast<String, dynamic>())),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfigOverride>(guardedValue, (value) => SpotFleetRequestLaunchTemplateConfigOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
