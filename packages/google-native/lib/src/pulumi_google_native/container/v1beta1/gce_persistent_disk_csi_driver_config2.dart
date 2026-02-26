// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfig2 {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final bool? enabled;

  GcePersistentDiskCsiDriverConfig2({
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

  factory GcePersistentDiskCsiDriverConfig2.fromMap(Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
