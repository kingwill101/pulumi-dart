// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_filter.dart';

/// Result data returned by getLocalGateway.
class GetLocalGatewayResult {
  final List<GetLocalGatewayFilter>? filters;
  final String? id;
  /// ARN of Outpost
  final String? outpostArn;
  /// AWS account identifier that owns the Local Gateway.
  final String? ownerId;
  final String? region;
  /// State of the local gateway.
  final String? state;
  final Map<String, String>? tags;

  /// Creates a new [GetLocalGatewayResult].
  /// [filters] Optional.
  /// [id] Optional.
  /// [outpostArn] ARN of Outpost
  /// [ownerId] AWS account identifier that owns the Local Gateway.
  /// [region] Optional.
  /// [state] State of the local gateway.
  /// [tags] Optional.
  const GetLocalGatewayResult({
    this.filters,
    this.id,
    this.outpostArn,
    this.ownerId,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalGatewayFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetLocalGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalGatewayFilter>(guardedValue, (value) => GetLocalGatewayFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
