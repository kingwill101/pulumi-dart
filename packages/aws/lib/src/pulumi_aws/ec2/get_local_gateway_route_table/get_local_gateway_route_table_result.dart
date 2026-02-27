// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_local_gateway_route_table_filter/get_local_gateway_route_table_filter.dart';

/// Result data returned by getLocalGatewayRouteTable.
class GetLocalGatewayRouteTableResult {
  final List<GetLocalGatewayRouteTableFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String localGatewayId;
  final String localGatewayRouteTableId;
  final String outpostArn;
  final String region;
  final String state;
  final Map<String, String> tags;

  GetLocalGatewayRouteTableResult({
    this.filters,
    required this.id,
    required this.localGatewayId,
    required this.localGatewayRouteTableId,
    required this.outpostArn,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetLocalGatewayRouteTableFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['localGatewayId'] = localGatewayId;
    map['localGatewayRouteTableId'] = localGatewayRouteTableId;
    map['outpostArn'] = outpostArn;
    map['region'] = region;
    map['state'] = state;
    map['tags'] = tags;
    return map;
  }

  factory GetLocalGatewayRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTableResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLocalGatewayRouteTableFilter>(
              map['filters'],
              (value) => GetLocalGatewayRouteTableFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      localGatewayId: map['localGatewayId'] as String,
      localGatewayRouteTableId: map['localGatewayRouteTableId'] as String,
      outpostArn: map['outpostArn'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
