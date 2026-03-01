// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfigResponse {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GcsFuseCsiDriverConfigResponse].
  /// [enabled] Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  GcsFuseCsiDriverConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GcsFuseCsiDriverConfigResponse.fromMap(Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfigResponse(enabled: map['enabled'] as bool);
  }
}
