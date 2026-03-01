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
    required String experimentId,
    String? runName,
    String? sourceId,
    String? sourceType,
  }) :
      experimentId = pulumi.Input.asInput<String>(experimentId),
      runName = pulumi.Input.asOptionalInput<String>(runName),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType);

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
      experimentId: map['experimentId'] as String,
      runName: map['runName'] == null ? null : map['runName'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
      sourceType: map['sourceType'] == null ? null : map['sourceType'] as String,
    );
  }
}

