// ignore_for_file: unused_element, unnecessary_cast

class WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation {
  /// The ID of the file system, assigned by Amazon EFS.
  final String? fileSystemId;

  /// The pathname for the folder being used by a workflow.
  final String? path;

  /// Creates a new [WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation].
  /// [fileSystemId] The ID of the file system, assigned by Amazon EFS.
  /// [path] The pathname for the folder being used by a workflow.
  WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileSystemIdValue = fileSystemId;
    if (fileSystemIdValue != null) {
      map['fileSystemId'] = fileSystemIdValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation.fromMap(
      Map<String, dynamic> map) {
    return WorkflowOnExceptionStepCopyStepDetailsDestinationFileLocationEfsFileLocation(
      fileSystemId:
          map['fileSystemId'] == null ? null : map['fileSystemId'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
