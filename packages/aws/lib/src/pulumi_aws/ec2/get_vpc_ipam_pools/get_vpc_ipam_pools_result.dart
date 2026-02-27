// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_ipam_pools_filter/get_vpc_ipam_pools_filter.dart';
import '../get_vpc_ipam_pools_ipam_pool/get_vpc_ipam_pools_ipam_pool.dart';

/// Result data returned by getVpcIpamPools.
class GetVpcIpamPoolsResult {
  final List<GetVpcIpamPoolsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of IPAM pools and their attributes. See below for details
  final List<GetVpcIpamPoolsIpamPool> ipamPools;
  final String region;

  GetVpcIpamPoolsResult({
    this.filters,
    required this.id,
    required this.ipamPools,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetVpcIpamPoolsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipamPools'] =
        pulumi.Input.encodeList<GetVpcIpamPoolsIpamPool, Map<String, dynamic>>(
            ipamPools, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetVpcIpamPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcIpamPoolsFilter>(
              map['filters'],
              (value) => GetVpcIpamPoolsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipamPools: pulumi.Input.decodeList<GetVpcIpamPoolsIpamPool>(
          map['ipamPools'],
          (value) => GetVpcIpamPoolsIpamPool.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
