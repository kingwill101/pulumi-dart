// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_dedicated_host_filter/get_dedicated_host_filter.dart';

/// Result data returned by getDedicatedHost.
class GetDedicatedHostResult {
  /// ARN of the Dedicated Host.
  final String arn;

  /// The ID of the Outpost hardware asset on which the Dedicated Host is allocated.
  final String assetId;

  /// Whether auto-placement is on or off.
  final String autoPlacement;

  /// Availability Zone of the Dedicated Host.
  final String availabilityZone;

  /// Number of cores on the Dedicated Host.
  final int cores;
  final List<GetDedicatedHostFilter>? filters;
  final String hostId;

  /// Whether host recovery is enabled or disabled for the Dedicated Host.
  final String hostRecovery;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Instance family supported by the Dedicated Host. For example, "m5".
  final String instanceFamily;

  /// Instance type supported by the Dedicated Host. For example, "m5.large". If the host supports multiple instance types, no instanceType is returned.
  final String instanceType;

  /// ARN of the AWS Outpost on which the Dedicated Host is allocated.
  final String outpostArn;

  /// ID of the AWS account that owns the Dedicated Host.
  final String ownerId;
  final String region;

  /// Number of sockets on the Dedicated Host.
  final int sockets;
  final Map<String, String> tags;

  /// Total number of vCPUs on the Dedicated Host.
  final int totalVcpus;

  GetDedicatedHostResult({
    required this.arn,
    required this.assetId,
    required this.autoPlacement,
    required this.availabilityZone,
    required this.cores,
    this.filters,
    required this.hostId,
    required this.hostRecovery,
    required this.id,
    required this.instanceFamily,
    required this.instanceType,
    required this.outpostArn,
    required this.ownerId,
    required this.region,
    required this.sockets,
    required this.tags,
    required this.totalVcpus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['assetId'] = assetId;
    map['autoPlacement'] = autoPlacement;
    map['availabilityZone'] = availabilityZone;
    map['cores'] = cores;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetDedicatedHostFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['hostId'] = hostId;
    map['hostRecovery'] = hostRecovery;
    map['id'] = id;
    map['instanceFamily'] = instanceFamily;
    map['instanceType'] = instanceType;
    map['outpostArn'] = outpostArn;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['sockets'] = sockets;
    map['tags'] = tags;
    map['totalVcpus'] = totalVcpus;
    return map;
  }

  factory GetDedicatedHostResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostResult(
      arn: map['arn'] as String,
      assetId: map['assetId'] as String,
      autoPlacement: map['autoPlacement'] as String,
      availabilityZone: map['availabilityZone'] as String,
      cores: map['cores'] as int,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetDedicatedHostFilter>(
              map['filters'],
              (value) => GetDedicatedHostFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hostId: map['hostId'] as String,
      hostRecovery: map['hostRecovery'] as String,
      id: map['id'] as String,
      instanceFamily: map['instanceFamily'] as String,
      instanceType: map['instanceType'] as String,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      sockets: map['sockets'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      totalVcpus: map['totalVcpus'] as int,
    );
  }
}
