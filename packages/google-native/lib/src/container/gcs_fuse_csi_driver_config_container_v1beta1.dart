// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the Cloud Storage Fuse CSI driver.
class GcsFuseCsiDriverConfigContainerV1beta1 {
  /// Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [GcsFuseCsiDriverConfigContainerV1beta1].
  /// [enabled] Whether the Cloud Storage Fuse CSI driver is enabled for this cluster.
  GcsFuseCsiDriverConfigContainerV1beta1({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory GcsFuseCsiDriverConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcsFuseCsiDriverConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
