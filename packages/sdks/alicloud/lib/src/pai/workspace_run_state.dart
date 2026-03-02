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
    this.createTime,
    this.experimentId,
    this.runName,
    this.sourceId,
    this.sourceType,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      experimentId: map['experimentId'] == null ? null : (map['experimentId'] as String).input(),
      runName: map['runName'] == null ? null : (map['runName'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
    );
  }
}

