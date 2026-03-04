// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_flow_pipeline_flow_pipeline_args_doc}
/// The set of arguments for FlowPipeline.
/// {@endtemplate}
/// {@macro pulumi_pai_flow_pipeline_flow_pipeline_args_doc}
class FlowPipelineArgs {
  /// The pipeline definition. For more information, see the sample pipeline definition).
  final pulumi.Input<String> manifest;

  /// The ID of the workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [FlowPipelineArgs].
  /// [manifest] The pipeline definition. For more information, see the sample pipeline definition).
  /// [workspaceId] The ID of the workspace.
  FlowPipelineArgs({required this.manifest, required this.workspaceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'manifest': manifest, 'workspaceId': workspaceId};
  }

  factory FlowPipelineArgs.fromMap(Map<String, dynamic> map) {
    return FlowPipelineArgs(
      manifest: pulumi.Input.fromValue(map['manifest'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
