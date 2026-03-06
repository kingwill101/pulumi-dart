// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_snapshot_groups_group.dart';

/// Result data returned by getEcsSnapshotGroups.
class GetEcsSnapshotGroupsResult {
  final List<GetEcsSnapshotGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? snapshotGroupName;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetEcsSnapshotGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [snapshotGroupName] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  const GetEcsSnapshotGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.snapshotGroupName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetEcsSnapshotGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snapshotGroupName': ?snapshotGroupName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetEcsSnapshotGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotGroupsResult(
      groups: pulumi.Input.decodeList<GetEcsSnapshotGroupsGroup>(map['groups']!, (value) => GetEcsSnapshotGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotGroupName: (() { final guardedValue = map['snapshotGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

