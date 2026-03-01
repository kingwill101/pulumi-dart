// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for a custom domain.
class DomainConfigResponse {
  /// Immutable. Domain used by Workstations for HTTP ingress.
  final String domain;

  /// Creates a new [DomainConfigResponse].
  /// [domain] Immutable. Domain used by Workstations for HTTP ingress.
  DomainConfigResponse({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory DomainConfigResponse.fromMap(Map<String, dynamic> map) {
    return DomainConfigResponse(domain: map['domain'] as String);
  }
}
