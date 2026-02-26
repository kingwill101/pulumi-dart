// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final String fileSystemId;

  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final String? fileSystemPath;

  UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    final fileSystemPathValue = fileSystemPath;
    if (fileSystemPathValue != null) {
      map['fileSystemPath'] = fileSystemPathValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: map['fileSystemId'] as String,
      fileSystemPath: map['fileSystemPath'] == null
          ? null
          : map['fileSystemPath'] as String,
    );
  }
}
