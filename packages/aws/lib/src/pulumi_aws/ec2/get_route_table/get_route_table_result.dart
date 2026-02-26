// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_association/get_route_table_association.dart';
import '../get_route_table_filter/get_route_table_filter.dart';
import '../get_route_table_route/get_route_table_route.dart';

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

  GetRouteTableResult({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associations'] =
        Input.encodeList<GetRouteTableAssociation, Map<String, dynamic>>(
            associations, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['gatewayId'] = gatewayId;
    map['id'] = id;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['routeTableId'] = routeTableId;
    map['routes'] = Input.encodeList<GetRouteTableRoute, Map<String, dynamic>>(
        routes, (value) => value.toMap());
    map['subnetId'] = subnetId;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      arn: map['arn'] as String,
      associations: Input.decodeList<GetRouteTableAssociation>(
          map['associations'],
          (value) => GetRouteTableAssociation.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetRouteTableFilter>(
              map['filters'],
              (value) => GetRouteTableFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      routes: Input.decodeList<GetRouteTableRoute>(
          map['routes'],
          (value) => GetRouteTableRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
