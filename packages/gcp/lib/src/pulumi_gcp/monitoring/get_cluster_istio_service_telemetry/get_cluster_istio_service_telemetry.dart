// ignore_for_file: unused_element, unnecessary_cast

class GetClusterIstioServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  GetClusterIstioServiceTelemetry({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceName'] = resourceName;
    return map;
  }

  factory GetClusterIstioServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceTelemetry(
      resourceName: map['resourceName'] as String,
    );
  }
}
