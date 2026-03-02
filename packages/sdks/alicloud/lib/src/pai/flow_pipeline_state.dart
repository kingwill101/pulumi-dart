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
    this.createTime,
    this.manifest,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'manifest': ?manifest,
      'workspaceId': ?workspaceId,
    };
  }

  factory FlowPipelineState.fromMap(Map<String, dynamic> map) {
    return FlowPipelineState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      manifest: map['manifest'] == null ? null : (map['manifest']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

