// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigResponse2 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool enabled;

  GcpFilestoreCsiDriverConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcpFilestoreCsiDriverConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
