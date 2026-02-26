// ignore_for_file: unused_element, unnecessary_cast

class GetMeshIstioServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  GetMeshIstioServiceTelemetry({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceName'] = resourceName;
    return map;
  }

  factory GetMeshIstioServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetMeshIstioServiceTelemetry(
      resourceName: map['resourceName'] as String,
    );
  }
}
