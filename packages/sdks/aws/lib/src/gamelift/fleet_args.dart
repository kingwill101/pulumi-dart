// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_certificate_configuration.dart';
import 'fleet_ec2_inbound_permission.dart';
import 'fleet_resource_creation_limit_policy.dart';
import 'fleet_runtime_configuration.dart';

/// {@template pulumi_gamelift_fleet_fleet_args_doc}
/// The set of arguments for Fleet.
/// {@endtemplate}
/// {@macro pulumi_gamelift_fleet_fleet_args_doc}
class FleetArgs {
  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  final pulumi.Input<String>? buildId;
  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  final pulumi.Input<FleetCertificateConfiguration>? certificateConfiguration;
  /// Human-readable description of the fleet.
  final pulumi.Input<String>? description;
  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  final pulumi.Input<List<FleetEc2InboundPermission>>? ec2InboundPermissions;
  /// Name of an EC2 instance typeE.g., `t2.micro`
  final pulumi.Input<String> ec2InstanceType;
  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  final pulumi.Input<String>? fleetType;
  /// ARN of an IAM role that instances in the fleet can assume.
  final pulumi.Input<String>? instanceRoleArn;
  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  final pulumi.Input<List<String>>? metricGroups;
  /// The name of the fleet.
  final pulumi.Input<String>? name;
  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  final pulumi.Input<String>? newGameSessionProtectionPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  final pulumi.Input<FleetResourceCreationLimitPolicy>? resourceCreationLimitPolicy;
  /// Instructions for launching server processes on each instance in the fleet. See below.
  final pulumi.Input<FleetRuntimeConfiguration>? runtimeConfiguration;
  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  final pulumi.Input<String>? scriptId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FleetArgs].
  /// [buildId] ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  /// [certificateConfiguration] Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  /// [description] Human-readable description of the fleet.
  /// [ec2InboundPermissions] Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  /// [ec2InstanceType] Name of an EC2 instance typeE.g., `t2.micro`
  /// [fleetType] Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  /// [instanceRoleArn] ARN of an IAM role that instances in the fleet can assume.
  /// [metricGroups] List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  /// [name] The name of the fleet.
  /// [newGameSessionProtectionPolicy] Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceCreationLimitPolicy] Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  /// [runtimeConfiguration] Instructions for launching server processes on each instance in the fleet. See below.
  /// [scriptId] ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FleetArgs({
    this.buildId,
    this.certificateConfiguration,
    this.description,
    this.ec2InboundPermissions,
    required this.ec2InstanceType,
    this.fleetType,
    this.instanceRoleArn,
    this.metricGroups,
    this.name,
    this.newGameSessionProtectionPolicy,
    this.region,
    this.resourceCreationLimitPolicy,
    this.runtimeConfiguration,
    this.scriptId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildId': ?buildId,
      'certificateConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetCertificateConfiguration, Map<String, dynamic>>(certificateConfiguration, (value) => value.toMap()),
      'description': ?description,
      'ec2InboundPermissions': ?pulumi.Input.mapOptionalInputValue<List<FleetEc2InboundPermission>, List<Map<String, dynamic>>>(ec2InboundPermissions, (value) => pulumi.Input.encodeList<FleetEc2InboundPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2InstanceType': ec2InstanceType,
      'fleetType': ?fleetType,
      'instanceRoleArn': ?instanceRoleArn,
      'metricGroups': ?metricGroups,
      'name': ?name,
      'newGameSessionProtectionPolicy': ?newGameSessionProtectionPolicy,
      'region': ?region,
      'resourceCreationLimitPolicy': ?pulumi.Input.mapOptionalInputValue<FleetResourceCreationLimitPolicy, Map<String, dynamic>>(resourceCreationLimitPolicy, (value) => value.toMap()),
      'runtimeConfiguration': ?pulumi.Input.mapOptionalInputValue<FleetRuntimeConfiguration, Map<String, dynamic>>(runtimeConfiguration, (value) => value.toMap()),
      'scriptId': ?scriptId,
      'tags': ?tags,
    };
  }

  factory FleetArgs.fromMap(Map<String, dynamic> map) {
    return FleetArgs(
      buildId: (() { final guardedValue = map['buildId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateConfiguration: (() { final guardedValue = map['certificateConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetCertificateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2InboundPermissions: (() { final guardedValue = map['ec2InboundPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FleetEc2InboundPermission>(guardedValue, (value) => FleetEc2InboundPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2InstanceType: pulumi.Input.fromValue(map['ec2InstanceType'] as String),
      fleetType: (() { final guardedValue = map['fleetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceRoleArn: (() { final guardedValue = map['instanceRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricGroups: (() { final guardedValue = map['metricGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newGameSessionProtectionPolicy: (() { final guardedValue = map['newGameSessionProtectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceCreationLimitPolicy: (() { final guardedValue = map['resourceCreationLimitPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetResourceCreationLimitPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeConfiguration: (() { final guardedValue = map['runtimeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FleetRuntimeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scriptId: (() { final guardedValue = map['scriptId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

