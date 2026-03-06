// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies {
  /// List of item names, such as cookies, headers, or query strings.
  final pulumi.Input<List<String>>? items;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies].
  /// [items] List of item names, such as cookies, headers, or query strings.
  const CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookies(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

