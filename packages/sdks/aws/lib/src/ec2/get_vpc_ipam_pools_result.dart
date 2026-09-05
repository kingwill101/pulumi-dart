// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pools_filter.dart';
import 'get_vpc_ipam_pools_ipam_pool.dart';

/// Result data returned by getVpcIpamPools.
class GetVpcIpamPoolsResult {
  final List<GetVpcIpamPoolsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of IPAM pools and their attributes. See below for details
  final List<GetVpcIpamPoolsIpamPool>? ipamPools;
  final String? region;

  /// Creates a new [GetVpcIpamPoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPools] List of IPAM pools and their attributes. See below for details
  /// [region] Optional.
  const GetVpcIpamPoolsResult({
    this.filters,
    this.id,
    this.ipamPools,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipamPools': ?(() { final guardedValue = ipamPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpamPoolsIpamPool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetVpcIpamPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolsFilter>(guardedValue, (value) => GetVpcIpamPoolsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipamPools: (() { final guardedValue = map['ipamPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpamPoolsIpamPool>(guardedValue, (value) => GetVpcIpamPoolsIpamPool.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
