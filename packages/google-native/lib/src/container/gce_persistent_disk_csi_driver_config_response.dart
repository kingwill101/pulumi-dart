// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfigResponse {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GcePersistentDiskCsiDriverConfigResponse].
  /// [enabled] Whether the Compute Engine PD CSI driver is enabled for this cluster.
  GcePersistentDiskCsiDriverConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GcePersistentDiskCsiDriverConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcePersistentDiskCsiDriverConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
