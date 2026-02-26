// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final String fileSystemPath;

  DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    map['fileSystemPath'] = fileSystemPath;
    return map;
  }

  factory DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
    );
  }
}
