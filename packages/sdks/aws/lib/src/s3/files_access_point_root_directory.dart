// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_access_point_root_directory_creation_permission.dart';

class FilesAccessPointRootDirectory {
  /// Permissions to set when creating the root directory. See `creationPermissions` below. Changing this value forces replacement.
  final pulumi.Input<List<FilesAccessPointRootDirectoryCreationPermission>>? creationPermissions;
  /// Root directory path. Changing this value forces replacement.
  final pulumi.Input<String>? path;

  /// Creates a new [FilesAccessPointRootDirectory].
  /// [creationPermissions] Permissions to set when creating the root directory. See `creationPermissions` below. Changing this value forces replacement.
  /// [path] Root directory path. Changing this value forces replacement.
  const FilesAccessPointRootDirectory({
    this.creationPermissions,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationPermissions': ?pulumi.Input.mapOptionalInputValue<List<FilesAccessPointRootDirectoryCreationPermission>, List<Map<String, dynamic>>>(creationPermissions, (value) => pulumi.Input.encodeList<FilesAccessPointRootDirectoryCreationPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
    };
  }

  factory FilesAccessPointRootDirectory.fromMap(Map<String, dynamic> map) {
    return FilesAccessPointRootDirectory(
      creationPermissions: (() { final guardedValue = map['creationPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilesAccessPointRootDirectoryCreationPermission>(guardedValue, (value) => FilesAccessPointRootDirectoryCreationPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
