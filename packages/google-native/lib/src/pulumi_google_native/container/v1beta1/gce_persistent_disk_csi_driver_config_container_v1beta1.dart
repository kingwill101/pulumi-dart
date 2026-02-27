// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Compute Engine PD CSI driver.
class GcePersistentDiskCsiDriverConfigContainerV1beta1 {
  /// Whether the Compute Engine PD CSI driver is enabled for this cluster.
  final bool? enabled;

  GcePersistentDiskCsiDriverConfigContainerV1beta1({
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

  factory GcePersistentDiskCsiDriverConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GcePersistentDiskCsiDriverConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
