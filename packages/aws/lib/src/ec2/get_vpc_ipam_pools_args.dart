// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ipam_pools_filter.dart';

/// {@template pulumi_ec2_get_vpc_ipam_pools_get_vpc_ipam_pools_args_doc}
/// Arguments for getVpcIpamPools.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_ipam_pools_get_vpc_ipam_pools_args_doc}
class GetVpcIpamPoolsArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available IPAM Pools in the current region.
  final pulumi.Input<List<GetVpcIpamPoolsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcIpamPoolsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetVpcIpamPoolsArgs({
    List<GetVpcIpamPoolsFilter>? filters,
    String? region,
  })  : filters =
            pulumi.Input.asOptionalInput<List<GetVpcIpamPoolsFilter>>(filters),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcIpamPoolsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcIpamPoolsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVpcIpamPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcIpamPoolsFilter>(
              map['filters'],
              (value) => GetVpcIpamPoolsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
