// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_access_point_root_directory_creation_permission.dart';

class GetFilesAccessPointRootDirectory {
  /// Permissions set when the root directory was created. See `creationPermissions` below.
  final pulumi.Input<List<GetFilesAccessPointRootDirectoryCreationPermission>>? creationPermissions;
  /// Root directory path.
  final pulumi.Input<String> path;

  /// Creates a new [GetFilesAccessPointRootDirectory].
  /// [creationPermissions] Permissions set when the root directory was created. See `creationPermissions` below.
  /// [path] Root directory path.
  const GetFilesAccessPointRootDirectory({
    this.creationPermissions,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationPermissions': ?pulumi.Input.mapOptionalInputValue<List<GetFilesAccessPointRootDirectoryCreationPermission>, List<Map<String, dynamic>>>(creationPermissions, (value) => pulumi.Input.encodeList<GetFilesAccessPointRootDirectoryCreationPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
    };
  }

  factory GetFilesAccessPointRootDirectory.fromMap(Map<String, dynamic> map) {
    return GetFilesAccessPointRootDirectory(
      creationPermissions: (() { final guardedValue = map['creationPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFilesAccessPointRootDirectoryCreationPermission>(guardedValue, (value) => GetFilesAccessPointRootDirectoryCreationPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
