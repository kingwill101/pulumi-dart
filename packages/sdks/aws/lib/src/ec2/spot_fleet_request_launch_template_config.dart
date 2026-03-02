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
  SpotFleetRequestLaunchTemplateConfig({
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
      launchTemplateSpecification: (SpotFleetRequestLaunchTemplateConfigLaunchTemplateSpecification.fromMap((map['launchTemplateSpecification'] as Map).cast<String, dynamic>())).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<SpotFleetRequestLaunchTemplateConfigOverride>(map['overrides'], (value) => SpotFleetRequestLaunchTemplateConfigOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

