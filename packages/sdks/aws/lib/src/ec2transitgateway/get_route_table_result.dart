// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_filter.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// EC2 Transit Gateway Route Table ARN.
  final String arn;
  /// Boolean whether this is the default association route table for the EC2 Transit Gateway
  final bool defaultAssociationRouteTable;
  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway
  final bool defaultPropagationRouteTable;
  final List<GetRouteTableFilter>? filters;
  /// EC2 Transit Gateway Route Table identifier
  final String id;
  final String region;
  /// Key-value tags for the EC2 Transit Gateway Route Table
  final Map<String, String> tags;
  /// EC2 Transit Gateway identifier
  final String transitGatewayId;

  /// Creates a new [GetRouteTableResult].
  /// [arn] EC2 Transit Gateway Route Table ARN.
  /// [defaultAssociationRouteTable] Boolean whether this is the default association route table for the EC2 Transit Gateway
  /// [defaultPropagationRouteTable] Boolean whether this is the default propagation route table for the EC2 Transit Gateway
  /// [filters] Optional.
  /// [id] EC2 Transit Gateway Route Table identifier
  /// [region] Required.
  /// [tags] Key-value tags for the EC2 Transit Gateway Route Table
  /// [transitGatewayId] EC2 Transit Gateway identifier
  const GetRouteTableResult({
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
    return <String, dynamic>{
      'arn': arn,
      'defaultAssociationRouteTable': defaultAssociationRouteTable,
      'defaultPropagationRouteTable': defaultPropagationRouteTable,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'tags': tags,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      arn: map['arn'] as String,
      defaultAssociationRouteTable: map['defaultAssociationRouteTable'] as bool,
      defaultPropagationRouteTable: map['defaultPropagationRouteTable'] as bool,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableFilter>(guardedValue, (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}

