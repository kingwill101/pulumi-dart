// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pool_filter.dart';

/// Result data returned by getCoipPool.
class GetCoipPoolResult {
  /// ARN of the COIP pool
  final String? arn;
  final List<GetCoipPoolFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? localGatewayRouteTableId;
  /// Set of CIDR blocks in pool
  final List<String>? poolCidrs;
  final String? poolId;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetCoipPoolResult].
  /// [arn] ARN of the COIP pool
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [localGatewayRouteTableId] Optional.
  /// [poolCidrs] Set of CIDR blocks in pool
  /// [poolId] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  const GetCoipPoolResult({
    this.arn,
    this.filters,
    this.id,
    this.localGatewayRouteTableId,
    this.poolCidrs,
    this.poolId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoipPoolFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'poolCidrs': ?poolCidrs,
      'poolId': ?poolId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetCoipPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoipPoolFilter>(guardedValue, (value) => GetCoipPoolFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolCidrs: (() { final guardedValue = map['poolCidrs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
