// ignore_for_file: unused_element, unnecessary_cast

class GetIstioCanonicalServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  GetIstioCanonicalServiceTelemetry({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceName'] = resourceName;
    return map;
  }

  factory GetIstioCanonicalServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceTelemetry(
      resourceName: map['resourceName'] as String,
    );
  }
}
