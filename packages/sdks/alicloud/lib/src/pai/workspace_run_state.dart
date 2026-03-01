// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceRun resources.
class WorkspaceRunState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Resource attribute field of the experiment ID to which Run belongs
  final pulumi.Input<String>? experimentId;
  /// The name of the resource
  final pulumi.Input<String>? runName;
  /// Attribute Resource field representing the source task ID
  final pulumi.Input<String>? sourceId;
  /// Resource attribute fields representing the source type
  final pulumi.Input<String>? sourceType;

  /// Creates a new [WorkspaceRunState].
  /// [createTime] The creation time of the resource
  /// [experimentId] Resource attribute field of the experiment ID to which Run belongs
  /// [runName] The name of the resource
  /// [sourceId] Attribute Resource field representing the source task ID
  /// [sourceType] Resource attribute fields representing the source type
  WorkspaceRunState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? experimentId,
    pulumi.Output<String>? runName,
    pulumi.Output<String>? sourceId,
    pulumi.Output<String>? sourceType,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      experimentId = pulumi.Input.asOptionalInput<String>(experimentId),
      runName = pulumi.Input.asOptionalInput<String>(runName),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'experimentId': ?experimentId,
      'runName': ?runName,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
    };
  }

  factory WorkspaceRunState.fromMap(Map<String, dynamic> map) {
    return WorkspaceRunState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      experimentId: map['experimentId'] == null ? null : pulumi.Output.create<String>(map['experimentId'] as String),
      runName: map['runName'] == null ? null : pulumi.Output.create<String>(map['runName'] as String),
      sourceId: map['sourceId'] == null ? null : pulumi.Output.create<String>(map['sourceId'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
    );
  }
}

