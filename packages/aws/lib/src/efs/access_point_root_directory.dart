// ignore_for_file: unused_element, unnecessary_cast

import 'access_point_root_directory_creation_info.dart';

class AccessPointRootDirectory {
  /// POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below.
  final AccessPointRootDirectoryCreationInfo? creationInfo;

  /// Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide `creation_info`.
  final String? path;

  /// Creates a new [AccessPointRootDirectory].
  /// [creationInfo] POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below.
  /// [path] Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide `creation_info`.
  AccessPointRootDirectory({this.creationInfo, this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationInfo': ?creationInfo == null ? null : creationInfo!.toMap(),
      'path': ?path,
    };
  }

  factory AccessPointRootDirectory.fromMap(Map<String, dynamic> map) {
    return AccessPointRootDirectory(
      creationInfo: map['creationInfo'] == null
          ? null
          : AccessPointRootDirectoryCreationInfo.fromMap(
              (map['creationInfo'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
