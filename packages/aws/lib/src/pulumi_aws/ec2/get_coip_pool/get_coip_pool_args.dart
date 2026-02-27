// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_coip_pool_filter/get_coip_pool_filter.dart';

/// Arguments for getCoipPool.
class GetCoipPoolArgs {
  final Input<List<GetCoipPoolFilter>>? filters;

  /// Local Gateway Route Table Id assigned to desired COIP Pool
  final Input<String>? localGatewayRouteTableId;

  /// ID of the specific COIP Pool to retrieve.
  final Input<String>? poolId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired COIP Pool.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final Input<Map<String, String>>? tags;

  GetCoipPoolArgs({
    this.filters,
    this.localGatewayRouteTableId,
    this.poolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetCoipPoolFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetCoipPoolFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final localGatewayRouteTableIdValue = localGatewayRouteTableId;
    if (localGatewayRouteTableIdValue != null) {
      map['localGatewayRouteTableId'] = localGatewayRouteTableIdValue;
    }
    final poolIdValue = poolId;
    if (poolIdValue != null) {
      map['poolId'] = poolIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetCoipPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolArgs(
      filters: Input.asOptionalInput<List<GetCoipPoolFilter>>(map['filters']),
      localGatewayRouteTableId:
          Input.asOptionalInput<String>(map['localGatewayRouteTableId']),
      poolId: Input.asOptionalInput<String>(map['poolId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
