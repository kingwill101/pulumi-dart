// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final String fileSystemPath;

  /// Creates a new [DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  /// [fileSystemPath] The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
    };
  }

  factory DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] as String,
    );
  }
}
