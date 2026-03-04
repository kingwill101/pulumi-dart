// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_cidrs_filter.dart';
import 'get_vpc_ipam_pool_cidrs_ipam_pool_cidr.dart';

/// Result data returned by getVpcIpamPoolCidrs.
class GetVpcIpamPoolCidrsResult {
  final List<GetVpcIpamPoolCidrsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The CIDRs provisioned into the IPAM pool, described below.
  final List<GetVpcIpamPoolCidrsIpamPoolCidr> ipamPoolCidrs;
  final String ipamPoolId;
  final String region;

  /// Creates a new [GetVpcIpamPoolCidrsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipamPoolCidrs] The CIDRs provisioned into the IPAM pool, described below.
  /// [ipamPoolId] Required.
  /// [region] Required.
  GetVpcIpamPoolCidrsResult({
    this.filters,
    required this.id,
    required this.ipamPoolCidrs,
    required this.ipamPoolId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetVpcIpamPoolCidrsFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'ipamPoolCidrs':
          pulumi.Input.encodeList<
            GetVpcIpamPoolCidrsIpamPoolCidr,
            Map<String, dynamic>
          >(ipamPoolCidrs, (value) => value.toMap()),
      'ipamPoolId': ipamPoolId,
      'region': region,
    };
  }

  factory GetVpcIpamPoolCidrsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetVpcIpamPoolCidrsFilter>(
          guardedValue,
          (value) => GetVpcIpamPoolCidrsFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      ipamPoolCidrs: pulumi.Input.decodeList<GetVpcIpamPoolCidrsIpamPoolCidr>(
        map['ipamPoolCidrs']!,
        (value) => GetVpcIpamPoolCidrsIpamPoolCidr.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      ipamPoolId: map['ipamPoolId'] as String,
      region: map['region'] as String,
    );
  }
}
