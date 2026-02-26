// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipam_pool_cidrs_filter/get_vpc_ipam_pool_cidrs_filter.dart';

/// Arguments for getVpcIpamPoolCidrs.
class GetVpcIpamPoolCidrsArgs {
  /// Custom filter block as described below.
  final Input<List<GetVpcIpamPoolCidrsFilter>>? filters;

  /// ID of the IPAM pool you would like the list of provisioned CIDRs.
  final Input<String> ipamPoolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetVpcIpamPoolCidrsArgs({
    this.filters,
    required this.ipamPoolId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetVpcIpamPoolCidrsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpcIpamPoolCidrsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['ipamPoolId'] = ipamPoolId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVpcIpamPoolCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsArgs(
      filters: Input.asOptionalInput<List<GetVpcIpamPoolCidrsFilter>>(
          map['filters']),
      ipamPoolId: Input.asInput<String>(map['ipamPoolId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
