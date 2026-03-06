// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_group.dart';

/// Result data returned by getResourceGroups.
class GetResourceGroupsResult {
  /// DB cluster id.
  final String dbClusterId;
  /// The name of the resource pool.
  final String? groupName;
  /// A list of Resource Group Entries. Each element contains the following attributes:
  final List<GetResourceGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetResourceGroupsResult].
  /// [dbClusterId] DB cluster id.
  /// [groupName] The name of the resource pool.
  /// [groups] A list of Resource Group Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  const GetResourceGroupsResult({
    required this.dbClusterId,
    this.groupName,
    required this.groups,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbClusterId': dbClusterId,
      'groupName': ?groupName,
      'groups': pulumi.Input.encodeList<GetResourceGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetResourceGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsResult(
      dbClusterId: map['dbClusterId'] as String,
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groups: pulumi.Input.decodeList<GetResourceGroupsGroup>(map['groups']!, (value) => GetResourceGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

