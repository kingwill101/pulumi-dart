// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_filter.dart';

/// Result data returned by getRouteTable.
class GetRouteTableResult {
  /// EC2 Transit Gateway Route Table ARN.
  final String? arn;
  /// Boolean whether this is the default association route table for the EC2 Transit Gateway
  final bool? defaultAssociationRouteTable;
  /// Boolean whether this is the default propagation route table for the EC2 Transit Gateway
  final bool? defaultPropagationRouteTable;
  final List<GetRouteTableFilter>? filters;
  /// EC2 Transit Gateway Route Table identifier
  final String? id;
  final String? region;
  /// Key-value tags for the EC2 Transit Gateway Route Table
  final Map<String, String>? tags;
  /// EC2 Transit Gateway identifier
  final String? transitGatewayId;

  /// Creates a new [GetRouteTableResult].
  /// [arn] EC2 Transit Gateway Route Table ARN.
  /// [defaultAssociationRouteTable] Boolean whether this is the default association route table for the EC2 Transit Gateway
  /// [defaultPropagationRouteTable] Boolean whether this is the default propagation route table for the EC2 Transit Gateway
  /// [filters] Optional.
  /// [id] EC2 Transit Gateway Route Table identifier
  /// [region] Optional.
  /// [tags] Key-value tags for the EC2 Transit Gateway Route Table
  /// [transitGatewayId] EC2 Transit Gateway identifier
  const GetRouteTableResult({
    this.arn,
    this.defaultAssociationRouteTable,
    this.defaultPropagationRouteTable,
    this.filters,
    this.id,
    this.region,
    this.tags,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultAssociationRouteTable': ?defaultAssociationRouteTable,
      'defaultPropagationRouteTable': ?defaultPropagationRouteTable,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory GetRouteTableResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultAssociationRouteTable: (() { final guardedValue = map['defaultAssociationRouteTable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultPropagationRouteTable: (() { final guardedValue = map['defaultPropagationRouteTable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableFilter>(guardedValue, (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
