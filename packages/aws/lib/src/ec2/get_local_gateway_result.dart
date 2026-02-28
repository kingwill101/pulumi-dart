// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_filter.dart';

/// Result data returned by getLocalGateway.
class GetLocalGatewayResult {
  final List<GetLocalGatewayFilter>? filters;
  final String id;
  /// ARN of Outpost
  final String outpostArn;
  /// AWS account identifier that owns the Local Gateway.
  final String ownerId;
  final String region;
  /// State of the local gateway.
  final String state;
  final Map<String, String> tags;

  /// Creates a new [GetLocalGatewayResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [outpostArn] ARN of Outpost
  /// [ownerId] AWS account identifier that owns the Local Gateway.
  /// [region] Required.
  /// [state] State of the local gateway.
  /// [tags] Required.
  GetLocalGatewayResult({
    this.filters,
    required this.id,
    required this.outpostArn,
    required this.ownerId,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetLocalGatewayFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'outpostArn': outpostArn,
      'ownerId': ownerId,
      'region': region,
      'state': state,
      'tags': tags,
    };
  }

  factory GetLocalGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLocalGatewayFilter>(map['filters'], (value) => GetLocalGatewayFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

