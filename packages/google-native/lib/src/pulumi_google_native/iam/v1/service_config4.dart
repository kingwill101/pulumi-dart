// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a service.
class ServiceConfig4 {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final String? domain;

  ServiceConfig4({
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

  factory ServiceConfig4.fromMap(Map<String, dynamic> map) {
    return ServiceConfig4(
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}
