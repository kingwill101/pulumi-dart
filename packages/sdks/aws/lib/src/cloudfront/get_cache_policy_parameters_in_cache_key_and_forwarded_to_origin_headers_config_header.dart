// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader {
  /// List of item names (`cookies`, `headers`, or `query_strings`).
  final pulumi.Input<List<String>> items;

  /// Creates a new [GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader].
  /// [items] List of item names (`cookies`, `headers`, or `query_strings`).
  GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader.fromMap(Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeader(
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
    );
  }
}

