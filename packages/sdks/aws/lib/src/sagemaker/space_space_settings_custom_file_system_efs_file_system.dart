// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSettingsCustomFileSystemEfsFileSystem {
  /// The ID of your Amazon EFS file system.
  final pulumi.Input<String> fileSystemId;

  /// Creates a new [SpaceSpaceSettingsCustomFileSystemEfsFileSystem].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  const SpaceSpaceSettingsCustomFileSystemEfsFileSystem({
    required this.fileSystemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
    };
  }

  factory SpaceSpaceSettingsCustomFileSystemEfsFileSystem.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCustomFileSystemEfsFileSystem(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
    );
  }
}

