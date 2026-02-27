// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fleet_compute_configuration/fleet_compute_configuration.dart';
import '../fleet_scaling_configuration/fleet_scaling_configuration.dart';
import '../fleet_vpc_config/fleet_vpc_config2.dart';

/// The set of arguments for Fleet.
class FleetArgs2 {
  /// Number of machines allocated to the ﬂeet.
  final Input<int> baseCapacity;

  /// The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  final Input<FleetComputeConfiguration>? computeConfiguration;

  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  final Input<String> computeType;

  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  final Input<String> environmentType;

  /// The service role associated with the compute fleet.
  final Input<String>? fleetServiceRole;

  /// The Amazon Machine Image (AMI) of the compute fleet.
  final Input<String>? imageId;

  /// Fleet name.
  final Input<String>? name;

  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  final Input<String>? overflowBehavior;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  final Input<FleetScalingConfiguration>? scalingConfiguration;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block. See `vpc_config` below.
  final Input<List<FleetVpcConfig2>>? vpcConfigs;

  FleetArgs2({
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
      map['computeConfiguration'] = Input.mapOptionalInputValue<
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
      map['scalingConfiguration'] = Input.mapOptionalInputValue<
              FleetScalingConfiguration, Map<String, dynamic>>(
          scalingConfigurationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigsValue = vpcConfigs;
    if (vpcConfigsValue != null) {
      map['vpcConfigs'] = Input.mapOptionalInputValue<List<FleetVpcConfig2>,
              List<Map<String, dynamic>>>(
          vpcConfigsValue,
          (value) => Input.encodeList<FleetVpcConfig2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory FleetArgs2.fromMap(Map<String, dynamic> map) {
    return FleetArgs2(
      baseCapacity: Input.asInput<int>(map['baseCapacity']),
      computeConfiguration: Input.asOptionalInput<FleetComputeConfiguration>(
          map['computeConfiguration']),
      computeType: Input.asInput<String>(map['computeType']),
      environmentType: Input.asInput<String>(map['environmentType']),
      fleetServiceRole: Input.asOptionalInput<String>(map['fleetServiceRole']),
      imageId: Input.asOptionalInput<String>(map['imageId']),
      name: Input.asOptionalInput<String>(map['name']),
      overflowBehavior: Input.asOptionalInput<String>(map['overflowBehavior']),
      region: Input.asOptionalInput<String>(map['region']),
      scalingConfiguration: Input.asOptionalInput<FleetScalingConfiguration>(
          map['scalingConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfigs:
          Input.asOptionalInput<List<FleetVpcConfig2>>(map['vpcConfigs']),
    );
  }
}
