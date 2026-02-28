// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_route_table_filter.dart';

/// {@template pulumi_ec2_get_local_gateway_route_table_get_local_gateway_route_table_args_doc}
/// Arguments for getLocalGatewayRouteTable.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_local_gateway_route_table_get_local_gateway_route_table_args_doc}
class GetLocalGatewayRouteTableArgs {
  final pulumi.Input<List<GetLocalGatewayRouteTableFilter>>? filters;
  /// ID of the specific local gateway route table to retrieve.
  final pulumi.Input<String>? localGatewayId;
  /// Local Gateway Route Table Id assigned to desired local gateway route table
  final pulumi.Input<String>? localGatewayRouteTableId;
  /// ARN of the Outpost the local gateway route table is associated with.
  final pulumi.Input<String>? outpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the local gateway route table.
  final pulumi.Input<String>? state;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired local gateway route table.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Local Gateway Route Tables in the current region. The given filters must match exactly one
  /// Local Gateway Route Table whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLocalGatewayRouteTableArgs].
  /// [filters] Optional.
  /// [localGatewayId] ID of the specific local gateway route table to retrieve.
  /// [localGatewayRouteTableId] Local Gateway Route Table Id assigned to desired local gateway route table
  /// [outpostArn] ARN of the Outpost the local gateway route table is associated with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the local gateway route table.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetLocalGatewayRouteTableArgs({
    List<GetLocalGatewayRouteTableFilter>? filters,
    String? localGatewayId,
    String? localGatewayRouteTableId,
    String? outpostArn,
    String? region,
    String? state,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetLocalGatewayRouteTableFilter>>(filters),
      localGatewayId = pulumi.Input.asOptionalInput<String>(localGatewayId),
      localGatewayRouteTableId = pulumi.Input.asOptionalInput<String>(localGatewayRouteTableId),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetLocalGatewayRouteTableFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetLocalGatewayRouteTableFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localGatewayId': ?localGatewayId,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'outpostArn': ?outpostArn,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayRouteTableArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayRouteTableArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLocalGatewayRouteTableFilter>(map['filters'], (value) => GetLocalGatewayRouteTableFilter.fromMap((value as Map).cast<String, dynamic>())),
      localGatewayId: map['localGatewayId'] == null ? null : map['localGatewayId'] as String,
      localGatewayRouteTableId: map['localGatewayRouteTableId'] == null ? null : map['localGatewayRouteTableId'] as String,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

