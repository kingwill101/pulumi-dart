// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_header.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`.
  final pulumi.Input<String> headerBehavior;
  /// Object that contains a list of header names. See Items for more information.
  final pulumi.Input<List<GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>> headers;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig].
  /// [headerBehavior] Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`.
  /// [headers] Object that contains a list of header names. See Items for more information.
  const GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    required this.headerBehavior,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerBehavior': headerBehavior,
      'headers': pulumi.Input.mapInputValue<List<GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: pulumi.Input.fromValue(map['headerBehavior'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>(map['headers']!, (value) => GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

