// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigSecondaryBootDisk {
  /// Disk image to create the secondary boot disk from
  final String diskImage;

  /// Mode for how the secondary boot disk is used.
  final String? mode;

  /// Creates a new [NodePoolNodeConfigSecondaryBootDisk].
  /// [diskImage] Disk image to create the secondary boot disk from
  /// [mode] Mode for how the secondary boot disk is used.
  NodePoolNodeConfigSecondaryBootDisk({required this.diskImage, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskImage': diskImage, 'mode': ?mode};
  }

  factory NodePoolNodeConfigSecondaryBootDisk.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigSecondaryBootDisk(
      diskImage: map['diskImage'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
