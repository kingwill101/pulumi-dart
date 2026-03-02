// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_alternate_identifier.dart';
import 'get_group_external_id.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  final GetGroupAlternateIdentifier? alternateIdentifier;
  /// Description of the specified group.
  final String description;
  /// Group's display name value.
  final String displayName;
  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetGroupExternalId> externalIds;
  final String groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identityStoreId;
  final String region;

  /// Creates a new [GetGroupResult].
  /// [alternateIdentifier] Optional.
  /// [description] Description of the specified group.
  /// [displayName] Group's display name value.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [groupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreId] Required.
  /// [region] Required.
  GetGroupResult({
    this.alternateIdentifier,
    required this.description,
    required this.displayName,
    required this.externalIds,
    required this.groupId,
    required this.id,
    required this.identityStoreId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateIdentifier': ?alternateIdentifier == null ? null : alternateIdentifier!.toMap(),
      'description': description,
      'displayName': displayName,
      'externalIds': pulumi.Input.encodeList<GetGroupExternalId, Map<String, dynamic>>(externalIds, (value) => value.toMap()),
      'groupId': groupId,
      'id': id,
      'identityStoreId': identityStoreId,
      'region': region,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      alternateIdentifier: map['alternateIdentifier'] == null ? null : GetGroupAlternateIdentifier.fromMap((map['alternateIdentifier']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      externalIds: pulumi.Input.decodeList<GetGroupExternalId>(map['externalIds']!, (value) => GetGroupExternalId.fromMap((value as Map).cast<String, dynamic>())),
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      identityStoreId: map['identityStoreId'] as String,
      region: map['region'] as String,
    );
  }
}

