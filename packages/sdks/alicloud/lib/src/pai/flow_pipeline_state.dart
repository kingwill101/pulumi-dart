// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlowPipeline resources.
class FlowPipelineState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The pipeline definition. For more information, see the sample pipeline definition).
  final pulumi.Input<String>? manifest;
  /// The ID of the workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [FlowPipelineState].
  /// [createTime] The creation time of the resource.
  /// [manifest] The pipeline definition. For more information, see the sample pipeline definition).
  /// [workspaceId] The ID of the workspace.
  FlowPipelineState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? manifest,
    pulumi.Output<String>? workspaceId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      manifest = pulumi.Input.asOptionalInput<String>(manifest),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'manifest': ?manifest,
      'workspaceId': ?workspaceId,
    };
  }

  factory FlowPipelineState.fromMap(Map<String, dynamic> map) {
    return FlowPipelineState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      manifest: map['manifest'] == null ? null : pulumi.Output.create<String>(map['manifest'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

