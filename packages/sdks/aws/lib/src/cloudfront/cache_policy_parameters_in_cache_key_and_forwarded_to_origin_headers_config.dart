// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_headers.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`.
  final pulumi.Input<String>? headerBehavior;
  /// Object contains a list of header names. See Items for more information.
  final pulumi.Input<CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders>? headers;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig].
  /// [headerBehavior] Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for `header_behavior` are `none` and `whitelist`.
  /// [headers] Object contains a list of header names. See Items for more information.
  CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerBehavior': ?headerBehavior,
      'headers': ?pulumi.Input.mapOptionalInputValue<CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders, Map<String, dynamic>>(headers, (value) => value.toMap()),
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: (() { final guardedValue = map['headerBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

