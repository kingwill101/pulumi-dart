// ignore_for_file: unused_element, unnecessary_cast

import 'http_header_match_response4.dart';

/// Specification of traffic destination attributes.
class DestinationResponse4 {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final List<String> hosts;

  /// Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match. Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  final HttpHeaderMatchResponse4 httpHeaderMatch;

  /// Optional. A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final List<String> methods;

  /// List of destination ports to match. At least one port should match.
  final List<int> ports;

  DestinationResponse4({
    required this.hosts,
    required this.httpHeaderMatch,
    required this.methods,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hosts'] = hosts;
    map['httpHeaderMatch'] = httpHeaderMatch.toMap();
    map['methods'] = methods;
    map['ports'] = ports;
    return map;
  }

  factory DestinationResponse4.fromMap(Map<String, dynamic> map) {
    return DestinationResponse4(
      hosts: (map['hosts'] as List).cast<String>(),
      httpHeaderMatch: HttpHeaderMatchResponse4.fromMap(
          (map['httpHeaderMatch'] as Map).cast<String, dynamic>()),
      methods: (map['methods'] as List).cast<String>(),
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
