// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fleet_certificate_configuration/fleet_certificate_configuration.dart';
import '../fleet_ec2_inbound_permission/fleet_ec2_inbound_permission.dart';
import '../fleet_resource_creation_limit_policy/fleet_resource_creation_limit_policy.dart';
import '../fleet_runtime_configuration/fleet_runtime_configuration.dart';

/// The set of arguments for Fleet.
class FleetArgs4 {
  /// ID of the GameLift Build to be deployed on the fleet. Conflicts with `script_id`.
  final Input<String>? buildId;

  /// Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration.
  final Input<FleetCertificateConfiguration>? certificateConfiguration;

  /// Human-readable description of the fleet.
  final Input<String>? description;

  /// Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below.
  final Input<List<FleetEc2InboundPermission>>? ec2InboundPermissions;

  /// Name of an EC2 instance typeE.g., `t2.micro`
  final Input<String> ec2InstanceType;

  /// Type of fleet. This value must be `ON_DEMAND` or `SPOT`. Defaults to `ON_DEMAND`.
  final Input<String>? fleetType;

  /// ARN of an IAM role that instances in the fleet can assume.
  final Input<String>? instanceRoleArn;

  /// List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to `default`.
  final Input<List<String>>? metricGroups;

  /// The name of the fleet.
  final Input<String>? name;

  /// Game session protection policy to apply to all instances in this fleetE.g., `FullProtection`. Defaults to `NoProtection`.
  final Input<String>? newGameSessionProtectionPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below.
  final Input<FleetResourceCreationLimitPolicy>? resourceCreationLimitPolicy;

  /// Instructions for launching server processes on each instance in the fleet. See below.
  final Input<FleetRuntimeConfiguration>? runtimeConfiguration;

  /// ID of the GameLift Script to be deployed on the fleet. Conflicts with `build_id`.
  final Input<String>? scriptId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FleetArgs4({
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
    final map = <String, dynamic>{};
    final buildIdValue = buildId;
    if (buildIdValue != null) {
      map['buildId'] = buildIdValue;
    }
    final certificateConfigurationValue = certificateConfiguration;
    if (certificateConfigurationValue != null) {
      map['certificateConfiguration'] = Input.mapOptionalInputValue<
              FleetCertificateConfiguration, Map<String, dynamic>>(
          certificateConfigurationValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ec2InboundPermissionsValue = ec2InboundPermissions;
    if (ec2InboundPermissionsValue != null) {
      map['ec2InboundPermissions'] = Input.mapOptionalInputValue<
              List<FleetEc2InboundPermission>, List<Map<String, dynamic>>>(
          ec2InboundPermissionsValue,
          (value) =>
              Input.encodeList<FleetEc2InboundPermission, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['ec2InstanceType'] = ec2InstanceType;
    final fleetTypeValue = fleetType;
    if (fleetTypeValue != null) {
      map['fleetType'] = fleetTypeValue;
    }
    final instanceRoleArnValue = instanceRoleArn;
    if (instanceRoleArnValue != null) {
      map['instanceRoleArn'] = instanceRoleArnValue;
    }
    final metricGroupsValue = metricGroups;
    if (metricGroupsValue != null) {
      map['metricGroups'] = metricGroupsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final newGameSessionProtectionPolicyValue = newGameSessionProtectionPolicy;
    if (newGameSessionProtectionPolicyValue != null) {
      map['newGameSessionProtectionPolicy'] =
          newGameSessionProtectionPolicyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceCreationLimitPolicyValue = resourceCreationLimitPolicy;
    if (resourceCreationLimitPolicyValue != null) {
      map['resourceCreationLimitPolicy'] = Input.mapOptionalInputValue<
              FleetResourceCreationLimitPolicy, Map<String, dynamic>>(
          resourceCreationLimitPolicyValue, (value) => value.toMap());
    }
    final runtimeConfigurationValue = runtimeConfiguration;
    if (runtimeConfigurationValue != null) {
      map['runtimeConfiguration'] = Input.mapOptionalInputValue<
              FleetRuntimeConfiguration, Map<String, dynamic>>(
          runtimeConfigurationValue, (value) => value.toMap());
    }
    final scriptIdValue = scriptId;
    if (scriptIdValue != null) {
      map['scriptId'] = scriptIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FleetArgs4.fromMap(Map<String, dynamic> map) {
    return FleetArgs4(
      buildId: Input.asOptionalInput<String>(map['buildId']),
      certificateConfiguration:
          Input.asOptionalInput<FleetCertificateConfiguration>(
              map['certificateConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      ec2InboundPermissions:
          Input.asOptionalInput<List<FleetEc2InboundPermission>>(
              map['ec2InboundPermissions']),
      ec2InstanceType: Input.asInput<String>(map['ec2InstanceType']),
      fleetType: Input.asOptionalInput<String>(map['fleetType']),
      instanceRoleArn: Input.asOptionalInput<String>(map['instanceRoleArn']),
      metricGroups: Input.asOptionalInput<List<String>>(map['metricGroups']),
      name: Input.asOptionalInput<String>(map['name']),
      newGameSessionProtectionPolicy:
          Input.asOptionalInput<String>(map['newGameSessionProtectionPolicy']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceCreationLimitPolicy:
          Input.asOptionalInput<FleetResourceCreationLimitPolicy>(
              map['resourceCreationLimitPolicy']),
      runtimeConfiguration: Input.asOptionalInput<FleetRuntimeConfiguration>(
          map['runtimeConfiguration']),
      scriptId: Input.asOptionalInput<String>(map['scriptId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
