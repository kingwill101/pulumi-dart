// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_fleet_compute_configuration/get_fleet_compute_configuration.dart';
import '../get_fleet_scaling_configuration/get_fleet_scaling_configuration.dart';
import '../get_fleet_status/get_fleet_status.dart';
import '../get_fleet_vpc_config/get_fleet_vpc_config.dart';

/// Result data returned by getFleet.
class GetFleetResult {
  /// ARN of the Fleet.
  final String arn;

  /// Number of machines allocated to the ﬂeet.
  final int baseCapacity;

  /// Compute configuration of the compute fleet.
  final List<GetFleetComputeConfiguration> computeConfigurations;

  /// Compute resources the compute fleet uses.
  final String computeType;

  /// Creation time of the fleet.
  final String created;

  /// Environment type of the compute fleet.
  final String environmentType;

  /// The service role associated with the compute fleet.
  final String fleetServiceRole;

  /// ARN of the Fleet.
  final String id;

  /// The Amazon Machine Image (AMI) of the compute fleet.
  final String imageId;

  /// Last modification time of the fleet.
  final String lastModified;
  final String name;

  /// Overflow behavior for compute fleet.
  final String overflowBehavior;
  final String region;

  /// Nested attribute containing information about the scaling configuration.
  final List<GetFleetScalingConfiguration> scalingConfigurations;

  /// Nested attribute containing information about the current status of the fleet.
  final List<GetFleetStatus> statuses;

  /// Mapping of Key-Value tags for the resource.
  final Map<String, String> tags;

  /// Nested attribute containing information about the VPC configuration.
  final List<GetFleetVpcConfig> vpcConfigs;

  GetFleetResult({
    required this.arn,
    required this.baseCapacity,
    required this.computeConfigurations,
    required this.computeType,
    required this.created,
    required this.environmentType,
    required this.fleetServiceRole,
    required this.id,
    required this.imageId,
    required this.lastModified,
    required this.name,
    required this.overflowBehavior,
    required this.region,
    required this.scalingConfigurations,
    required this.statuses,
    required this.tags,
    required this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['baseCapacity'] = baseCapacity;
    map['computeConfigurations'] = pulumi.Input.encodeList<
        GetFleetComputeConfiguration,
        Map<String, dynamic>>(computeConfigurations, (value) => value.toMap());
    map['computeType'] = computeType;
    map['created'] = created;
    map['environmentType'] = environmentType;
    map['fleetServiceRole'] = fleetServiceRole;
    map['id'] = id;
    map['imageId'] = imageId;
    map['lastModified'] = lastModified;
    map['name'] = name;
    map['overflowBehavior'] = overflowBehavior;
    map['region'] = region;
    map['scalingConfigurations'] = pulumi.Input.encodeList<
        GetFleetScalingConfiguration,
        Map<String, dynamic>>(scalingConfigurations, (value) => value.toMap());
    map['statuses'] =
        pulumi.Input.encodeList<GetFleetStatus, Map<String, dynamic>>(
            statuses, (value) => value.toMap());
    map['tags'] = tags;
    map['vpcConfigs'] =
        pulumi.Input.encodeList<GetFleetVpcConfig, Map<String, dynamic>>(
            vpcConfigs, (value) => value.toMap());
    return map;
  }

  factory GetFleetResult.fromMap(Map<String, dynamic> map) {
    return GetFleetResult(
      arn: map['arn'] as String,
      baseCapacity: map['baseCapacity'] as int,
      computeConfigurations:
          pulumi.Input.decodeList<GetFleetComputeConfiguration>(
              map['computeConfigurations'],
              (value) => GetFleetComputeConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      computeType: map['computeType'] as String,
      created: map['created'] as String,
      environmentType: map['environmentType'] as String,
      fleetServiceRole: map['fleetServiceRole'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      lastModified: map['lastModified'] as String,
      name: map['name'] as String,
      overflowBehavior: map['overflowBehavior'] as String,
      region: map['region'] as String,
      scalingConfigurations:
          pulumi.Input.decodeList<GetFleetScalingConfiguration>(
              map['scalingConfigurations'],
              (value) => GetFleetScalingConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statuses: pulumi.Input.decodeList<GetFleetStatus>(
          map['statuses'],
          (value) =>
              GetFleetStatus.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcConfigs: pulumi.Input.decodeList<GetFleetVpcConfig>(
          map['vpcConfigs'],
          (value) => GetFleetVpcConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
