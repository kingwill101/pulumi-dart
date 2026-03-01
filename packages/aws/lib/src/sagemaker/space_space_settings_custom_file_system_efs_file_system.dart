// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsCustomFileSystemEfsFileSystem {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  /// Creates a new [SpaceSpaceSettingsCustomFileSystemEfsFileSystem].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  SpaceSpaceSettingsCustomFileSystemEfsFileSystem({required this.fileSystemId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fileSystemId': fileSystemId};
  }

  factory SpaceSpaceSettingsCustomFileSystemEfsFileSystem.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpaceSpaceSettingsCustomFileSystemEfsFileSystem(
      fileSystemId: map['fileSystemId'] as String,
    );
  }
}
