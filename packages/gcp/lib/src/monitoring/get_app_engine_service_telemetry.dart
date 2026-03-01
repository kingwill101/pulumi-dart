// ignore_for_file: unused_element, unnecessary_cast


class GetAppEngineServiceTelemetry {
  /// The full name of the resource that defines this service.
  /// Formatted as described in
  /// https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  /// Creates a new [GetAppEngineServiceTelemetry].
  /// [resourceName] The full name of the resource that defines this service.
  GetAppEngineServiceTelemetry({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceName': resourceName,
    };
  }

  factory GetAppEngineServiceTelemetry.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceTelemetry(
      resourceName: map['resourceName'] as String,
    );
  }
}

