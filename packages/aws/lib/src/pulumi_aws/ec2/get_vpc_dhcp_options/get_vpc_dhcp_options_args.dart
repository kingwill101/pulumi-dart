// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_dhcp_options_filter/get_vpc_dhcp_options_filter.dart';

/// Arguments for getVpcDhcpOptions.
class GetVpcDhcpOptionsArgs {
  /// EC2 DHCP Options ID.
  final pulumi.Input<String>? dhcpOptionsId;

  /// List of custom filters as described below.
  final pulumi.Input<List<GetVpcDhcpOptionsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpcDhcpOptionsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpcDhcpOptionsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      dhcpOptionsId: pulumi.Input.asOptionalInput<String>(map['dhcpOptionsId']),
      filters: pulumi.Input.asOptionalInput<List<GetVpcDhcpOptionsFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
