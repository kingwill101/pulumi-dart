// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_dhcp_options_filter/get_vpc_dhcp_options_filter.dart';

/// Arguments for getVpcDhcpOptions.
class GetVpcDhcpOptionsArgs {
  /// EC2 DHCP Options ID.
  final Input<String>? dhcpOptionsId;

  /// List of custom filters as described below.
  final Input<List<GetVpcDhcpOptionsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags assigned to the resource.
  final Input<Map<String, String>>? tags;

  GetVpcDhcpOptionsArgs({
    this.dhcpOptionsId,
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dhcpOptionsIdValue = dhcpOptionsId;
    if (dhcpOptionsIdValue != null) {
      map['dhcpOptionsId'] = dhcpOptionsIdValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetVpcDhcpOptionsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpcDhcpOptionsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcDhcpOptionsArgs(
      dhcpOptionsId: Input.asOptionalInput<String>(map['dhcpOptionsId']),
      filters:
          Input.asOptionalInput<List<GetVpcDhcpOptionsFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
