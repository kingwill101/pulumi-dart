// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_groups_group.dart';

/// Result data returned by getMachineGroups.
class GetMachineGroupsResult {
  /// Machine Group name
  final String? groupName;
  /// A list of Machine Group Entries. Each element contains the following attributes:
  final List<GetMachineGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Machine Group IDs.
  final List<String> ids;
  final String? outputFile;
  final String projectName;

  /// Creates a new [GetMachineGroupsResult].
  /// [groupName] Machine Group name
  /// [groups] A list of Machine Group Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Machine Group IDs.
  /// [outputFile] Optional.
  /// [projectName] Required.
  GetMachineGroupsResult({
    this.groupName,
    required this.groups,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'groups': pulumi.Input.encodeList<GetMachineGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetMachineGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetMachineGroupsResult(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      groups: pulumi.Input.decodeList<GetMachineGroupsGroup>(map['groups'], (value) => GetMachineGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      projectName: map['projectName'] as String,
    );
  }
}

