// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigSecondaryBootDisk {
  /// Disk image to create the secondary boot disk from
  final String diskImage;

  /// Mode for how the secondary boot disk is used.
  final String mode;

  /// Creates a new [GetClusterNodeConfigSecondaryBootDisk].
  /// [diskImage] Disk image to create the secondary boot disk from
  /// [mode] Mode for how the secondary boot disk is used.
  GetClusterNodeConfigSecondaryBootDisk({
    required this.diskImage,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskImage'] = diskImage;
    map['mode'] = mode;
    return map;
  }

  factory GetClusterNodeConfigSecondaryBootDisk.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigSecondaryBootDisk(
      diskImage: map['diskImage'] as String,
      mode: map['mode'] as String,
    );
  }
}
