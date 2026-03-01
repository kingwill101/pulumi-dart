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
    required pulumi.Output<int> baseCapacity,
    pulumi.Output<FleetComputeConfiguration>? computeConfiguration,
    required pulumi.Output<String> computeType,
    required pulumi.Output<String> environmentType,
    pulumi.Output<String>? fleetServiceRole,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? overflowBehavior,
    pulumi.Output<String>? region,
    pulumi.Output<FleetScalingConfiguration>? scalingConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<FleetVpcConfig>>? vpcConfigs,
  }) :
      baseCapacity = pulumi.Input.asInput<int>(baseCapacity),
      computeConfiguration = pulumi.Input.asOptionalInput<FleetComputeConfiguration>(computeConfiguration),
      computeType = pulumi.Input.asInput<String>(computeType),
      environmentType = pulumi.Input.asInput<String>(environmentType),
      fleetServiceRole = pulumi.Input.asOptionalInput<String>(fleetServiceRole),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      name = pulumi.Input.asOptionalInput<String>(name),
      overflowBehavior = pulumi.Input.asOptionalInput<String>(overflowBehavior),
      region = pulumi.Input.asOptionalInput<String>(region),
      scalingConfiguration = pulumi.Input.asOptionalInput<FleetScalingConfiguration>(scalingConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcConfigs = pulumi.Input.asOptionalInput<List<FleetVpcConfig>>(vpcConfigs);

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
      baseCapacity: pulumi.Output.create<int>(map['baseCapacity'] as int),
      computeConfiguration: map['computeConfiguration'] == null ? null : pulumi.Output.create<FleetComputeConfiguration>(FleetComputeConfiguration.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>())),
      computeType: pulumi.Output.create<String>(map['computeType'] as String),
      environmentType: pulumi.Output.create<String>(map['environmentType'] as String),
      fleetServiceRole: map['fleetServiceRole'] == null ? null : pulumi.Output.create<String>(map['fleetServiceRole'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      overflowBehavior: map['overflowBehavior'] == null ? null : pulumi.Output.create<String>(map['overflowBehavior'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scalingConfiguration: map['scalingConfiguration'] == null ? null : pulumi.Output.create<FleetScalingConfiguration>(FleetScalingConfiguration.fromMap((map['scalingConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcConfigs: map['vpcConfigs'] == null ? null : pulumi.Output.create<List<FleetVpcConfig>>(pulumi.Input.decodeList<FleetVpcConfig>(map['vpcConfigs'], (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

