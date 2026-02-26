// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_local_gateway_virtual_interface_group_filter/get_local_gateway_virtual_interface_group_filter.dart';

/// Arguments for getLocalGatewayVirtualInterfaceGroup.
class GetLocalGatewayVirtualInterfaceGroupArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  final Input<List<GetLocalGatewayVirtualInterfaceGroupFilter>>? filters;

  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final Input<String>? id;

  /// Identifier of EC2 Local Gateway.
  final Input<String>? localGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final Input<Map<String, String>>? tags;

  GetLocalGatewayVirtualInterfaceGroupArgs({
    this.filters,
    this.id,
    this.localGatewayId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetLocalGatewayVirtualInterfaceGroupFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<
              GetLocalGatewayVirtualInterfaceGroupFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final localGatewayIdValue = localGatewayId;
    if (localGatewayIdValue != null) {
      map['localGatewayId'] = localGatewayIdValue;
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

  factory GetLocalGatewayVirtualInterfaceGroupArgs.fromMap(
      Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceGroupArgs(
      filters: Input.asOptionalInput<
          List<GetLocalGatewayVirtualInterfaceGroupFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      localGatewayId: Input.asOptionalInput<String>(map['localGatewayId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
