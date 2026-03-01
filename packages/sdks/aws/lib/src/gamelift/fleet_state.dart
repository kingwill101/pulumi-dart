// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_certificate_configuration.dart';
import 'fleet_ec2_inbound_permission.dart';
import 'fleet_resource_creation_limit_policy.dart';
import 'fleet_runtime_configuration.dart';

/// Input properties used for looking up and filtering Fleet resources.
class FleetState {
  /// Fleet ARN.
  final pulumi.Input<String>? arn;
  /// Build ARN.
  final pulumi.Input<String>? buildArn;
  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  final pulumi.Input<String>? buildId;
  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  final pulumi.Input<FleetCertificateConfiguration>? certificateConfiguration;
  /// Human-readable description of the fleet.
  final pulumi.Input<String>? description;
  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  final pulumi.Input<List<FleetEc2InboundPermission>>? ec2InboundPermissions;
  /// Name of an EC2 instance typeE.g., `t2.micro`
  final pulumi.Input<String>? ec2InstanceType;
  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  final pulumi.Input<String>? fleetType;
  /// ARN of an IAM role that instances in the fleet can assume.
  final pulumi.Input<String>? instanceRoleArn;
  final pulumi.Input<List<String>>? logPaths;
  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  final pulumi.Input<List<String>>? metricGroups;
  /// The name of the fleet.
  final pulumi.Input<String>? name;
  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  final pulumi.Input<String>? newGameSessionProtectionPolicy;
  /// Operating system of the fleet's computing resources.
  final pulumi.Input<String>? operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  final pulumi.Input<FleetResourceCreationLimitPolicy>? resourceCreationLimitPolicy;
  /// Instructions for launching server processes on each instance in the fleet. See below.
  final pulumi.Input<FleetRuntimeConfiguration>? runtimeConfiguration;
  /// Script ARN.
  final pulumi.Input<String>? scriptArn;
  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  final pulumi.Input<String>? scriptId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [FleetState].
  /// [arn] Fleet ARN.
  /// [buildArn] Build ARN.
  /// [buildId] ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  /// [certificateConfiguration] Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  /// [description] Human-readable description of the fleet.
  /// [ec2InboundPermissions] Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  /// [ec2InstanceType] Name of an EC2 instance typeE.g., `t2.micro`
  /// [fleetType] Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  /// [instanceRoleArn] ARN of an IAM role that instances in the fleet can assume.
  /// [logPaths] Optional.
  /// [metricGroups] List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  /// [name] The name of the fleet.
  /// [newGameSessionProtectionPolicy] Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  /// [operatingSystem] Operating system of the fleet's computing resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceCreationLimitPolicy] Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  /// [runtimeConfiguration] Instructions for launching server processes on each instance in the fleet. See below.
  /// [scriptArn] Script ARN.
  /// [scriptId] ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  FleetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? buildArn,
    pulumi.Output<String>? buildId,
    pulumi.Output<FleetCertificateConfiguration>? certificateConfiguration,
    pulumi.Output<String>? description,
    pulumi.Output<List<FleetEc2InboundPermission>>? ec2InboundPermissions,
    pulumi.Output<String>? ec2InstanceType,
    pulumi.Output<String>? fleetType,
    pulumi.Output<String>? instanceRoleArn,
    pulumi.Output<List<String>>? logPaths,
    pulumi.Output<List<String>>? metricGroups,
    pulumi.Output<String>? name,
    pulumi.Output<String>? newGameSessionProtectionPolicy,
    pulumi.Output<String>? operatingSystem,
    pulumi.Output<String>? region,
    pulumi.Output<FleetResourceCreationLimitPolicy>? resourceCreationLimitPolicy,
    pulumi.Output<FleetRuntimeConfiguration>? runtimeConfiguration,
    pulumi.Output<String>? scriptArn,
    pulumi.Output<String>? scriptId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      buildArn = pulumi.Input.asOptionalInput<String>(buildArn),
      buildId = pulumi.Input.asOptionalInput<String>(buildId),
      certificateConfiguration = pulumi.Input.asOptionalInput<FleetCertificateConfiguration>(certificateConfiguration),
      description = pulumi.Input.asOptionalInput<String>(description),
      ec2InboundPermissions = pulumi.Input.asOptionalInput<List<FleetEc2InboundPermission>>(ec2InboundPermissions),
      ec2InstanceType = pulumi.Input.asOptionalInput<String>(ec2InstanceType),
      fleetType = pulumi.Input.asOptionalInput<String>(fleetType),
      instanceRoleArn = pulumi.Input.asOptionalInput<String>(instanceRoleArn),
      logPaths = pulumi.Input.asOptionalInput<List<String>>(logPaths),
      metricGroups = pulumi.Input.asOptionalInput<List<String>>(metricGroups),
      name = pulumi.Input.asOptionalInput<String>(name),
      newGameSessionProtectionPolicy = pulumi.Input.asOptionalInput<String>(newGameSessionProtectionPolicy),
      operatingSystem = pulumi.Input.asOptionalInput<String>(operatingSystem),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceCreationLimitPolicy = pulumi.Input.asOptionalInput<FleetResourceCreationLimitPolicy>(resourceCreationLimitPolicy),
      runtimeConfiguration = pulumi.Input.asOptionalInput<FleetRuntimeConfiguration>(runtimeConfiguration),
      scriptArn = pulumi.Input.asOptionalInput<String>(scriptArn),
      scriptId = pulumi.Input.asOptionalInput<String>(scriptId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'buildArn': ?buildArn,
      'buildId': ?buildId,
      'certificateConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetCertificateConfiguration, Map<String, dynamic>>(certificateConfiguration, (value) => value.toMap()),
      'description': ?description,
      'ec2InboundPermissions': ?pulumi.Input.mapOptionalInputValue<List<FleetEc2InboundPermission>, List<Map<String, dynamic>>>(ec2InboundPermissions, (value) => pulumi.Input.encodeList<FleetEc2InboundPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2InstanceType': ?ec2InstanceType,
      'fleetType': ?fleetType,
      'instanceRoleArn': ?instanceRoleArn,
      'logPaths': ?logPaths,
      'metricGroups': ?metricGroups,
      'name': ?name,
      'newGameSessionProtectionPolicy': ?newGameSessionProtectionPolicy,
      'operatingSystem': ?operatingSystem,
      'region': ?region,
      'resourceCreationLimitPolicy': ?pulumi.Input.mapOptionalInputValue<FleetResourceCreationLimitPolicy, Map<String, dynamic>>(resourceCreationLimitPolicy, (value) => value.toMap()),
      'runtimeConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetRuntimeConfiguration, Map<String, dynamic>>(runtimeConfiguration, (value) => value.toMap()),
      'scriptArn': ?scriptArn,
      'scriptId': ?scriptId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      buildArn: map['buildArn'] == null ? null : pulumi.Output.create<String>(map['buildArn'] as String),
      buildId: map['buildId'] == null ? null : pulumi.Output.create<String>(map['buildId'] as String),
      certificateConfiguration: map['certificateConfiguration'] == null ? null : pulumi.Output.create<FleetCertificateConfiguration>(FleetCertificateConfiguration.fromMap((map['certificateConfiguration'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ec2InboundPermissions: map['ec2InboundPermissions'] == null ? null : pulumi.Output.create<List<FleetEc2InboundPermission>>(pulumi.Input.decodeList<FleetEc2InboundPermission>(map['ec2InboundPermissions'], (value) => FleetEc2InboundPermission.fromMap((value as Map).cast<String, dynamic>()))),
      ec2InstanceType: map['ec2InstanceType'] == null ? null : pulumi.Output.create<String>(map['ec2InstanceType'] as String),
      fleetType: map['fleetType'] == null ? null : pulumi.Output.create<String>(map['fleetType'] as String),
      instanceRoleArn: map['instanceRoleArn'] == null ? null : pulumi.Output.create<String>(map['instanceRoleArn'] as String),
      logPaths: map['logPaths'] == null ? null : pulumi.Output.create<List<String>>((map['logPaths'] as List).cast<String>()),
      metricGroups: map['metricGroups'] == null ? null : pulumi.Output.create<List<String>>((map['metricGroups'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      newGameSessionProtectionPolicy: map['newGameSessionProtectionPolicy'] == null ? null : pulumi.Output.create<String>(map['newGameSessionProtectionPolicy'] as String),
      operatingSystem: map['operatingSystem'] == null ? null : pulumi.Output.create<String>(map['operatingSystem'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceCreationLimitPolicy: map['resourceCreationLimitPolicy'] == null ? null : pulumi.Output.create<FleetResourceCreationLimitPolicy>(FleetResourceCreationLimitPolicy.fromMap((map['resourceCreationLimitPolicy'] as Map).cast<String, dynamic>())),
      runtimeConfiguration: map['runtimeConfiguration'] == null ? null : pulumi.Output.create<FleetRuntimeConfiguration>(FleetRuntimeConfiguration.fromMap((map['runtimeConfiguration'] as Map).cast<String, dynamic>())),
      scriptArn: map['scriptArn'] == null ? null : pulumi.Output.create<String>(map['scriptArn'] as String),
      scriptId: map['scriptId'] == null ? null : pulumi.Output.create<String>(map['scriptId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

