// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_compute_configuration.dart';
import 'fleet_scaling_configuration.dart';
import 'fleet_status.dart';
import 'fleet_vpc_config.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetState {
  /// ARN of the Fleet.
  final pulumi.Input<String>? arn;
  /// Number of machines allocated to the ﬂeet.
  final pulumi.Input<int>? baseCapacity;
  /// The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  final pulumi.Input<FleetComputeConfiguration>? computeConfiguration;
  /// Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  final pulumi.Input<String>? computeType;
  /// Creation time of the fleet.
  final pulumi.Input<String>? created;
  /// Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? environmentType;
  /// The service role associated with the compute fleet.
  final pulumi.Input<String>? fleetServiceRole;
  /// The Amazon Machine Image (AMI) of the compute fleet.
  final pulumi.Input<String>? imageId;
  /// Last modification time of the fleet.
  final pulumi.Input<String>? lastModified;
  /// Fleet name.
  final pulumi.Input<String>? name;
  /// Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  final pulumi.Input<String>? overflowBehavior;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  final pulumi.Input<FleetScalingConfiguration>? scalingConfiguration;
  /// Nested attribute containing information about the current status of the fleet.
  final pulumi.Input<List<FleetStatus>>? statuses;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block. See `vpc_config` below.
  final pulumi.Input<List<FleetVpcConfig>>? vpcConfigs;

  /// Creates a new [FleetState].
  /// [arn] ARN of the Fleet.
  /// [baseCapacity] Number of machines allocated to the ﬂeet.
  /// [computeConfiguration] The compute configuration of the compute fleet. This is only required if `compute_type` is set to `ATTRIBUTE_BASED_COMPUTE` or `CUSTOM_INSTANCE_TYPE`. See `compute_configuration` below.
  /// [computeType] Compute resources the compute fleet uses. See [compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  /// [created] Creation time of the fleet.
  /// [environmentType] Environment type of the compute fleet. See [environment types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types) for more information and valid values.
  /// [fleetServiceRole] The service role associated with the compute fleet.
  /// [imageId] The Amazon Machine Image (AMI) of the compute fleet.
  /// [lastModified] Last modification time of the fleet.
  /// [name] Fleet name.
  /// [overflowBehavior] Overflow behavior for compute fleet. Valid values: `ON_DEMAND`, `QUEUE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scalingConfiguration] Configuration block. This option is only valid when your overflow behavior is `QUEUE`. See `scaling_configuration` below.
  /// [statuses] Nested attribute containing information about the current status of the fleet.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vpcConfigs] Configuration block. See `vpc_config` below.
  FleetState({
    this.arn,
    this.baseCapacity,
    this.computeConfiguration,
    this.computeType,
    this.created,
    this.environmentType,
    this.fleetServiceRole,
    this.imageId,
    this.lastModified,
    this.name,
    this.overflowBehavior,
    this.region,
    this.scalingConfiguration,
    this.statuses,
    this.tags,
    this.tagsAll,
    this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'baseCapacity': ?baseCapacity,
      'computeConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetComputeConfiguration, Map<String, dynamic>>(computeConfiguration, (value) => value.toMap()),
      'computeType': ?computeType,
      'created': ?created,
      'environmentType': ?environmentType,
      'fleetServiceRole': ?fleetServiceRole,
      'imageId': ?imageId,
      'lastModified': ?lastModified,
      'name': ?name,
      'overflowBehavior': ?overflowBehavior,
      'region': ?region,
      'scalingConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetScalingConfiguration, Map<String, dynamic>>(scalingConfiguration, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<FleetStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<FleetStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfigs': ?pulumi.Input.mapOptionalInputValue<List<FleetVpcConfig>, List<Map<String, dynamic>>>(vpcConfigs, (value) => pulumi.Input.encodeList<FleetVpcConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      baseCapacity: map['baseCapacity'] == null ? null : (map['baseCapacity'] as int).input(),
      computeConfiguration: map['computeConfiguration'] == null ? null : (FleetComputeConfiguration.fromMap((map['computeConfiguration'] as Map).cast<String, dynamic>())).input(),
      computeType: map['computeType'] == null ? null : (map['computeType'] as String).input(),
      created: map['created'] == null ? null : (map['created'] as String).input(),
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      fleetServiceRole: map['fleetServiceRole'] == null ? null : (map['fleetServiceRole'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      overflowBehavior: map['overflowBehavior'] == null ? null : (map['overflowBehavior'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scalingConfiguration: map['scalingConfiguration'] == null ? null : (FleetScalingConfiguration.fromMap((map['scalingConfiguration'] as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<FleetStatus>(map['statuses'], (value) => FleetStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcConfigs: map['vpcConfigs'] == null ? null : (pulumi.Input.decodeList<FleetVpcConfig>(map['vpcConfigs'], (value) => FleetVpcConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

