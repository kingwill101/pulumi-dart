// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfigResponseContainerV1beta1 {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final bool enabled;

  GcsFuseCsiDriverConfigResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GcsFuseCsiDriverConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GcsFuseCsiDriverConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
