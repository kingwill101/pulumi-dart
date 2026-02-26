// ignore_for_file: unused_element, unnecessary_cast

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRuleResponse2 {
  /// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  final String domain;

  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  final String path;

  /// Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  final String service;

  UrlDispatchRuleResponse2({
    required this.domain,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['path'] = path;
    map['service'] = service;
    return map;
  }

  factory UrlDispatchRuleResponse2.fromMap(Map<String, dynamic> map) {
    return UrlDispatchRuleResponse2(
      domain: map['domain'] as String,
      path: map['path'] as String,
      service: map['service'] as String,
    );
  }
}
