// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The share mount point.
class MountPointMap {
  /// ID of the share mounted to the role VM.
  final pulumi.Input<String> shareId;

  /// Creates a new [MountPointMap].
  /// [shareId] ID of the share mounted to the role VM.
  const MountPointMap({
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareId': shareId,
    };
  }

  factory MountPointMap.fromMap(Map<String, dynamic> map) {
    return MountPointMap(
      shareId: pulumi.Input.fromValue(map['shareId'] as String),
    );
  }
}

