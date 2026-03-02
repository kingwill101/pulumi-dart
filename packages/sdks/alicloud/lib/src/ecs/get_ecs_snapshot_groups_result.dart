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
  GetEcsSnapshotGroupsResult({
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
      groups: pulumi.Input.decodeList<GetEcsSnapshotGroupsGroup>(map['groups'], (value) => GetEcsSnapshotGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      snapshotGroupName: map['snapshotGroupName'] == null ? null : map['snapshotGroupName']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

