// ignore_for_file: unused_element, unnecessary_cast

import 'http_header_match.dart';

/// Specification of traffic destination attributes.
class Destination {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final List<String> hosts;

  /// Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  final HttpHeaderMatch? httpHeaderMatch;

  /// Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final List<String>? methods;

  /// List of destination ports to match. At least one port should match.
  final List<int> ports;

  /// Creates a new [Destination].
  /// [hosts] List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  /// [httpHeaderMatch] Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  /// [methods] Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  /// [ports] List of destination ports to match. At least one port should match.
  Destination({
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

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      hosts: (map['hosts'] as List).cast<String>(),
      httpHeaderMatch: map['httpHeaderMatch'] == null
          ? null
          : HttpHeaderMatch.fromMap(
              (map['httpHeaderMatch'] as Map).cast<String, dynamic>()),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
