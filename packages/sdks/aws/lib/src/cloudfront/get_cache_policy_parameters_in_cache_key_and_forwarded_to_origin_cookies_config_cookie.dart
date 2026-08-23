// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie {
  /// List of item names (`cookies`, `headers`, or `queryStrings`).
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie].
  /// [items] List of item names (`cookies`, `headers`, or `queryStrings`).
  const GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookie(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}
