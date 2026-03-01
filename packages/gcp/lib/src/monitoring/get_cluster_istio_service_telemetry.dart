// ignore_for_file: unused_element, unnecessary_cast


class GetClusterIstioServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  /// Creates a new [GetClusterIstioServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  GetClusterIstioServiceTelemetry({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
    };
  }

  factory GetClusterIstioServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceTelemetry(
      resourceName: map['resourceName'] as String,
    );
  }
}

