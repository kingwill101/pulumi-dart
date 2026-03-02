// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pool_cidrs_filter.dart';

/// {@template pulumi_ec2_get_vpc_ipam_pool_cidrs_get_vpc_ipam_pool_cidrs_args_doc}
/// Arguments for getVpcIpamPoolCidrs.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_ipam_pool_cidrs_get_vpc_ipam_pool_cidrs_args_doc}
class GetVpcIpamPoolCidrsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcIpamPoolCidrsFilter>>? filters;
  /// ID of the IPAM pool you would like the list of provisioned CIDRs.
  final pulumi.Input<String> ipamPoolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcIpamPoolCidrsArgs].
  /// [filters] Custom filter block as described below.
  /// [ipamPoolId] ID of the IPAM pool you would like the list of provisioned CIDRs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetVpcIpamPoolCidrsArgs({
    this.filters,
    required this.ipamPoolId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcIpamPoolCidrsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcIpamPoolCidrsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamPoolId': ipamPoolId,
      'region': ?region,
    };
  }

  factory GetVpcIpamPoolCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVpcIpamPoolCidrsFilter>(map['filters'], (value) => GetVpcIpamPoolCidrsFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipamPoolId: (map['ipamPoolId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

