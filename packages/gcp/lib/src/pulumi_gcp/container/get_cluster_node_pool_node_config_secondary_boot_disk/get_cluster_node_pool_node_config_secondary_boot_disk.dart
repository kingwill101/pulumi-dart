// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigSecondaryBootDisk {
  /// Disk image to create the secondary boot disk from
  final String diskImage;

  /// Mode for how the secondary boot disk is used.
  final String mode;

  GetClusterNodePoolNodeConfigSecondaryBootDisk({
    required this.diskImage,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskImage'] = diskImage;
    map['mode'] = mode;
    return map;
  }

  factory GetClusterNodePoolNodeConfigSecondaryBootDisk.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigSecondaryBootDisk(
      diskImage: map['diskImage'] as String,
      mode: map['mode'] as String,
    );
  }
}
