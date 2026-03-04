// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_group.dart';

/// Result data returned by getUserGroups.
class GetUserGroupsResult {
  final List<GetUserGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? userGroupName;

  /// Creates a new [GetUserGroupsResult].
  /// [groups] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [userGroupName] Optional.
  GetUserGroupsResult({
    required this.groups,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.userGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups':
          pulumi.Input.encodeList<GetUserGroupsGroup, Map<String, dynamic>>(
            groups,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'userGroupName': ?userGroupName,
    };
  }

  factory GetUserGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsResult(
      groups: pulumi.Input.decodeList<GetUserGroupsGroup>(
        map['groups']!,
        (value) =>
            GetUserGroupsGroup.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      userGroupName: (() {
        final guardedValue = map['userGroupName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
