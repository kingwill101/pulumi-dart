// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_parameters_in_cache_key_and_forwarded_to_origin_headers_config_header.dart';

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig {
  /// Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`.
  final String headerBehavior;

  /// Object that contains a list of header names. See Items for more information.
  final List<
          GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>
      headers;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig].
  /// [headerBehavior] Determines whether any HTTP headers are included in the cache key and automatically included in requests that CloudFront sends to the origin. Valid values are `none`, `whitelist`.
  /// [headers] Object that contains a list of header names. See Items for more information.
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig({
    required this.headerBehavior,
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerBehavior'] = headerBehavior;
    map['headers'] = pulumi.Input.encodeList<
        GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig(
      headerBehavior: map['headerBehavior'] as String,
      headers: pulumi.Input.decodeList<
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader>(
          map['headers'],
          (value) =>
              GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
