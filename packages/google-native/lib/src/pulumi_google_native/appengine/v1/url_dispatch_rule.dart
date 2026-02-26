// ignore_for_file: unused_element, unnecessary_cast

/// Rules to match an HTTP request and dispatch that request to a service.
class UrlDispatchRule {
  /// Domain name to match against. The wildcard "*" is supported if specified before a period: "*.".Defaults to matching all domains: "*".
  final String? domain;

  /// Pathname within the host. Must start with a "/". A single "*" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.
  final String? path;

  /// Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.
  final String? service;

  UrlDispatchRule({
    this.domain,
    this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory UrlDispatchRule.fromMap(Map<String, dynamic> map) {
    return UrlDispatchRule(
      domain: map['domain'] == null ? null : map['domain'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
