// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_available_capacity.dart';
import 'get_dedicated_host_filter.dart';
import 'get_dedicated_host_instance.dart';

/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  /// Time that the Dedicated Host was allocated, in RFC3339 format.
  final String? allocationTime;
  /// Whether the Dedicated Host supports multiple instance types of the same instance family. Valid values: `on`, `off`.
  final String? allowsMultipleInstanceTypes;
  /// ARN of the Dedicated Host.
  final String? arn;
  /// The ID of the Outpost hardware asset on which the Dedicated Host is allocated.
  final String? assetId;
  /// Whether auto-placement is on or off.
  final String? autoPlacement;
  /// Availability Zone of the Dedicated Host.
  final String? availabilityZone;
  /// AZ ID of the Availability Zone in which the Dedicated Host is allocated (e.g., `use1-az1`).
  final String? availabilityZoneId;
  /// The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  final List<GetDedicatedHostAvailableCapacity>? availableCapacities;
  /// Number of cores on the Dedicated Host.
  final int? cores;
  final List<GetDedicatedHostFilter>? filters;
  final String? hostId;
  /// Whether host maintenance is enabled or disabled for the Dedicated Host. Valid values: `on`, `off`.
  final String? hostMaintenance;
  /// Whether host recovery is enabled or disabled for the Dedicated Host.
  final String? hostRecovery;
  /// The reservation ID of the Dedicated Host.
  final String? hostReservationId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Instance family supported by the Dedicated Host. For example, "m5".
  final String? instanceFamily;
  /// The instance type of the running instance.
  final String? instanceType;
  /// The instances running on the Dedicated Host. See `instances` below.
  final List<GetDedicatedHostInstance>? instances;
  /// Whether the Dedicated Host is in a host resource group.
  final bool? memberOfServiceLinkedResourceGroup;
  /// ARN of the AWS Outpost on which the Dedicated Host is allocated.
  final String? outpostArn;
  /// The ID of the AWS account that owns the instance.
  final String? ownerId;
  final String? region;
  /// Time that the Dedicated Host was released, in RFC3339 format.
  final String? releaseTime;
  /// Number of sockets on the Dedicated Host.
  final int? sockets;
  /// Allocation state of the Dedicated Host. Valid values: `available`, `under-assessment`, `permanent-failure`, `released`, `released-permanent-failure`, `pending`.
  final String? state;
  final Map<String, String>? tags;
  /// Total number of vCPUs on the Dedicated Host.
  final int? totalVcpus;

  /// Creates a new [GetDedicatedHostResult].
  /// [allocationTime] Time that the Dedicated Host was allocated, in RFC3339 format.
  /// [allowsMultipleInstanceTypes] Whether the Dedicated Host supports multiple instance types of the same instance family. Valid values: `on`, `off`.
  /// [arn] ARN of the Dedicated Host.
  /// [assetId] The ID of the Outpost hardware asset on which the Dedicated Host is allocated.
  /// [autoPlacement] Whether auto-placement is on or off.
  /// [availabilityZone] Availability Zone of the Dedicated Host.
  /// [availabilityZoneId] AZ ID of the Availability Zone in which the Dedicated Host is allocated (e.g., `use1-az1`).
  /// [availableCapacities] The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  /// [cores] Number of cores on the Dedicated Host.
  /// [filters] Optional.
  /// [hostId] Optional.
  /// [hostMaintenance] Whether host maintenance is enabled or disabled for the Dedicated Host. Valid values: `on`, `off`.
  /// [hostRecovery] Whether host recovery is enabled or disabled for the Dedicated Host.
  /// [hostReservationId] The reservation ID of the Dedicated Host.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceFamily] Instance family supported by the Dedicated Host. For example, "m5".
  /// [instanceType] The instance type of the running instance.
  /// [instances] The instances running on the Dedicated Host. See `instances` below.
  /// [memberOfServiceLinkedResourceGroup] Whether the Dedicated Host is in a host resource group.
  /// [outpostArn] ARN of the AWS Outpost on which the Dedicated Host is allocated.
  /// [ownerId] The ID of the AWS account that owns the instance.
  /// [region] Optional.
  /// [releaseTime] Time that the Dedicated Host was released, in RFC3339 format.
  /// [sockets] Number of sockets on the Dedicated Host.
  /// [state] Allocation state of the Dedicated Host. Valid values: `available`, `under-assessment`, `permanent-failure`, `released`, `released-permanent-failure`, `pending`.
  /// [tags] Optional.
  /// [totalVcpus] Total number of vCPUs on the Dedicated Host.
  const GetDedicatedHostResult({
    this.allocationTime,
    this.allowsMultipleInstanceTypes,
    this.arn,
    this.assetId,
    this.autoPlacement,
    this.availabilityZone,
    this.availabilityZoneId,
    this.availableCapacities,
    this.cores,
    this.filters,
    this.hostId,
    this.hostMaintenance,
    this.hostRecovery,
    this.hostReservationId,
    this.id,
    this.instanceFamily,
    this.instanceType,
    this.instances,
    this.memberOfServiceLinkedResourceGroup,
    this.outpostArn,
    this.ownerId,
    this.region,
    this.releaseTime,
    this.sockets,
    this.state,
    this.tags,
    this.totalVcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTime': ?allocationTime,
      'allowsMultipleInstanceTypes': ?allowsMultipleInstanceTypes,
      'arn': ?arn,
      'assetId': ?assetId,
      'autoPlacement': ?autoPlacement,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'availableCapacities': ?(() { final guardedValue = availableCapacities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedHostAvailableCapacity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cores': ?cores,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedHostFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hostId': ?hostId,
      'hostMaintenance': ?hostMaintenance,
      'hostRecovery': ?hostRecovery,
      'hostReservationId': ?hostReservationId,
      'id': ?id,
      'instanceFamily': ?instanceFamily,
      'instanceType': ?instanceType,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedHostInstance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memberOfServiceLinkedResourceGroup': ?memberOfServiceLinkedResourceGroup,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'region': ?region,
      'releaseTime': ?releaseTime,
      'sockets': ?sockets,
      'state': ?state,
      'tags': ?tags,
      'totalVcpus': ?totalVcpus,
    };
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      allocationTime: (() { final guardedValue = map['allocationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowsMultipleInstanceTypes: (() { final guardedValue = map['allowsMultipleInstanceTypes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoPlacement: (() { final guardedValue = map['autoPlacement']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableCapacities: (() { final guardedValue = map['availableCapacities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedHostAvailableCapacity>(guardedValue, (value) => GetDedicatedHostAvailableCapacity.fromMap((value as Map).cast<String, dynamic>())); })(),
      cores: (() { final guardedValue = map['cores']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedHostFilter>(guardedValue, (value) => GetDedicatedHostFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostMaintenance: (() { final guardedValue = map['hostMaintenance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostRecovery: (() { final guardedValue = map['hostRecovery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostReservationId: (() { final guardedValue = map['hostReservationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceFamily: (() { final guardedValue = map['instanceFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedHostInstance>(guardedValue, (value) => GetDedicatedHostInstance.fromMap((value as Map).cast<String, dynamic>())); })(),
      memberOfServiceLinkedResourceGroup: (() { final guardedValue = map['memberOfServiceLinkedResourceGroup']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseTime: (() { final guardedValue = map['releaseTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sockets: (() { final guardedValue = map['sockets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      totalVcpus: (() { final guardedValue = map['totalVcpus']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
