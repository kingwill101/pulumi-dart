// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_filter.dart';

/// {@template pulumi_ec2_get_route_table_get_route_table_args_doc}
/// Arguments for getRouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_route_table_get_route_table_args_doc}
class GetRouteTableArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetRouteTableFilter>>? filters;
  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final pulumi.Input<String>? gatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the specific Route Table to retrieve.
  final pulumi.Input<String>? routeTableId;
  /// ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  final pulumi.Input<String>? subnetId;
  /// Map of tags, each pair of which must exactly match a pair on the desired Route Table.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the VPC that the desired Route Table belongs to.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetRouteTableArgs].
  /// [filters] Configuration block. Detailed below.
  /// [gatewayId] ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] ID of the specific Route Table to retrieve.
  /// [subnetId] ID of a Subnet which is connected to the Route Table (not exported if not passed as a parameter).
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Route Table.
  /// [vpcId] ID of the VPC that the desired Route Table belongs to.
  const GetRouteTableArgs({
    this.filters,
    this.gatewayId,
    this.region,
    this.routeTableId,
    this.subnetId,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRouteTableFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRouteTableFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayId': ?gatewayId,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTableArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteTableFilter>(guardedValue, (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

