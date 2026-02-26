// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_local_gateway_route_table_filter/get_local_gateway_route_table_filter.dart';

/// Arguments for getLocalGatewayRouteTable.
class GetLocalGatewayRouteTableArgs {
  final Input<List<GetLocalGatewayRouteTableFilter>>? filters;

  /// ID of the specific local gateway route table to retrieve.
  final Input<String>? localGatewayId;

  /// Local Gateway Route Table Id assigned to desired local gateway route table
  final Input<String>? localGatewayRouteTableId;

  /// ARN of the Outpost the local gateway route table is associated with.
  final Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// State of the local gateway route table.
  final Input<String>? state;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired local gateway route table.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Local Gateway Route Tables in the current region. The given filters must match exactly one
  /// Local Gateway Route Table whose data will be exported as attributes.
  final Input<Map<String, String>>? tags;

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
      map['filters'] = Input.mapOptionalInputValue<
              List<GetLocalGatewayRouteTableFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetLocalGatewayRouteTableFilter,
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
      filters: Input.asOptionalInput<List<GetLocalGatewayRouteTableFilter>>(
          map['filters']),
      localGatewayId: Input.asOptionalInput<String>(map['localGatewayId']),
      localGatewayRouteTableId:
          Input.asOptionalInput<String>(map['localGatewayRouteTableId']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
