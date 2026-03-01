// ignore_for_file: unused_element, unnecessary_cast


/// The share mount point.
class MountPointMap {
  /// ID of the share mounted to the role VM.
  final String shareId;

  /// Creates a new [MountPointMap].
  /// [shareId] ID of the share mounted to the role VM.
  MountPointMap({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory MountPointMap.fromMap(Map<String, dynamic> map) {
    return MountPointMap(
      shareId: map['shareId'] as String,
    );
  }
}

