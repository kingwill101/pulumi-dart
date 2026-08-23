// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_available_capacity.dart';
import 'get_dedicated_host_filter.dart';
import 'get_dedicated_host_instance.dart';

/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  /// Time that the Dedicated Host was allocated, in RFC3339 format.
  final String allocationTime;
  /// Whether the Dedicated Host supports multiple instance types of the same instance family. Valid values: `on`, `off`.
  final String allowsMultipleInstanceTypes;
  /// ARN of the Dedicated Host.
  final String arn;
  /// The ID of the Outpost hardware asset on which the Dedicated Host is allocated.
  final String assetId;
  /// Whether auto-placement is on or off.
  final String autoPlacement;
  /// Availability Zone of the Dedicated Host.
  final String availabilityZone;
  /// AZ ID of the Availability Zone in which the Dedicated Host is allocated (e.g., `use1-az1`).
  final String availabilityZoneId;
  /// The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  final List<GetDedicatedHostAvailableCapacity> availableCapacities;
  /// Number of cores on the Dedicated Host.
  final int cores;
  final List<GetDedicatedHostFilter>? filters;
  final String hostId;
  /// Whether host maintenance is enabled or disabled for the Dedicated Host. Valid values: `on`, `off`.
  final String hostMaintenance;
  /// Whether host recovery is enabled or disabled for the Dedicated Host.
  final String hostRecovery;
  /// The reservation ID of the Dedicated Host.
  final String hostReservationId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Instance family supported by the Dedicated Host. For example, "m5".
  final String instanceFamily;
  /// The instance type of the running instance.
  final String instanceType;
  /// The instances running on the Dedicated Host. See `instances` below.
  final List<GetDedicatedHostInstance> instances;
  /// Whether the Dedicated Host is in a host resource group.
  final bool memberOfServiceLinkedResourceGroup;
  /// ARN of the AWS Outpost on which the Dedicated Host is allocated.
  final String outpostArn;
  /// The ID of the AWS account that owns the instance.
  final String ownerId;
  final String region;
  /// Time that the Dedicated Host was released, in RFC3339 format.
  final String releaseTime;
  /// Number of sockets on the Dedicated Host.
  final int sockets;
  /// Allocation state of the Dedicated Host. Valid values: `available`, `under-assessment`, `permanent-failure`, `released`, `released-permanent-failure`, `pending`.
  final String state;
  final Map<String, String> tags;
  /// Total number of vCPUs on the Dedicated Host.
  final int totalVcpus;

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
  /// [hostId] Required.
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
  /// [region] Required.
  /// [releaseTime] Time that the Dedicated Host was released, in RFC3339 format.
  /// [sockets] Number of sockets on the Dedicated Host.
  /// [state] Allocation state of the Dedicated Host. Valid values: `available`, `under-assessment`, `permanent-failure`, `released`, `released-permanent-failure`, `pending`.
  /// [tags] Required.
  /// [totalVcpus] Total number of vCPUs on the Dedicated Host.
  const GetDedicatedHostResult({
    required this.allocationTime,
    required this.allowsMultipleInstanceTypes,
    required this.arn,
    required this.assetId,
    required this.autoPlacement,
    required this.availabilityZone,
    required this.availabilityZoneId,
    required this.availableCapacities,
    required this.cores,
    this.filters,
    required this.hostId,
    required this.hostMaintenance,
    required this.hostRecovery,
    required this.hostReservationId,
    required this.id,
    required this.instanceFamily,
    required this.instanceType,
    required this.instances,
    required this.memberOfServiceLinkedResourceGroup,
    required this.outpostArn,
    required this.ownerId,
    required this.region,
    required this.releaseTime,
    required this.sockets,
    required this.state,
    required this.tags,
    required this.totalVcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationTime': allocationTime,
      'allowsMultipleInstanceTypes': allowsMultipleInstanceTypes,
      'arn': arn,
      'assetId': assetId,
      'autoPlacement': autoPlacement,
      'availabilityZone': availabilityZone,
      'availabilityZoneId': availabilityZoneId,
      'availableCapacities': pulumi.Input.encodeList<GetDedicatedHostAvailableCapacity, Map<String, dynamic>>(availableCapacities, (value) => value.toMap()),
      'cores': cores,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDedicatedHostFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hostId': hostId,
      'hostMaintenance': hostMaintenance,
      'hostRecovery': hostRecovery,
      'hostReservationId': hostReservationId,
      'id': id,
      'instanceFamily': instanceFamily,
      'instanceType': instanceType,
      'instances': pulumi.Input.encodeList<GetDedicatedHostInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'memberOfServiceLinkedResourceGroup': memberOfServiceLinkedResourceGroup,
      'outpostArn': outpostArn,
      'ownerId': ownerId,
      'region': region,
      'releaseTime': releaseTime,
      'sockets': sockets,
      'state': state,
      'tags': tags,
      'totalVcpus': totalVcpus,
    };
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      allocationTime: map['allocationTime'] as String,
      allowsMultipleInstanceTypes: map['allowsMultipleInstanceTypes'] as String,
      arn: map['arn'] as String,
      assetId: map['assetId'] as String,
      autoPlacement: map['autoPlacement'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      availableCapacities: pulumi.Input.decodeList<GetDedicatedHostAvailableCapacity>(map['availableCapacities']!, (value) => GetDedicatedHostAvailableCapacity.fromMap((value as Map).cast<String, dynamic>())),
      cores: map['cores'] as int,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDedicatedHostFilter>(guardedValue, (value) => GetDedicatedHostFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      hostId: map['hostId'] as String,
      hostMaintenance: map['hostMaintenance'] as String,
      hostRecovery: map['hostRecovery'] as String,
      hostReservationId: map['hostReservationId'] as String,
      id: map['id'] as String,
      instanceFamily: map['instanceFamily'] as String,
      instanceType: map['instanceType'] as String,
      instances: pulumi.Input.decodeList<GetDedicatedHostInstance>(map['instances']!, (value) => GetDedicatedHostInstance.fromMap((value as Map).cast<String, dynamic>())),
      memberOfServiceLinkedResourceGroup: map['memberOfServiceLinkedResourceGroup'] as bool,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      releaseTime: map['releaseTime'] as String,
      sockets: map['sockets'] as int,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      totalVcpus: map['totalVcpus'] as int,
    );
  }
}
