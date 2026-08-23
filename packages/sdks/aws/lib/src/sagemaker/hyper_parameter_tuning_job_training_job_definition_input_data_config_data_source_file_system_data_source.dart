// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource {
  /// Directory path in the file system.
  final pulumi.Input<String> directoryPath;
  /// Access mode for the file system.
  final pulumi.Input<String> fileSystemAccessMode;
  /// File system ID.
  final pulumi.Input<String> fileSystemId;
  /// File system type.
  final pulumi.Input<String> fileSystemType;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource].
  /// [directoryPath] Directory path in the file system.
  /// [fileSystemAccessMode] Access mode for the file system.
  /// [fileSystemId] File system ID.
  /// [fileSystemType] File system type.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource({
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

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceFileSystemDataSource(
      directoryPath: pulumi.Input.fromValue(map['directoryPath'] as String),
      fileSystemAccessMode: pulumi.Input.fromValue(map['fileSystemAccessMode'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemType: pulumi.Input.fromValue(map['fileSystemType'] as String),
    );
  }
}
