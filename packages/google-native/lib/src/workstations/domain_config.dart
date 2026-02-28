// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for a custom domain.
class DomainConfig {
  /// Immutable. Domain used by Workstations for HTTP ingress.
  final String? domain;

  /// Creates a new [DomainConfig].
  /// [domain] Immutable. Domain used by Workstations for HTTP ingress.
  DomainConfig({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    return map;
  }

  factory DomainConfig.fromMap(Map<String, dynamic> map) {
    return DomainConfig(
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}
