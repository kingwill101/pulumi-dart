// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pool_filter.dart';

/// {@template pulumi_ec2_get_coip_pool_get_coip_pool_args_doc}
/// Arguments for getCoipPool.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_coip_pool_get_coip_pool_args_doc}
class GetCoipPoolArgs {
  final pulumi.Input<List<GetCoipPoolFilter>>? filters;
  /// Local Gateway Route Table Id assigned to desired COIP Pool
  final pulumi.Input<String>? localGatewayRouteTableId;
  /// ID of the specific COIP Pool to retrieve.
  final pulumi.Input<String>? poolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired COIP Pool.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCoipPoolArgs].
  /// [filters] Optional.
  /// [localGatewayRouteTableId] Local Gateway Route Table Id assigned to desired COIP Pool
  /// [poolId] ID of the specific COIP Pool to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetCoipPoolArgs({
    this.filters,
    this.localGatewayRouteTableId,
    this.poolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetCoipPoolFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetCoipPoolFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'poolId': ?poolId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetCoipPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetCoipPoolFilter>(map['filters'], (value) => GetCoipPoolFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localGatewayRouteTableId: map['localGatewayRouteTableId'] == null ? null : (map['localGatewayRouteTableId'] as String).input(),
      poolId: map['poolId'] == null ? null : (map['poolId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

