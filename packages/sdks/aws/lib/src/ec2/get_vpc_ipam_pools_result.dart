// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pools_filter.dart';
import 'get_vpc_ipam_pools_ipam_pool.dart';

/// Result data returned by getVpcIpamPools.
class GetVpcIpamPoolsResult {
  final List<GetVpcIpamPoolsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of IPAM pools and their attributes. See below for details
  final List<GetVpcIpamPoolsIpamPool> ipamPools;
  final String region;

  /// Creates a new [GetVpcIpamPoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPools] List of IPAM pools and their attributes. See below for details
  /// [region] Required.
  GetVpcIpamPoolsResult({
    this.filters,
    required this.id,
    required this.ipamPools,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ipamPools': pulumi.Input.encodeList<GetVpcIpamPoolsIpamPool, Map<String, dynamic>>(ipamPools, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetVpcIpamPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolsFilter>(guardedValue, (value) => GetVpcIpamPoolsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ipamPools: pulumi.Input.decodeList<GetVpcIpamPoolsIpamPool>(map['ipamPools']!, (value) => GetVpcIpamPoolsIpamPool.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}

