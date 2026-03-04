// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_vsc_mount_point_vsc_mount_point_args_doc}
/// The set of arguments for VscMountPoint.
/// {@endtemplate}
/// {@macro pulumi_dfs_vsc_mount_point_vsc_mount_point_args_doc}
class VscMountPointArgs {
  /// Mount point alias prefix, which is used as the prefix for generating VSC mount point aliases.
  final pulumi.Input<String>? aliasPrefix;

  /// The description of the Mount point.  The length is 0 to 100 characters.
  final pulumi.Input<String>? description;

  /// The ID of the HDFS file system resource associated with the VSC mount point.
  final pulumi.Input<String> fileSystemId;

  /// Creates a new [VscMountPointArgs].
  /// [aliasPrefix] Mount point alias prefix, which is used as the prefix for generating VSC mount point aliases.
  /// [description] The description of the Mount point.  The length is 0 to 100 characters.
  /// [fileSystemId] The ID of the HDFS file system resource associated with the VSC mount point.
  VscMountPointArgs({
    this.aliasPrefix,
    this.description,
    required this.fileSystemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrefix': ?aliasPrefix,
      'description': ?description,
      'fileSystemId': fileSystemId,
    };
  }

  factory VscMountPointArgs.fromMap(Map<String, dynamic> map) {
    return VscMountPointArgs(
      aliasPrefix: (() {
        final guardedValue = map['aliasPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
    );
  }
}
