// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_disk_replica_groups_group.dart';

/// Result data returned by getDiskReplicaGroups.
class GetDiskReplicaGroupsResult {
  final List<GetDiskReplicaGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetDiskReplicaGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  GetDiskReplicaGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups':
          pulumi.Input.encodeList<
            GetDiskReplicaGroupsGroup,
            Map<String, dynamic>
          >(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetDiskReplicaGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaGroupsResult(
      groups: pulumi.Input.decodeList<GetDiskReplicaGroupsGroup>(
        map['groups']!,
        (value) => GetDiskReplicaGroupsGroup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
