// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfigResponse2 {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final bool enabled;

  GcePersistentDiskCsiDriverConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcePersistentDiskCsiDriverConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
