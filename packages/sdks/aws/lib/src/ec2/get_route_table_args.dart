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
  GetRouteTableArgs({
    pulumi.Output<List<GetRouteTableFilter>>? filters,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetRouteTableFilter>>(filters),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetRouteTableFilter>>(pulumi.Input.decodeList<GetRouteTableFilter>(map['filters'], (value) => GetRouteTableFilter.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

