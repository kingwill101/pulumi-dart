// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group.dart';

/// Result data returned by getServerGroups.
class GetServerGroupsResult {
  final List<GetServerGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final List<String>? serverGroupNames;
  final String? serverGroupType;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetServerGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [serverGroupNames] Optional.
  /// [serverGroupType] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetServerGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.serverGroupNames,
    this.serverGroupType,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': pulumi.Input.encodeList<GetServerGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'serverGroupNames': ?serverGroupNames,
      'serverGroupType': ?serverGroupType,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetServerGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsResult(
      groups: pulumi.Input.decodeList<GetServerGroupsGroup>(map['groups'], (value) => GetServerGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverGroupNames: map['serverGroupNames'] == null ? null : (map['serverGroupNames'] as List).cast<String>(),
      serverGroupType: map['serverGroupType'] == null ? null : map['serverGroupType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

