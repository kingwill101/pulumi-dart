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
    this.ids,
    this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.snapshotGroupName,
    this.status,
    this.tags,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotGroupName: (() { final guardedValue = map['snapshotGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

