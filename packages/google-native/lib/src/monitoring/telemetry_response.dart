// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for how to query telemetry on a Service.
class TelemetryResponse {
  /// The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  /// Creates a new [TelemetryResponse].
  /// [resourceName] The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  TelemetryResponse({required this.resourceName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceName': resourceName};
  }

  factory TelemetryResponse.fromMap(Map<String, dynamic> map) {
    return TelemetryResponse(resourceName: map['resourceName'] as String);
  }
}
