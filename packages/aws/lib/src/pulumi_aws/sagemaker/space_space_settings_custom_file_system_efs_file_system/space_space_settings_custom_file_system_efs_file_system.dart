// ignore_for_file: unused_element, unnecessary_cast

class SpaceSpaceSettingsCustomFileSystemEfsFileSystem {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  SpaceSpaceSettingsCustomFileSystemEfsFileSystem({
    required this.fileSystemId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    return map;
  }

  factory SpaceSpaceSettingsCustomFileSystemEfsFileSystem.fromMap(
      Map<String, dynamic> map) {
    return SpaceSpaceSettingsCustomFileSystemEfsFileSystem(
      fileSystemId: map['fileSystemId'] as String,
    );
  }
}
