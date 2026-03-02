// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_run_workspace_run_args_doc}
/// The set of arguments for WorkspaceRun.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_run_workspace_run_args_doc}
class WorkspaceRunArgs {
  /// Resource attribute field of the experiment ID to which Run belongs
  final pulumi.Input<String> experimentId;
  /// The name of the resource
  final pulumi.Input<String>? runName;
  /// Attribute Resource field representing the source task ID
  final pulumi.Input<String>? sourceId;
  /// Resource attribute fields representing the source type
  final pulumi.Input<String>? sourceType;

  /// Creates a new [WorkspaceRunArgs].
  /// [experimentId] Resource attribute field of the experiment ID to which Run belongs
  /// [runName] The name of the resource
  /// [sourceId] Attribute Resource field representing the source task ID
  /// [sourceType] Resource attribute fields representing the source type
  WorkspaceRunArgs({
    required this.experimentId,
    this.runName,
    this.sourceId,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentId': experimentId,
      'runName': ?runName,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
    };
  }

  factory WorkspaceRunArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceRunArgs(
      experimentId: (map['experimentId'] as String).input(),
      runName: map['runName'] == null ? null : (map['runName'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
    );
  }
}

