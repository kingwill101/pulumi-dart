// ignore_for_file: unused_element, unnecessary_cast

class ApplicationUrlDispatchRulesDispatchRule {
  /// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".
  /// Defaults to matching all domains: "*".
  final String? domain;

  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.
  /// The sum of the lengths of the domain and path may not exceed 100 characters.
  final String path;

  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.
  /// The sum of the lengths of the domain and path may not exceed 100 characters.
  final String service;

  /// Creates a new [ApplicationUrlDispatchRulesDispatchRule].
  /// [domain] Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".
  /// [path] Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.
  /// [service] Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.
  ApplicationUrlDispatchRulesDispatchRule({
    this.domain,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'path': path,
      'service': service,
    };
  }

  factory ApplicationUrlDispatchRulesDispatchRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationUrlDispatchRulesDispatchRule(
      domain: map['domain'] == null ? null : map['domain'] as String,
      path: map['path'] as String,
      service: map['service'] as String,
    );
  }
}
