// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_cidrs_filter.dart';
import 'get_vpc_ipam_pool_cidrs_ipam_pool_cidr.dart';

/// Result data returned by getVpcIpamPoolCidrs.
class GetVpcIpamPoolCidrsResult {
  final List<GetVpcIpamPoolCidrsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The CIDRs provisioned into the IPAM pool, described below.
  final List<GetVpcIpamPoolCidrsIpamPoolCidr>? ipamPoolCidrs;
  final String? ipamPoolId;
  final String? region;

  /// Creates a new [GetVpcIpamPoolCidrsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPoolCidrs] The CIDRs provisioned into the IPAM pool, described below.
  /// [ipamPoolId] Optional.
  /// [region] Optional.
  const GetVpcIpamPoolCidrsResult({
    this.filters,
    this.id,
    this.ipamPoolCidrs,
    this.ipamPoolId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolCidrsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipamPoolCidrs': ?(() { final guardedValue = ipamPoolCidrs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolCidrsIpamPoolCidr, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipamPoolId': ?ipamPoolId,
      'region': ?region,
    };
  }

  factory GetVpcIpamPoolCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolCidrsFilter>(guardedValue, (value) => GetVpcIpamPoolCidrsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPoolCidrs: (() { final guardedValue = map['ipamPoolCidrs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolCidrsIpamPoolCidr>(guardedValue, (value) => GetVpcIpamPoolCidrsIpamPoolCidr.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
