// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigSecondaryBootDisk {
  /// Disk image to create the secondary boot disk from
  final String diskImage;

  /// Mode for how the secondary boot disk is used.
  final String? mode;

  NodePoolNodeConfigSecondaryBootDisk({
    required this.diskImage,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskImage'] = diskImage;
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    return map;
  }

  factory NodePoolNodeConfigSecondaryBootDisk.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigSecondaryBootDisk(
      diskImage: map['diskImage'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
