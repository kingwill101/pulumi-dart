// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the GCP Filestore CSI driver.
class GcpFilestoreCsiDriverConfigContainerV1beta1 {
  /// Whether the GCP Filestore CSI driver is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GcpFilestoreCsiDriverConfigContainerV1beta1].
  /// [enabled] Whether the GCP Filestore CSI driver is enabled for this cluster.
  GcpFilestoreCsiDriverConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory GcpFilestoreCsiDriverConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return GcpFilestoreCsiDriverConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

