// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig {
  /// The ID of your Amazon EFS file system.
  final pulumi.Input<String> fileSystemId;
  /// The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  final pulumi.Input<String> fileSystemPath;

  /// Creates a new [DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig].
  /// [fileSystemId] The ID of your Amazon EFS file system.
  /// [fileSystemPath] The path to the file system directory that is accessible in Amazon SageMaker AI Studio. Permitted users can access only this directory and below.
  const DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig({
    required this.fileSystemId,
    required this.fileSystemPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'fileSystemPath': fileSystemPath,
    };
  }

  factory DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCustomFileSystemConfigEfsFileSystemConfig(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemPath: pulumi.Input.fromValue(map['fileSystemPath'] as String),
    );
  }
}
