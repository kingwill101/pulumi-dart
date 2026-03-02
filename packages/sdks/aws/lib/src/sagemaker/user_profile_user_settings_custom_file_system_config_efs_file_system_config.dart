// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final pulumi.Input<String> fileSystemId;
  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final pulumi.Input<String>? fileSystemPath;

  /// Creates a new [UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  /// [fileSystemPath] The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'fileSystemPath': ?fileSystemPath,
    };
  }

  factory UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return UserProfileUserSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: (map['fileSystemId'] as String).input(),
      fileSystemPath: map['fileSystemPath'] == null ? null : ((map['fileSystemPath'] as String).input()).input(),
    );
  }
}

