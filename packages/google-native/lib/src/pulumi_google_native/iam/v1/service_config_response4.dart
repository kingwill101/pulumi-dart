// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a service.
class ServiceConfigResponse4 {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final String domain;

  ServiceConfigResponse4({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory ServiceConfigResponse4.fromMap(Map<String, dynamic> map) {
    return ServiceConfigResponse4(
      domain: map['domain'] as String,
    );
  }
}
