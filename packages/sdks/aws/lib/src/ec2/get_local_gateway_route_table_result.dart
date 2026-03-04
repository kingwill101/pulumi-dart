// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_table_filter.dart';

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

  /// Creates a new [GetLocalGatewayRouteTableResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localGatewayId] Required.
  /// [localGatewayRouteTableId] Required.
  /// [outpostArn] Required.
  /// [region] Required.
  /// [state] Required.
  /// [tags] Required.
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
    return <String, dynamic>{
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetLocalGatewayRouteTableFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'localGatewayId': localGatewayId,
      'localGatewayRouteTableId': localGatewayRouteTableId,
      'outpostArn': outpostArn,
      'region': region,
      'state': state,
      'tags': tags,
    };
  }

  factory GetLocalGatewayRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTableResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetLocalGatewayRouteTableFilter>(
          guardedValue,
          (value) => GetLocalGatewayRouteTableFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
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
