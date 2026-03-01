// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_group_external_id.dart';

class GetGroupsGroup {
  /// Description of the specified group.
  final String description;
  /// Group's display name.
  final String displayName;
  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetGroupsGroupExternalId> externalIds;
  /// Identifier of the group in the Identity Store.
  final String groupId;
  /// Identity Store ID associated with the Single Sign-On (SSO) Instance.
  final String identityStoreId;

  /// Creates a new [GetGroupsGroup].
  /// [description] Description of the specified group.
  /// [displayName] Group's display name.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [groupId] Identifier of the group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On (SSO) Instance.
  GetGroupsGroup({
    required this.description,
    required this.displayName,
    required this.externalIds,
    required this.groupId,
    required this.identityStoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'externalIds': pulumi.Input.encodeList<GetGroupsGroupExternalId, Map<String, dynamic>>(externalIds, (value) => value.toMap()),
      'groupId': groupId,
      'identityStoreId': identityStoreId,
    };
  }

  factory GetGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetGroupsGroup(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      externalIds: pulumi.Input.decodeList<GetGroupsGroupExternalId>(map['externalIds'], (value) => GetGroupsGroupExternalId.fromMap((value as Map).cast<String, dynamic>())),
      groupId: map['groupId'] as String,
      identityStoreId: map['identityStoreId'] as String,
    );
  }
}

