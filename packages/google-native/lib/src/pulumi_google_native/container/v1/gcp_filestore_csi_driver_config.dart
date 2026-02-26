// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfig {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool? enabled;

  GcpFilestoreCsiDriverConfig({
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

  factory GcpFilestoreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
