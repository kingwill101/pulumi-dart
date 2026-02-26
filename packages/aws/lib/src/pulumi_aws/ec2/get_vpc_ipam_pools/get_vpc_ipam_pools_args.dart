// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipam_pools_filter/get_vpc_ipam_pools_filter.dart';

/// Arguments for getVpcIpamPools.
class GetVpcIpamPoolsArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available IPAM Pools in the current region.
  final Input<List<GetVpcIpamPoolsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetVpcIpamPoolsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpcIpamPoolsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpcIpamPoolsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVpcIpamPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsArgs(
      filters:
          Input.asOptionalInput<List<GetVpcIpamPoolsFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
