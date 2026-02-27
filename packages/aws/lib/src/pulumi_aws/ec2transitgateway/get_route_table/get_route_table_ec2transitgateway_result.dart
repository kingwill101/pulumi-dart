// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_table_filter/get_route_table_filter_ec2transitgateway.dart';

/// Result data returned by getRouteTable.
class GetRouteTableEc2transitgatewayResult {
  /// EC2 Transit Gateway Route Table ARN.
  final String arn;

  /// Boolean whether this is the default association route table for the EC2 Transit Gateway
  final bool defaultAssociationRouteTable;

  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway
  final bool defaultPropagationRouteTable;
  final List<GetRouteTableFilterEc2transitgateway>? filters;

  /// EC2 Transit Gateway Route Table identifier
  final String id;
  final String region;

  /// Key-value tags for the EC2 Transit Gateway Route Table
  final Map<String, String> tags;

  /// EC2 Transit Gateway identifier
  final String transitGatewayId;

  GetRouteTableEc2transitgatewayResult({
    required this.arn,
    required this.defaultAssociationRouteTable,
    required this.defaultPropagationRouteTable,
    this.filters,
    required this.id,
    required this.region,
    required this.tags,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['defaultAssociationRouteTable'] = defaultAssociationRouteTable;
    map['defaultPropagationRouteTable'] = defaultPropagationRouteTable;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          GetRouteTableFilterEc2transitgateway,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    map['tags'] = tags;
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory GetRouteTableEc2transitgatewayResult.fromMap(
      Map<String, dynamic> map) {
    return GetRouteTableEc2transitgatewayResult(
      arn: map['arn'] as String,
      defaultAssociationRouteTable: map['defaultAssociationRouteTable'] as bool,
      defaultPropagationRouteTable: map['defaultPropagationRouteTable'] as bool,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetRouteTableFilterEc2transitgateway>(
              map['filters'],
              (value) => GetRouteTableFilterEc2transitgateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
