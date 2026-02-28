// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_telemetry_type.dart';

/// Telemetry integration for the cluster.
class ClusterTelemetry {
  /// Type of the integration.
  final ClusterTelemetryType? type;

  /// Creates a new [ClusterTelemetry].
  /// [type] Type of the integration.
  ClusterTelemetry({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory ClusterTelemetry.fromMap(Map<String, dynamic> map) {
    return ClusterTelemetry(
      type: map['type'] == null
          ? null
          : ClusterTelemetryType.fromValue(map['type'] as String),
    );
  }
}
