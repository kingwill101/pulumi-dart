// ignore_for_file: unused_element, unnecessary_cast

class WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation {
  /// The ID of the file system, assigned by Amazon EFS.
  final String? fileSystemId;

  /// The pathname for the folder being used by a workflow.
  final String? path;

  /// Creates a new [WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation].
  /// [fileSystemId] The ID of the file system, assigned by Amazon EFS.
  /// [path] The pathname for the folder being used by a workflow.
  WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fileSystemId': ?fileSystemId, 'path': ?path};
  }

  factory WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation(
      fileSystemId: map['fileSystemId'] == null
          ? null
          : map['fileSystemId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
