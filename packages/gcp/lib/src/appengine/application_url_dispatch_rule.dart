// ignore_for_file: unused_element, unnecessary_cast

class ApplicationUrlDispatchRule {
  final String? domain;
  final String? path;
  final String? service;

  /// Creates a new [ApplicationUrlDispatchRule].
  /// [domain] Optional.
  /// [path] Optional.
  /// [service] Optional.
  ApplicationUrlDispatchRule({
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

  factory ApplicationUrlDispatchRule.fromMap(Map<String, dynamic> map) {
    return ApplicationUrlDispatchRule(
      domain: map['domain'] == null ? null : map['domain'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
