// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfig2 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool? enabled;

  GcpFilestoreCsiDriverConfig2({
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

  factory GcpFilestoreCsiDriverConfig2.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
