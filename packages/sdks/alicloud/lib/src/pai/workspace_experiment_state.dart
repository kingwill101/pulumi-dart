// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceExperiment resources.
class WorkspaceExperimentState {
  /// Experimental Visibility
  final pulumi.Input<String>? accessibility;
  /// ArtifactUri is default OSS storage path of the output of trials in the experiment
  final pulumi.Input<String>? artifactUri;
  /// GmtCreateTime is time when this entity is created.
  final pulumi.Input<String>? createTime;
  /// Name is the name of the experiment, unique in a namespace
  final pulumi.Input<String>? experimentName;
  /// WorkspaceId is the workspace id which contains the experiment
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceExperimentState].
  /// [accessibility] Experimental Visibility
  /// [artifactUri] ArtifactUri is default OSS storage path of the output of trials in the experiment
  /// [createTime] GmtCreateTime is time when this entity is created.
  /// [experimentName] Name is the name of the experiment, unique in a namespace
  /// [workspaceId] WorkspaceId is the workspace id which contains the experiment
  WorkspaceExperimentState({
    this.accessibility,
    this.artifactUri,
    this.createTime,
    this.experimentName,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'artifactUri': ?artifactUri,
      'createTime': ?createTime,
      'experimentName': ?experimentName,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceExperimentState.fromMap(Map<String, dynamic> map) {
    return WorkspaceExperimentState(
      accessibility: map['accessibility'] == null ? null : (map['accessibility']! as String).input(),
      artifactUri: map['artifactUri'] == null ? null : (map['artifactUri']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

