// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_experiment_workspace_experiment_args_doc}
/// The set of arguments for WorkspaceExperiment.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_experiment_workspace_experiment_args_doc}
class WorkspaceExperimentArgs {
  /// Experimental Visibility
  final pulumi.Input<String>? accessibility;
  /// ArtifactUri is default OSS storage path of the output of trials in the experiment
  final pulumi.Input<String> artifactUri;
  /// Name is the name of the experiment, unique in a namespace
  final pulumi.Input<String> experimentName;
  /// WorkspaceId is the workspace id which contains the experiment
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceExperimentArgs].
  /// [accessibility] Experimental Visibility
  /// [artifactUri] ArtifactUri is default OSS storage path of the output of trials in the experiment
  /// [experimentName] Name is the name of the experiment, unique in a namespace
  /// [workspaceId] WorkspaceId is the workspace id which contains the experiment
  WorkspaceExperimentArgs({
    String? accessibility,
    required String artifactUri,
    required String experimentName,
    required String workspaceId,
  }) :
      accessibility = pulumi.Input.asOptionalInput<String>(accessibility),
      artifactUri = pulumi.Input.asInput<String>(artifactUri),
      experimentName = pulumi.Input.asInput<String>(experimentName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'artifactUri': artifactUri,
      'experimentName': experimentName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceExperimentArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceExperimentArgs(
      accessibility: map['accessibility'] == null ? null : map['accessibility'] as String,
      artifactUri: map['artifactUri'] as String,
      experimentName: map['experimentName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

