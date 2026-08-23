// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_workflow_details_on_partial_upload.dart';
import 'server_workflow_details_on_upload.dart';

class ServerWorkflowDetails {
  /// Trigger that starts a workflow if a file is only partially uploaded. See `onPartialUpload` Block below for details.
  final pulumi.Input<ServerWorkflowDetailsOnPartialUpload>? onPartialUpload;
  /// Trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See `onUpload` Block below for details.
  final pulumi.Input<ServerWorkflowDetailsOnUpload>? onUpload;

  /// Creates a new [ServerWorkflowDetails].
  /// [onPartialUpload] Trigger that starts a workflow if a file is only partially uploaded. See `onPartialUpload` Block below for details.
  /// [onUpload] Trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See `onUpload` Block below for details.
  const ServerWorkflowDetails({
    this.onPartialUpload,
    this.onUpload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onPartialUpload': ?pulumi.Input.mapOptionalInputValue<ServerWorkflowDetailsOnPartialUpload, Map<String, dynamic>>(onPartialUpload, (value) => value.toMap()),
      'onUpload': ?pulumi.Input.mapOptionalInputValue<ServerWorkflowDetailsOnUpload, Map<String, dynamic>>(onUpload, (value) => value.toMap()),
    };
  }

  factory ServerWorkflowDetails.fromMap(Map<String, dynamic> map) {
    return ServerWorkflowDetails(
      onPartialUpload: (() { final guardedValue = map['onPartialUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerWorkflowDetailsOnPartialUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onUpload: (() { final guardedValue = map['onUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerWorkflowDetailsOnUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
