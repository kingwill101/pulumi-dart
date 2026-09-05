// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_fleet_compute_configuration.dart';
import 'get_fleet_scaling_configuration.dart';
import 'get_fleet_status.dart';
import 'get_fleet_vpc_config.dart';

/// Result data returned by getFleet.
class GetFleetResult {
  /// ARN of the Fleet.
  final String? arn;
  /// Number of machines allocated to the ﬂeet.
  final int? baseCapacity;
  /// Compute configuration of the compute fleet.
  final List<GetFleetComputeConfiguration>? computeConfigurations;
  /// Compute resources the compute fleet uses.
  final String? computeType;
  /// Creation time of the fleet.
  final String? created;
  /// Environment type of the compute fleet.
  final String? environmentType;
  /// The service role associated with the compute fleet.
  final String? fleetServiceRole;
  /// ARN of the Fleet.
  final String? id;
  /// AMI of the compute fleet.
  final String? imageId;
  /// Last modification time of the fleet.
  final String? lastModified;
  final String? name;
  /// Overflow behavior for compute fleet.
  final String? overflowBehavior;
  final String? region;
  /// Nested attribute containing information about the scaling configuration.
  final List<GetFleetScalingConfiguration>? scalingConfigurations;
  /// Nested attribute containing information about the current status of the fleet.
  final List<GetFleetStatus>? statuses;
  /// Mapping of Key-Value tags for the resource.
  final Map<String, String>? tags;
  /// Nested attribute containing information about the VPC configuration.
  final List<GetFleetVpcConfig>? vpcConfigs;

  /// Creates a new [GetFleetResult].
  /// [arn] ARN of the Fleet.
  /// [baseCapacity] Number of machines allocated to the ﬂeet.
  /// [computeConfigurations] Compute configuration of the compute fleet.
  /// [computeType] Compute resources the compute fleet uses.
  /// [created] Creation time of the fleet.
  /// [environmentType] Environment type of the compute fleet.
  /// [fleetServiceRole] The service role associated with the compute fleet.
  /// [id] ARN of the Fleet.
  /// [imageId] AMI of the compute fleet.
  /// [lastModified] Last modification time of the fleet.
  /// [name] Optional.
  /// [overflowBehavior] Overflow behavior for compute fleet.
  /// [region] Optional.
  /// [scalingConfigurations] Nested attribute containing information about the scaling configuration.
  /// [statuses] Nested attribute containing information about the current status of the fleet.
  /// [tags] Mapping of Key-Value tags for the resource.
  /// [vpcConfigs] Nested attribute containing information about the VPC configuration.
  const GetFleetResult({
    this.arn,
    this.baseCapacity,
    this.computeConfigurations,
    this.computeType,
    this.created,
    this.environmentType,
    this.fleetServiceRole,
    this.id,
    this.imageId,
    this.lastModified,
    this.name,
    this.overflowBehavior,
    this.region,
    this.scalingConfigurations,
    this.statuses,
    this.tags,
    this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'baseCapacity': ?baseCapacity,
      'computeConfigurations': ?(() { final guardedValue = computeConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFleetComputeConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'computeType': ?computeType,
      'created': ?created,
      'environmentType': ?environmentType,
      'fleetServiceRole': ?fleetServiceRole,
      'id': ?id,
      'imageId': ?imageId,
      'lastModified': ?lastModified,
      'name': ?name,
      'overflowBehavior': ?overflowBehavior,
      'region': ?region,
      'scalingConfigurations': ?(() { final guardedValue = scalingConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFleetScalingConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statuses': ?(() { final guardedValue = statuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFleetStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'vpcConfigs': ?(() { final guardedValue = vpcConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFleetVpcConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFleetResult.fromMap(Map<String, dynamic> map) {
    return GetFleetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      baseCapacity: (() { final guardedValue = map['baseCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      computeConfigurations: (() { final guardedValue = map['computeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFleetComputeConfiguration>(guardedValue, (value) => GetFleetComputeConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fleetServiceRole: (() { final guardedValue = map['fleetServiceRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      overflowBehavior: (() { final guardedValue = map['overflowBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scalingConfigurations: (() { final guardedValue = map['scalingConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFleetScalingConfiguration>(guardedValue, (value) => GetFleetScalingConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFleetStatus>(guardedValue, (value) => GetFleetStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcConfigs: (() { final guardedValue = map['vpcConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFleetVpcConfig>(guardedValue, (value) => GetFleetVpcConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
