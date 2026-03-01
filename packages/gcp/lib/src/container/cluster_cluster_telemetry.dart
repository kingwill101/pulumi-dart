// ignore_for_file: unused_element, unnecessary_cast


class ClusterClusterTelemetry {
  /// Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  /// `SYSTEM_ONLY` (Only system components are monitored and logged) is only available in GKE versions 1.15 and later.
  final String type;

  /// Creates a new [ClusterClusterTelemetry].
  /// [type] Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  ClusterClusterTelemetry({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ClusterClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return ClusterClusterTelemetry(
      type: map['type'] as String,
    );
  }
}

