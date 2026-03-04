// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowStepCopyStepDetailsDestinationFileLocationEfsFileLocation {
  /// The ID of the file system, assigned by Amazon EFS.
  final pulumi.Input<String>? fileSystemId;

  /// The pathname for the folder being used by a workflow.
  final pulumi.Input<String>? path;

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
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
