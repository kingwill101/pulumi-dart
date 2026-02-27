// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../fleet_compute_configuration/fleet_compute_configuration.dart';
import '../fleet_scaling_configuration/fleet_scaling_configuration.dart';
import '../fleet_vpc_config/fleet_vpc_config_codebuild.dart';

/// The set of arguments for Fleet.
class FleetCodebuildArgs {
  /// Number of machines allocated to the ﬂeet.
  final pulumi.Input<int> baseCapacity;

  /// The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  final pulumi.Input<FleetComputeConfiguration>? computeConfiguration;

  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  final pulumi.Input<String> computeType;

  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> environmentType;

  /// The service role associated with the compute fleet.
  final pulumi.Input<String>? fleetServiceRole;

  /// The Amazon Machine Image (AMI) of the compute fleet.
  final pulumi.Input<String>? imageId;

  /// Fleet name.
  final pulumi.Input<String>? name;

  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  final pulumi.Input<String>? overflowBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  final pulumi.Input<FleetScalingConfiguration>? scalingConfiguration;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block. See `vpc_config` below.
  final pulumi.Input<List<FleetVpcConfigCodebuild>>? vpcConfigs;

  FleetCodebuildArgs({
    required this.baseCapacity,
    this.computeConfiguration,
    required this.computeType,
    required this.environmentType,
    this.fleetServiceRole,
    this.imageId,
    this.name,
    this.overflowBehavior,
    this.region,
    this.scalingConfiguration,
    this.tags,
    this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseCapacity'] = baseCapacity;
    final computeConfigurationValue = computeConfiguration;
    if (computeConfigurationValue != null) {
      map['computeConfiguration'] = pulumi.Input.mapOptionalInputValue<
              FleetComputeConfiguration, Map<String, dynamic>>(
          computeConfigurationValue, (value) => value.toMap());
    }
    map['computeType'] = computeType;
    map['environmentType'] = environmentType;
    final fleetServiceRoleValue = fleetServiceRole;
    if (fleetServiceRoleValue != null) {
      map['fleetServiceRole'] = fleetServiceRoleValue;
    }
    final imageIdValue = imageId;
    if (imageIdValue != null) {
      map['imageId'] = imageIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final overflowBehaviorValue = overflowBehavior;
    if (overflowBehaviorValue != null) {
      map['overflowBehavior'] = overflowBehaviorValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingConfigurationValue = scalingConfiguration;
    if (scalingConfigurationValue != null) {
      map['scalingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              FleetScalingConfiguration, Map<String, dynamic>>(
          scalingConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigsValue = vpcConfigs;
    if (vpcConfigsValue != null) {
      map['vpcConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<FleetVpcConfigCodebuild>, List<Map<String, dynamic>>>(
          vpcConfigsValue,
          (value) => pulumi.Input.encodeList<FleetVpcConfigCodebuild,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory FleetCodebuildArgs.fromMap(Map<String, dynamic> map) {
    return FleetCodebuildArgs(
      baseCapacity: pulumi.Input.asInput<int>(map['baseCapacity']),
      computeConfiguration:
          pulumi.Input.asOptionalInput<FleetComputeConfiguration>(
              map['computeConfiguration']),
      computeType: pulumi.Input.asInput<String>(map['computeType']),
      environmentType: pulumi.Input.asInput<String>(map['environmentType']),
      fleetServiceRole:
          pulumi.Input.asOptionalInput<String>(map['fleetServiceRole']),
      imageId: pulumi.Input.asOptionalInput<String>(map['imageId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      overflowBehavior:
          pulumi.Input.asOptionalInput<String>(map['overflowBehavior']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scalingConfiguration:
          pulumi.Input.asOptionalInput<FleetScalingConfiguration>(
              map['scalingConfiguration']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfigs: pulumi.Input.asOptionalInput<List<FleetVpcConfigCodebuild>>(
          map['vpcConfigs']),
    );
  }
}
