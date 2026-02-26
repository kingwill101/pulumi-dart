// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_header/get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_header.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>.
  final String headerBehavior;

  /// Object that contains a list of header names. See Items for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>
      headers;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    required this.headerBehavior,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerBehavior'] = headerBehavior;
    map['headers'] = Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: map['headerBehavior'] as String,
      headers: Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>(
          map['headers'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
