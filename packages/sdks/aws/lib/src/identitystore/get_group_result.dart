// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_alternate_identifier.dart';
import 'get_group_external_id.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  final GetGroupAlternateIdentifier? alternateIdentifier;
  /// Description of the specified group.
  final String? description;
  /// Group's display name value.
  final String? displayName;
  /// List of identifiers issued to this resource by an external identity provider.
  final List<GetGroupExternalId>? externalIds;
  final String? groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identityStoreId;
  final String? region;

  /// Creates a new [GetGroupResult].
  /// [alternateIdentifier] Optional.
  /// [description] Description of the specified group.
  /// [displayName] Group's display name value.
  /// [externalIds] List of identifiers issued to this resource by an external identity provider.
  /// [groupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreId] Optional.
  /// [region] Optional.
  const GetGroupResult({
    this.alternateIdentifier,
    this.description,
    this.displayName,
    this.externalIds,
    this.groupId,
    this.id,
    this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternateIdentifier': ?alternateIdentifier?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'externalIds': ?(() { final guardedValue = externalIds; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupExternalId, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'groupId': ?groupId,
      'id': ?id,
      'identityStoreId': ?identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      alternateIdentifier: (() { final guardedValue = map['alternateIdentifier']; if (guardedValue == null) return null; return GetGroupAlternateIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalIds: (() { final guardedValue = map['externalIds']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupExternalId>(guardedValue, (value) => GetGroupExternalId.fromMap((value as Map).cast<String, dynamic>())); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityStoreId: (() { final guardedValue = map['identityStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
