// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_snapshot_groups_get_ecs_snapshot_groups_args_doc}
/// Arguments for getEcsSnapshotGroups.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_snapshot_groups_get_ecs_snapshot_groups_args_doc}
class GetEcsSnapshotGroupsArgs {
  /// A list of Snapshot Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// A regex string to filter results by Snapshot Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the snapshot-consistent group.
  final pulumi.Input<String>? snapshotGroupName;
  /// The state of snapshot-consistent group. Valid Values: `accomplished`, `failed` and `progressing`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the snapshot group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEcsSnapshotGroupsArgs].
  /// [ids] A list of Snapshot Group IDs.
  /// [instanceId] The ID of the instance.
  /// [nameRegex] A regex string to filter results by Snapshot Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [snapshotGroupName] The name of the snapshot-consistent group.
  /// [status] The state of snapshot-consistent group. Valid Values: `accomplished`, `failed` and `progressing`.
  /// [tags] A mapping of tags to assign to the snapshot group.
  GetEcsSnapshotGroupsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? snapshotGroupName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      snapshotGroupName = pulumi.Input.asOptionalInput<String>(snapshotGroupName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'snapshotGroupName': ?snapshotGroupName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetEcsSnapshotGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotGroupsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      snapshotGroupName: map['snapshotGroupName'] == null ? null : pulumi.Output.create<String>(map['snapshotGroupName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

