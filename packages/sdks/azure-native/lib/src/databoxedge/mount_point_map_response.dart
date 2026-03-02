// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The share mount point.
class MountPointMapResponse {
  /// Mount point for the share.
  final pulumi.Input<String> mountPoint;
  /// Mounting type.
  final pulumi.Input<String> mountType;
  /// ID of the role to which share is mounted.
  final pulumi.Input<String> roleId;
  /// Role type.
  final pulumi.Input<String> roleType;
  /// ID of the share mounted to the role VM.
  final pulumi.Input<String> shareId;

  /// Creates a new [MountPointMapResponse].
  /// [mountPoint] Mount point for the share.
  /// [mountType] Mounting type.
  /// [roleId] ID of the role to which share is mounted.
  /// [roleType] Role type.
  /// [shareId] ID of the share mounted to the role VM.
  MountPointMapResponse({
    required this.mountPoint,
    required this.mountType,
    required this.roleId,
    required this.roleType,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoint': mountPoint,
      'mountType': mountType,
      'roleId': roleId,
      'roleType': roleType,
      'shareId': shareId,
    };
  }

  factory MountPointMapResponse.fromMap(Map<String, dynamic> map) {
    return MountPointMapResponse(
      mountPoint: (map['mountPoint'] as String).input(),
      mountType: (map['mountType'] as String).input(),
      roleId: (map['roleId'] as String).input(),
      roleType: (map['roleType'] as String).input(),
      shareId: (map['shareId'] as String).input(),
    );
  }
}

