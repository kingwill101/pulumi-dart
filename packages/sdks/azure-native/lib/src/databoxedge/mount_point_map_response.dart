// ignore_for_file: unused_element, unnecessary_cast


/// The share mount point.
class MountPointMapResponse {
  /// Mount point for the share.
  final String mountPoint;
  /// Mounting type.
  final String mountType;
  /// ID of the role to which share is mounted.
  final String roleId;
  /// Role type.
  final String roleType;
  /// ID of the share mounted to the role VM.
  final String shareId;

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
      mountPoint: map['mountPoint'] as String,
      mountType: map['mountType'] as String,
      roleId: map['roleId'] as String,
      roleType: map['roleType'] as String,
      shareId: map['shareId'] as String,
    );
  }
}

