// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobInputDataConfigDataSourceFileSystemDataSource {
  /// Full path to the directory on the file system.
  final pulumi.Input<String> directoryPath;
  /// Access mode for the file system. Valid values: `ro`, `rw`.
  final pulumi.Input<String> fileSystemAccessMode;
  /// File system ID.
  final pulumi.Input<String> fileSystemId;
  /// File system type. Valid values: `EFS`, `FSxLustre`.
  final pulumi.Input<String> fileSystemType;

  /// Creates a new [TrainingJobInputDataConfigDataSourceFileSystemDataSource].
  /// [directoryPath] Full path to the directory on the file system.
  /// [fileSystemAccessMode] Access mode for the file system. Valid values: `ro`, `rw`.
  /// [fileSystemId] File system ID.
  /// [fileSystemType] File system type. Valid values: `EFS`, `FSxLustre`.
  const TrainingJobInputDataConfigDataSourceFileSystemDataSource({
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

  factory TrainingJobInputDataConfigDataSourceFileSystemDataSource.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigDataSourceFileSystemDataSource(
      directoryPath: pulumi.Input.fromValue(map['directoryPath'] as String),
      fileSystemAccessMode: pulumi.Input.fromValue(map['fileSystemAccessMode'] as String),
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      fileSystemType: pulumi.Input.fromValue(map['fileSystemType'] as String),
    );
  }
}
