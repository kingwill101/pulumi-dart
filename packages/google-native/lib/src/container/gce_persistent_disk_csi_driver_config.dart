// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfig {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GcePersistentDiskCsiDriverConfig].
  /// [enabled] Whether the Compute Engine PD CSI driver is enabled for this cluster.
  GcePersistentDiskCsiDriverConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory GcePersistentDiskCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
