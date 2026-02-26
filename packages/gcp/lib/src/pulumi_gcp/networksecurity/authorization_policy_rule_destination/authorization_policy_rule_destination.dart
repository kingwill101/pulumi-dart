// ignore_for_file: unused_element, unnecessary_cast

import '../authorization_policy_rule_destination_http_header_match/authorization_policy_rule_destination_http_header_match.dart';

class AuthorizationPolicyRuleDestination {
  /// List of host names to match. Matched against the ":authority" header in http requests. At least one host should match. Each host can be an exact match, or a prefix match (example "mydomain.*") or a suffix match (example "*.myorg.com") or a presence (any) match "*".
  final List<String> hosts;

  /// Match against key:value pair in http header. Provides a flexible match based on HTTP headers, for potentially advanced use cases. At least one header should match.
  /// Avoid using header matches to make authorization decisions unless there is a strong guarantee that requests arrive through a trusted client or proxy.
  /// Structure is documented below.
  final AuthorizationPolicyRuleDestinationHttpHeaderMatch? httpHeaderMatch;

  /// A list of HTTP methods to match. At least one method should match. Should not be set for gRPC services.
  final List<String> methods;

  /// List of destination ports to match. At least one port should match.
  final List<int> ports;

  AuthorizationPolicyRuleDestination({
    required this.hosts,
    this.httpHeaderMatch,
    required this.methods,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hosts'] = hosts;
    final httpHeaderMatchValue = httpHeaderMatch;
    if (httpHeaderMatchValue != null) {
      map['httpHeaderMatch'] = httpHeaderMatchValue.toMap();
    }
    map['methods'] = methods;
    map['ports'] = ports;
    return map;
  }

  factory AuthorizationPolicyRuleDestination.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyRuleDestination(
      hosts: (map['hosts'] as List).cast<String>(),
      httpHeaderMatch: map['httpHeaderMatch'] == null
          ? null
          : AuthorizationPolicyRuleDestinationHttpHeaderMatch.fromMap(
              (map['httpHeaderMatch'] as Map).cast<String, dynamic>()),
      methods: (map['methods'] as List).cast<String>(),
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
