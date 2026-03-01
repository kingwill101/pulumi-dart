// ignore_for_file: unused_element, unnecessary_cast

import 'server_workflow_details_on_partial_upload.dart';
import 'server_workflow_details_on_upload.dart';

class ServerWorkflowDetails {
  /// A trigger that starts a workflow if a file is only partially uploaded. See Workflow Detail below. See `on_partial_upload` Block below for details.
  final ServerWorkflowDetailsOnPartialUpload? onPartialUpload;
  /// A trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See `on_upload` Block below for details.
  final ServerWorkflowDetailsOnUpload? onUpload;

  /// Creates a new [ServerWorkflowDetails].
  /// [onPartialUpload] A trigger that starts a workflow if a file is only partially uploaded. See Workflow Detail below. See `on_partial_upload` Block below for details.
  /// [onUpload] A trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See `on_upload` Block below for details.
  ServerWorkflowDetails({
    this.onPartialUpload,
    this.onUpload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onPartialUpload': ?onPartialUpload == null ? null : onPartialUpload!.toMap(),
      'onUpload': ?onUpload == null ? null : onUpload!.toMap(),
    };
  }

  factory ServerWorkflowDetails.fromMap(Map<String, dynamic> map) {
    return ServerWorkflowDetails(
      onPartialUpload: map['onPartialUpload'] == null ? null : ServerWorkflowDetailsOnPartialUpload.fromMap((map['onPartialUpload'] as Map).cast<String, dynamic>()),
      onUpload: map['onUpload'] == null ? null : ServerWorkflowDetailsOnUpload.fromMap((map['onUpload'] as Map).cast<String, dynamic>()),
    );
  }
}

