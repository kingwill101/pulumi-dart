// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_association.dart';
import 'get_route_table_filter.dart';
import 'get_route_table_route.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// ARN of the route table.
  final String arn;
  /// List of associations with attributes detailed below.
  final List<GetRouteTableAssociation> associations;
  final List<GetRouteTableFilter>? filters;
  /// Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway.
  final String gatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ID of the AWS account that owns the route table.
  final String ownerId;
  final String region;
  /// Route Table ID.
  final String routeTableId;
  /// List of routes with attributes detailed below.
  final List<GetRouteTableRoute> routes;
  /// Subnet ID. Only set when associated with a subnet.
  final String subnetId;
  final Map<String, String> tags;
  final String vpcId;

  /// Creates a new [GetRouteTableResult].
  /// [arn] ARN of the route table.
  /// [associations] List of associations with attributes detailed below.
  /// [filters] Optional.
  /// [gatewayId] Gateway ID. Only set when associated with an Internet Gateway or Virtual Private Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ownerId] ID of the AWS account that owns the route table.
  /// [region] Required.
  /// [routeTableId] Route Table ID.
  /// [routes] List of routes with attributes detailed below.
  /// [subnetId] Subnet ID. Only set when associated with a subnet.
  /// [tags] Required.
  /// [vpcId] Required.
  const GetRouteTableResult({
    required this.arn,
    required this.associations,
    this.filters,
    required this.gatewayId,
    required this.id,
    required this.ownerId,
    required this.region,
    required this.routeTableId,
    required this.routes,
    required this.subnetId,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'associations': pulumi.Input.encodeList<GetRouteTableAssociation, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'gatewayId': gatewayId,
      'id': id,
      'ownerId': ownerId,
      'region': region,
      'routeTableId': routeTableId,
      'routes': pulumi.Input.encodeList<GetRouteTableRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'subnetId': subnetId,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      arn: map['arn'] as String,
      associations: pulumi.Input.decodeList<GetRouteTableAssociation>(map['associations']!, (value) => GetRouteTableAssociation.fromMap((value as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableFilter>(guardedValue, (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      routes: pulumi.Input.decodeList<GetRouteTableRoute>(map['routes']!, (value) => GetRouteTableRoute.fromMap((value as Map).cast<String, dynamic>())),
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
