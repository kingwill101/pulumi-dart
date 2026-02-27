// ignore_for_file: unused_element, unnecessary_cast

import '../access_point_root_directory_creation_info/access_point_root_directory_creation_info.dart';

class AccessPointRootDirectory {
  /// POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below.
  final AccessPointRootDirectoryCreationInfo? creationInfo;

  /// Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide `creation_info`.
  final String? path;

  AccessPointRootDirectory({
    this.creationInfo,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final creationInfoValue = creationInfo;
    if (creationInfoValue != null) {
      map['creationInfo'] = creationInfoValue.toMap();
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory AccessPointRootDirectory.fromMap(Map<String, dynamic> map) {
    return AccessPointRootDirectory(
      creationInfo: map['creationInfo'] == null
          ? null
          : AccessPointRootDirectoryCreationInfo.fromMap(
              (map['creationInfo'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
