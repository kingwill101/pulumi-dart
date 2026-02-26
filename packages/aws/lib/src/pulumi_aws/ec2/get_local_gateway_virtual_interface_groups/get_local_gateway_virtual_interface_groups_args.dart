// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_local_gateway_virtual_interface_groups_filter/get_local_gateway_virtual_interface_groups_filter.dart';

/// Arguments for getLocalGatewayVirtualInterfaceGroups.
class GetLocalGatewayVirtualInterfaceGroupsArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  final Input<List<GetLocalGatewayVirtualInterfaceGroupsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final Input<Map<String, String>>? tags;

  GetLocalGatewayVirtualInterfaceGroupsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetLocalGatewayVirtualInterfaceGroupsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<
              GetLocalGatewayVirtualInterfaceGroupsFilter,
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

  factory GetLocalGatewayVirtualInterfaceGroupsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupsArgs(
      filters: Input.asOptionalInput<
          List<GetLocalGatewayVirtualInterfaceGroupsFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
