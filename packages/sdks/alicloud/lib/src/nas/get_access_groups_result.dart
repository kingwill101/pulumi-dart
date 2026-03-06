// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_groups_group.dart';

/// Result data returned by getAccessGroups.
class GetAccessGroupsResult {
  /// (Available in 1.95.0+) The name of the AccessGroup.
  final String? accessGroupName;
  /// (Available in 1.95.0+) The type of the AccessGroup.
  final String? accessGroupType;
  /// Description of the AccessGroup.
  final String? description;
  final String? fileSystemType;
  /// A list of AccessGroups. Each element contains the following attributes:
  final List<GetAccessGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of AccessGroup IDs, the value is set to `names`. After version 1.95.0 the item value as `&lt;access_group_id&gt;:&lt;file_system_type&gt;`.
  final List<String> ids;
  final String? nameRegex;
  /// A list of AccessGroup names.
  final List<String> names;
  final String? outputFile;
  /// (Deprecated in v1.95.0+) AccessGroupType of the AccessGroup. The Field replace by `access_group_type` after version 1.95.0.
  final String? type;
  final bool? useutcDateTime;

  /// Creates a new [GetAccessGroupsResult].
  /// [accessGroupName] (Available in 1.95.0+) The name of the AccessGroup.
  /// [accessGroupType] (Available in 1.95.0+) The type of the AccessGroup.
  /// [description] Description of the AccessGroup.
  /// [fileSystemType] Optional.
  /// [groups] A list of AccessGroups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of AccessGroup IDs, the value is set to `names`. After version 1.95.0 the item value as `&lt;access_group_id&gt;:&lt;file_system_type&gt;`.
  /// [nameRegex] Optional.
  /// [names] A list of AccessGroup names.
  /// [outputFile] Optional.
  /// [type] (Deprecated in v1.95.0+) AccessGroupType of the AccessGroup. The Field replace by `access_group_type` after version 1.95.0.
  /// [useutcDateTime] Optional.
  const GetAccessGroupsResult({
    this.accessGroupName,
    this.accessGroupType,
    this.description,
    this.fileSystemType,
    required this.groups,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.type,
    this.useutcDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'accessGroupType': ?accessGroupType,
      'description': ?description,
      'fileSystemType': ?fileSystemType,
      'groups': pulumi.Input.encodeList<GetAccessGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'type': ?type,
      'useutcDateTime': ?useutcDateTime,
    };
  }

  factory GetAccessGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessGroupsResult(
      accessGroupName: (() { final guardedValue = map['accessGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accessGroupType: (() { final guardedValue = map['accessGroupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemType: (() { final guardedValue = map['fileSystemType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groups: pulumi.Input.decodeList<GetAccessGroupsGroup>(map['groups']!, (value) => GetAccessGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useutcDateTime: (() { final guardedValue = map['useutcDateTime']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

