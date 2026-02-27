// ignore_for_file: unused_element, unnecessary_cast

import 'http_header_match_networksecurity_v1beta1.dart';

/// Specification of traffic destination attributes.
class DestinationNetworksecurityV1beta1 {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final List<String> hosts;

  /// Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  final HttpHeaderMatchNetworksecurityV1beta1? httpHeaderMatch;

  /// Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final List<String>? methods;

  /// List of destination ports to match. At least one port should match.
  final List<int> ports;

  DestinationNetworksecurityV1beta1({
    required this.hosts,
    this.httpHeaderMatch,
    this.methods,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hosts'] = hosts;
    final httpHeaderMatchValue = httpHeaderMatch;
    if (httpHeaderMatchValue != null) {
      map['httpHeaderMatch'] = httpHeaderMatchValue.toMap();
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    map['ports'] = ports;
    return map;
  }

  factory DestinationNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return DestinationNetworksecurityV1beta1(
      hosts: (map['hosts'] as List).cast<String>(),
      httpHeaderMatch: map['httpHeaderMatch'] == null
          ? null
          : HttpHeaderMatchNetworksecurityV1beta1.fromMap(
              (map['httpHeaderMatch'] as Map).cast<String, dynamic>()),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
