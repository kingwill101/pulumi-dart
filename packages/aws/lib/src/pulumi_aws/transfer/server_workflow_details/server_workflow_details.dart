// ignore_for_file: unused_element, unnecessary_cast

import '../server_workflow_details_on_partial_upload/server_workflow_details_on_partial_upload.dart';
import '../server_workflow_details_on_upload/server_workflow_details_on_upload.dart';

class ServerWorkflowDetails {
  /// A trigger that starts a workflow if a file is only partially uploaded. See Workflow Detail below. See <span pulumi-lang-nodejs="`onPartialUpload`" pulumi-lang-dotnet="`OnPartialUpload`" pulumi-lang-go="`onPartialUpload`" pulumi-lang-python="`on_partial_upload`" pulumi-lang-yaml="`onPartialUpload`" pulumi-lang-java="`onPartialUpload`">`on_partial_upload`</span> Block below for details.
  final ServerWorkflowDetailsOnPartialUpload? onPartialUpload;

  /// A trigger that starts a workflow: the workflow begins to execute after a file is uploaded. See <span pulumi-lang-nodejs="`onUpload`" pulumi-lang-dotnet="`OnUpload`" pulumi-lang-go="`onUpload`" pulumi-lang-python="`on_upload`" pulumi-lang-yaml="`onUpload`" pulumi-lang-java="`onUpload`">`on_upload`</span> Block below for details.
  final ServerWorkflowDetailsOnUpload? onUpload;

  ServerWorkflowDetails({
    this.onPartialUpload,
    this.onUpload,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final onPartialUploadValue = onPartialUpload;
    if (onPartialUploadValue != null) {
      map['onPartialUpload'] = onPartialUploadValue.toMap();
    }
    final onUploadValue = onUpload;
    if (onUploadValue != null) {
      map['onUpload'] = onUploadValue.toMap();
    }
    return map;
  }

  factory ServerWorkflowDetails.fromMap(Map<String, dynamic> map) {
    return ServerWorkflowDetails(
      onPartialUpload: map['onPartialUpload'] == null
          ? null
          : ServerWorkflowDetailsOnPartialUpload.fromMap(
              (map['onPartialUpload'] as Map).cast<String, dynamic>()),
      onUpload: map['onUpload'] == null
          ? null
          : ServerWorkflowDetailsOnUpload.fromMap(
              (map['onUpload'] as Map).cast<String, dynamic>()),
    );
  }
}
