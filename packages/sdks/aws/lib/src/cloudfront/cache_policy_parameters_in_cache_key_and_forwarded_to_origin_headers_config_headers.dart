// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders {
  /// List of item names, such as cookies, headers, or query strings.
  final pulumi.Input<List<String>>? items;

  /// Creates a new [CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders].
  /// [items] List of item names, such as cookies, headers, or query strings.
  const CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
    };
  }

  factory CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders.fromMap(Map<String, dynamic> map) {
    return CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeaders(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

