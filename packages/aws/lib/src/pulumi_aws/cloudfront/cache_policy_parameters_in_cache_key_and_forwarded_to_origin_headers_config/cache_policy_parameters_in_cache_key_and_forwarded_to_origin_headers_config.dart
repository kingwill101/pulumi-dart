// ignore_for_file: unused_element, unnecessary_cast

import '../cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_headers/cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_headers.dart';

class CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values for <span pulumi-lang-nodejs="`headerBehavior`" pulumi-lang-dotnet="`HeaderBehavior`" pulumi-lang-go="`headerBehavior`" pulumi-lang-python="`header_behavior`" pulumi-lang-yaml="`headerBehavior`" pulumi-lang-java="`headerBehavior`">`header_behavior`</span> are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span> and <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>.
  final String? headerBehavior;

  /// Object contains a list of header names. See Items for more information.
  final CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders?
      headers;

  CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    this.headerBehavior,
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerBehaviorValue = headerBehavior;
    if (headerBehaviorValue != null) {
      map['headerBehavior'] = headerBehaviorValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue.toMap();
    }
    return map;
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: map['headerBehavior'] == null
          ? null
          : map['headerBehavior'] as String,
      headers: map['headers'] == null
          ? null
          : CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders
              .fromMap((map['headers'] as Map).cast<String, dynamic>()),
    );
  }
}
