// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_host_groups_group.dart';

/// Result data returned by getHostGroups.
class GetHostGroupsResult {
  final List<GetHostGroupsGroup> groups;
  final String? hostGroupName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetHostGroupsResult].
  /// [groups] Required.
  /// [hostGroupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetHostGroupsResult({
    required this.groups,
    this.hostGroupName,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetHostGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'hostGroupName': ?hostGroupName,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetHostGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetHostGroupsResult(
      groups: pulumi.Input.decodeList<GetHostGroupsGroup>(map['groups'], (value) => GetHostGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      hostGroupName: map['hostGroupName'] == null ? null : map['hostGroupName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

