// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_local_gateway_filter/get_local_gateway_filter.dart';

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
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetLocalGatewayFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['outpostArn'] = outpostArn;
    map['ownerId'] = ownerId;
    map['region'] = region;
    map['state'] = state;
    map['tags'] = tags;
    return map;
  }

  factory GetLocalGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetLocalGatewayFilter>(
              map['filters'],
              (value) => GetLocalGatewayFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      outpostArn: map['outpostArn'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
