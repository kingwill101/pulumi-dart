// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigSecondaryBootDisk {
  /// Path to disk image to create the secondary boot disk from. After using the [gke-disk-image-builder](https://github.com/GoogleCloudPlatform/ai-on-gke/tree/main/tools/gke-disk-image-builder), this argument should be `global/images/DISK_IMAGE_NAME`.
  final String diskImage;

  /// Mode for how the secondary boot disk is used. An example mode is `CONTAINER_IMAGE_CACHE`.
  final String? mode;

  /// Creates a new [ClusterNodeConfigSecondaryBootDisk].
  /// [diskImage] Path to disk image to create the secondary boot disk from. After using the [gke-disk-image-builder](https://github.com/GoogleCloudPlatform/ai-on-gke/tree/main/tools/gke-disk-image-builder), this argument should be `global/images/DISK_IMAGE_NAME`.
  /// [mode] Mode for how the secondary boot disk is used. An example mode is `CONTAINER_IMAGE_CACHE`.
  ClusterNodeConfigSecondaryBootDisk({required this.diskImage, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskImage': diskImage, 'mode': ?mode};
  }

  factory ClusterNodeConfigSecondaryBootDisk.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigSecondaryBootDisk(
      diskImage: map['diskImage'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
