// ignore_for_file: unused_element, unnecessary_cast

/// Telemetry integration for the cluster.
class ClusterTelemetryResponse {
  /// Type of the integration.
  final String type;

  ClusterTelemetryResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ClusterTelemetryResponse.fromMap(Map<String, dynamic> map) {
    return ClusterTelemetryResponse(
      type: map['type'] as String,
    );
  }
}
