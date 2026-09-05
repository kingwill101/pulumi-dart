// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pool_filter.dart';

/// {@template pulumi_ec2_get_coip_pool_get_coip_pool_args_doc}
/// Arguments for getCoipPool.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_coip_pool_get_coip_pool_args_doc}
class GetCoipPoolArgs {
  final pulumi.Input<List<GetCoipPoolFilter>?>? filters;
  /// Local Gateway Route Table Id assigned to desired COIP Pool
  final pulumi.Input<String?>? localGatewayRouteTableId;
  /// ID of the specific COIP Pool to retrieve.
  final pulumi.Input<String?>? poolId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired COIP Pool.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetCoipPoolArgs].
  /// [filters] Optional.
  /// [localGatewayRouteTableId] Local Gateway Route Table Id assigned to desired COIP Pool
  /// [poolId] ID of the specific COIP Pool to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  const GetCoipPoolArgs({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetCoipPoolFilter>(guardedValue, (value) => GetCoipPoolFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
