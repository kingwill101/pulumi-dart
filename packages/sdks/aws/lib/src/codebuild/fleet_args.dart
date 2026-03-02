// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_compute_configuration.dart';
import 'fleet_scaling_configuration.dart';
import 'fleet_vpc_config.dart';

/// {@template pulumi_codebuild_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_codebuild_fleet_fleet_args_doc}
class FleetArgs {
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
  final pulumi.Input<List<FleetVpcConfig>>? vpcConfigs;

  /// Creates a new [FleetArgs].
  /// [baseCapacity] Number of machines allocated to the ﬂeet.
  /// [computeConfiguration] The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  /// [computeType] Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  /// [environmentType] Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  /// [fleetServiceRole] The service role associated with the compute fleet.
  /// [imageId] The Amazon Machine Image (AMI) of the compute fleet.
  /// [name] Fleet name.
  /// [overflowBehavior] Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingConfiguration] Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfigs] Configuration block. See `vpc_config` below.
  FleetArgs({
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
    return <String, dynamic>{
      'baseCapacity': baseCapacity,
      'computeConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetComputeConfiguration, Map<String, dynamic>>(computeConfiguration, (value) => value.toMap()),
      'computeType': computeType,
      'environmentType': environmentType,
      'fleetServiceRole': ?fleetServiceRole,
      'imageId': ?imageId,
      'name': ?name,
      'overflowBehavior': ?overflowBehavior,
      'region': ?region,
      'scalingConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetScalingConfiguration, Map<String, dynamic>>(scalingConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'vpcConfigs': ?pulumi.Input.mapOptionalInputValue<List<FleetVpcConfig>, List<Map<String, dynamic>>>(vpcConfigs, (value) => pulumi.Input.encodeList<FleetVpcConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      baseCapacity: (map['baseCapacity'] as int).input(),
      computeConfiguration: map['computeConfiguration'] == null ? null : ((FleetComputeConfiguration.fromMap((map['computeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      computeType: (map['computeType'] as String).input(),
      environmentType: (map['environmentType'] as String).input(),
      fleetServiceRole: map['fleetServiceRole'] == null ? null : ((map['fleetServiceRole'] as String).input()).input(),
      imageId: map['imageId'] == null ? null : ((map['imageId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      overflowBehavior: map['overflowBehavior'] == null ? null : ((map['overflowBehavior'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scalingConfiguration: map['scalingConfiguration'] == null ? null : ((FleetScalingConfiguration.fromMap((map['scalingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcConfigs: map['vpcConfigs'] == null ? null : ((pulumi.Input.decodeList<FleetVpcConfig>(map['vpcConfigs']!, (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

