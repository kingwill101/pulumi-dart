// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies {
  /// List of item names, such as cookies, headers, or query strings.
  final pulumi.Input<List<String>>? items;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies].
  /// [items] List of item names, such as cookies, headers, or query strings.
  CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies(
      items: map['items'] == null ? null : ((map['items'] as List).cast<String>()).input(),
    );
  }
}

