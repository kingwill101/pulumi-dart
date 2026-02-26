// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for how to query telemetry on a Service.
class TelemetryResponse {
  /// The full name of the resource that defines this service. Formatted as described in https://cloud.google.com/apis/design/resource_names.
  final String resourceName;

  TelemetryResponse({
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceName'] = resourceName;
    return map;
  }

  factory TelemetryResponse.fromMap(Map<String, dynamic> map) {
    return TelemetryResponse(
      resourceName: map['resourceName'] as String,
    );
  }
}
