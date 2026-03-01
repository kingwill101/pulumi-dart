// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final String fileSystemPath;

  /// Creates a new [DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  /// [fileSystemPath] The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
    };
  }

  factory DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultSpaceSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
    );
  }
}
