// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_coip_pool_filter/get_coip_pool_filter.dart';

/// Result data returned by getCoipPool.
class GetCoipPoolResult {
  /// ARN of the COIP pool
  final String arn;
  final List<GetCoipPoolFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String localGatewayRouteTableId;

  /// Set of CIDR blocks in pool
  final List<String> poolCidrs;
  final String poolId;
  final String region;
  final Map<String, String> tags;

  GetCoipPoolResult({
    required this.arn,
    this.filters,
    required this.id,
    required this.localGatewayRouteTableId,
    required this.poolCidrs,
    required this.poolId,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetCoipPoolFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['localGatewayRouteTableId'] = localGatewayRouteTableId;
    map['poolCidrs'] = poolCidrs;
    map['poolId'] = poolId;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetCoipPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolResult(
      arn: map['arn'] as String,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetCoipPoolFilter>(
              map['filters'],
              (value) => GetCoipPoolFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      localGatewayRouteTableId: map['localGatewayRouteTableId'] as String,
      poolCidrs: (map['poolCidrs'] as List).cast<String>(),
      poolId: map['poolId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
