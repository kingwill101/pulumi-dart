// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation {
  /// The ID of the file system, assigned by Amazon EFS.
  final pulumi.Input<String>? fileSystemId;
  /// The pathname for the folder being used by a workflow.
  final pulumi.Input<String>? path;

  /// Creates a new [WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation].
  /// [fileSystemId] The ID of the file system, assigned by Amazon EFS.
  /// [path] The pathname for the folder being used by a workflow.
  WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'path': ?path,
    };
  }

  factory WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepDecryptStepDetailsDestinationFileLocationEfsFileLocation(
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
    );
  }
}

