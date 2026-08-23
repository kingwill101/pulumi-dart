// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource {
  /// Path to the directory in the mounted file system.
  final pulumi.Input<String> directoryPath;
  /// File system access mode.
  final pulumi.Input<String> fileSystemAccessMode;
  /// ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// File system type.
  final pulumi.Input<String> fileSystemType;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource].
  /// [directoryPath] Path to the directory in the mounted file system.
  /// [fileSystemAccessMode] File system access mode.
  /// [fileSystemId] ID of the file system.
  /// [fileSystemType] File system type.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource({
    required this.directoryPath,
    required this.fileSystemAccessMode,
    required this.fileSystemId,
    required this.fileSystemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryPath': directoryPath,
      'fileSystemAccessMode': fileSystemAccessMode,
      'fileSystemId': fileSystemId,
      'fileSystemType': fileSystemType,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource(
      directoryPath: pulumi.Input.fromValue(map['directoryPath'] as String),
      fileSystemAccessMode: pulumi.Input.fromValue(map['fileSystemAccessMode'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemType: pulumi.Input.fromValue(map['fileSystemType'] as String),
    );
  }
}
