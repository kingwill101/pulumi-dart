// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group.dart';

/// Result data returned by getGroups.
class GetGroupsResult {
  final String? groupIdRegex;

  /// Specify the protocol applicable to the created Group ID.
  final String? groupType;

  /// A list of groups. Each element contains the following attributes:
  final List<GetGroupsGroup> groups;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of group names.
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// A map of tags assigned to the Ons group.
  final Map<String, String>? tags;

  /// Creates a new [GetGroupsResult].
  /// [groupIdRegex] Optional.
  /// [groupType] Specify the protocol applicable to the created Group ID.
  /// [groups] A list of groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of group names.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [tags] A map of tags assigned to the Ons group.
  GetGroupsResult({
    this.groupIdRegex,
    this.groupType,
    required this.groups,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIdRegex': ?groupIdRegex,
      'groupType': ?groupType,
      'groups': pulumi.Input.encodeList<GetGroupsGroup, Map<String, dynamic>>(
        groups,
        (value) => value.toMap(),
      ),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetGroupsResult(
      groupIdRegex: (() {
        final guardedValue = map['groupIdRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      groups: pulumi.Input.decodeList<GetGroupsGroup>(
        map['groups']!,
        (value) =>
            GetGroupsGroup.fromMap((value as Map).cast<String, dynamic>()),
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
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
