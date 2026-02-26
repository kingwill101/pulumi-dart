// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipam_pool_cidrs_filter/get_vpc_ipam_pool_cidrs_filter.dart';
import '../get_vpc_ipam_pool_cidrs_ipam_pool_cidr/get_vpc_ipam_pool_cidrs_ipam_pool_cidr.dart';

/// Result data returned by getVpcIpamPoolCidrs.
class GetVpcIpamPoolCidrsResult {
  final List<GetVpcIpamPoolCidrsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The CIDRs provisioned into the IPAM pool, described below.
  final List<GetVpcIpamPoolCidrsIpamPoolCidr> ipamPoolCidrs;
  final String ipamPoolId;
  final String region;

  GetVpcIpamPoolCidrsResult({
    this.filters,
    required this.id,
    required this.ipamPoolCidrs,
    required this.ipamPoolId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetVpcIpamPoolCidrsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipamPoolCidrs'] =
        Input.encodeList<GetVpcIpamPoolCidrsIpamPoolCidr, Map<String, dynamic>>(
            ipamPoolCidrs, (value) => value.toMap());
    map['ipamPoolId'] = ipamPoolId;
    map['region'] = region;
    return map;
  }

  factory GetVpcIpamPoolCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetVpcIpamPoolCidrsFilter>(
              map['filters'],
              (value) => GetVpcIpamPoolCidrsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipamPoolCidrs: Input.decodeList<GetVpcIpamPoolCidrsIpamPoolCidr>(
          map['ipamPoolCidrs'],
          (value) => GetVpcIpamPoolCidrsIpamPoolCidr.fromMap(
              (value as Map).cast<String, dynamic>())),
      ipamPoolId: map['ipamPoolId'] as String,
      region: map['region'] as String,
    );
  }
}
