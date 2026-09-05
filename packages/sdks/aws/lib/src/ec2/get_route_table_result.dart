// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_association.dart';
import 'get_route_table_filter.dart';
import 'get_route_table_route.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// ARN of the route table.
  final String? arn;
  /// List of associations with attributes detailed below.
  final List<GetRouteTableAssociation>? associations;
  final List<GetRouteTableFilter>? filters;
  /// Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway.
  final String? gatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ID of the AWS account that owns the route table.
  final String? ownerId;
  final String? region;
  /// Route Table ID.
  final String? routeTableId;
  /// List of routes with attributes detailed below.
  final List<GetRouteTableRoute>? routes;
  /// Subnet ID. Only set when associated with a subnet.
  final String? subnetId;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetRouteTableResult].
  /// [arn] ARN of the route table.
  /// [associations] List of associations with attributes detailed below.
  /// [filters] Optional.
  /// [gatewayId] Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ownerId] ID of the AWS account that owns the route table.
  /// [region] Optional.
  /// [routeTableId] Route Table ID.
  /// [routes] List of routes with attributes detailed below.
  /// [subnetId] Subnet ID. Only set when associated with a subnet.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetRouteTableResult({
    this.arn,
    this.associations,
    this.filters,
    this.gatewayId,
    this.id,
    this.ownerId,
    this.region,
    this.routeTableId,
    this.routes,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associations': ?(() { final guardedValue = associations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayId': ?gatewayId,
      'id': ?id,
      'ownerId': ?ownerId,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableAssociation>(guardedValue, (value) => GetRouteTableAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableFilter>(guardedValue, (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableRoute>(guardedValue, (value) => GetRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
