// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_table_filter.dart';

/// Result data returned by getLocalGatewayRouteTable.
class GetLocalGatewayRouteTableResult {
  final List<GetLocalGatewayRouteTableFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? localGatewayId;
  final String? localGatewayRouteTableId;
  final String? outpostArn;
  final String? region;
  final String? state;
  final Map<String, String>? tags;

  /// Creates a new [GetLocalGatewayRouteTableResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localGatewayId] Optional.
  /// [localGatewayRouteTableId] Optional.
  /// [outpostArn] Optional.
  /// [region] Optional.
  /// [state] Optional.
  /// [tags] Optional.
  const GetLocalGatewayRouteTableResult({
    this.filters,
    this.id,
    this.localGatewayId,
    this.localGatewayRouteTableId,
    this.outpostArn,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalGatewayRouteTableFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'localGatewayId': ?localGatewayId,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'outpostArn': ?outpostArn,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTableResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalGatewayRouteTableFilter>(guardedValue, (value) => GetLocalGatewayRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
