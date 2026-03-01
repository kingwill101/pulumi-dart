// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigResponse {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigResponse].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  GcpFilestoreCsiDriverConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GcpFilestoreCsiDriverConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcpFilestoreCsiDriverConfigResponse(enabled: map['enabled'] as bool);
  }
}
