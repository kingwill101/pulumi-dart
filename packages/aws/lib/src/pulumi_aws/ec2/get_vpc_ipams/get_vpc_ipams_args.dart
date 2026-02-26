// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_ipams_filter/get_vpc_ipams_filter.dart';

/// Arguments for getVpcIpams.
class GetVpcIpamsArgs {
  /// Custom filter block as described below.
  ///
  /// The arguments of this data source act as filters for querying the available IPAMs.
  final Input<List<GetVpcIpamsFilter>>? filters;

  /// IDs of the IPAM resources to query for.
  final Input<List<String>>? ipamIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetVpcIpamsArgs({
    this.filters,
    this.ipamIds,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpcIpamsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetVpcIpamsFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final ipamIdsValue = ipamIds;
    if (ipamIdsValue != null) {
      map['ipamIds'] = ipamIdsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVpcIpamsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamsArgs(
      filters: Input.asOptionalInput<List<GetVpcIpamsFilter>>(map['filters']),
      ipamIds: Input.asOptionalInput<List<String>>(map['ipamIds']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
