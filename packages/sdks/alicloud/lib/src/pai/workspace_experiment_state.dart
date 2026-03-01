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
    pulumi.Output<String>? accessibility,
    pulumi.Output<String>? artifactUri,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? experimentName,
    pulumi.Output<String>? workspaceId,
  }) :
      accessibility = pulumi.Input.asOptionalInput<String>(accessibility),
      artifactUri = pulumi.Input.asOptionalInput<String>(artifactUri),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      experimentName = pulumi.Input.asOptionalInput<String>(experimentName),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      accessibility: map['accessibility'] == null ? null : pulumi.Output.create<String>(map['accessibility'] as String),
      artifactUri: map['artifactUri'] == null ? null : pulumi.Output.create<String>(map['artifactUri'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      experimentName: map['experimentName'] == null ? null : pulumi.Output.create<String>(map['experimentName'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

