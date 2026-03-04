// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString].
  /// [items] List of item names (`cookies`, `headers`, or `query_strings`).
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': items};
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}
