// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pool_filter.dart';

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

  /// Creates a new [GetCoipPoolResult].
  /// [arn] ARN of the COIP pool
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localGatewayRouteTableId] Required.
  /// [poolCidrs] Set of CIDR blocks in pool
  /// [poolId] Required.
  /// [region] Required.
  /// [tags] Required.
  const GetCoipPoolResult({
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
    return <String, dynamic>{
      'arn': arn,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoipPoolFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'localGatewayRouteTableId': localGatewayRouteTableId,
      'poolCidrs': poolCidrs,
      'poolId': poolId,
      'region': region,
      'tags': tags,
    };
  }

  factory GetCoipPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolResult(
      arn: map['arn'] as String,
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoipPoolFilter>(guardedValue, (value) => GetCoipPoolFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      localGatewayRouteTableId: map['localGatewayRouteTableId'] as String,
      poolCidrs: (map['poolCidrs'] as List).cast<String>(),
      poolId: map['poolId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
