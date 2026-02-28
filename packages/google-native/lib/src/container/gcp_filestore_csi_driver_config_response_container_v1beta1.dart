// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigResponseContainerV1beta1 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigResponseContainerV1beta1].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  GcpFilestoreCsiDriverConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcpFilestoreCsiDriverConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
