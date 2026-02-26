// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfig2 {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final bool? enabled;

  GcsFuseCsiDriverConfig2({
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

  factory GcsFuseCsiDriverConfig2.fromMap(Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
