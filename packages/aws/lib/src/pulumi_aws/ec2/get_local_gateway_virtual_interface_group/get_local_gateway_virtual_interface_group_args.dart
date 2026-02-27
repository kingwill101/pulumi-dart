// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_local_gateway_virtual_interface_group_filter/get_local_gateway_virtual_interface_group_filter.dart';

/// Arguments for getLocalGatewayVirtualInterfaceGroup.
class GetLocalGatewayVirtualInterfaceGroupArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLocalGatewayVirtualInterfaceGroups.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetLocalGatewayVirtualInterfaceGroupFilter>>? filters;

  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final pulumi.Input<String>? id;

  /// Identifier of EC2 Local Gateway.
  final pulumi.Input<String>? localGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired local gateway route table.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetLocalGatewayVirtualInterfaceGroupFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<
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
      filters: pulumi.Input.asOptionalInput<
          List<GetLocalGatewayVirtualInterfaceGroupFilter>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      localGatewayId:
          pulumi.Input.asOptionalInput<String>(map['localGatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
