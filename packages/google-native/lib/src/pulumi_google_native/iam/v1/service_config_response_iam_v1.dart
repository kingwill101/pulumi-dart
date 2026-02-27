// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a service.
class ServiceConfigResponseIamV1 {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final String domain;

  ServiceConfigResponseIamV1({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    return map;
  }

  factory ServiceConfigResponseIamV1.fromMap(Map<String, dynamic> map) {
    return ServiceConfigResponseIamV1(
      domain: map['domain'] as String,
    );
  }
}
