// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation {
  /// ID of the file system, assigned by Amazon EFS.
  final pulumi.Input<String?>? fileSystemId;
  /// Pathname for the folder being used by a workflow.
  final pulumi.Input<String?>? path;

  /// Creates a new [WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation].
  /// [fileSystemId] ID of the file system, assigned by Amazon EFS.
  /// [path] Pathname for the folder being used by a workflow.
  const WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation({
    this.fileSystemId,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'path': ?path,
    };
  }

  factory WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation.fromMap(Map<String, dynamic> map) {
    return WorkflowStepDecryptStepDetailsDestinationFileLocationEfsFileLocation(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
