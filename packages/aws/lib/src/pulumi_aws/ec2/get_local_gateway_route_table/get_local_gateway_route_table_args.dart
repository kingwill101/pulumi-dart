// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_local_gateway_route_table_filter/get_local_gateway_route_table_filter.dart';

/// Arguments for getLocalGatewayRouteTable.
class GetLocalGatewayRouteTableArgs {
  final pulumi.Input<List<GetLocalGatewayRouteTableFilter>>? filters;

  /// ID of the specific local gateway route table to retrieve.
  final pulumi.Input<String>? localGatewayId;

  /// Local Gateway Route Table Id assigned to desired local gateway route table
  final pulumi.Input<String>? localGatewayRouteTableId;

  /// ARN of the Outpost the local gateway route table is associated with.
  final pulumi.Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the local gateway route table.
  final pulumi.Input<String>? state;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired local gateway route table.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Local Gateway Route Tables in the current region. The given filters must match exactly one
  /// Local Gateway Route Table whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>>? tags;

  GetLocalGatewayRouteTableArgs({
    this.filters,
    this.localGatewayId,
    this.localGatewayRouteTableId,
    this.outpostArn,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetLocalGatewayRouteTableFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetLocalGatewayRouteTableFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final localGatewayIdValue = localGatewayId;
    if (localGatewayIdValue != null) {
      map['localGatewayId'] = localGatewayIdValue;
    }
    final localGatewayRouteTableIdValue = localGatewayRouteTableId;
    if (localGatewayRouteTableIdValue != null) {
      map['localGatewayRouteTableId'] = localGatewayRouteTableIdValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLocalGatewayRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTableArgs(
      filters:
          pulumi.Input.asOptionalInput<List<GetLocalGatewayRouteTableFilter>>(
              map['filters']),
      localGatewayId:
          pulumi.Input.asOptionalInput<String>(map['localGatewayId']),
      localGatewayRouteTableId:
          pulumi.Input.asOptionalInput<String>(map['localGatewayRouteTableId']),
      outpostArn: pulumi.Input.asOptionalInput<String>(map['outpostArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
