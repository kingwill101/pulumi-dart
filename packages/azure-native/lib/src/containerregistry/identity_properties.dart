// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';
import 'user_identity_properties.dart';

/// Managed identity for the resource.
class IdentityProperties {
  /// The principal ID of resource identity.
  final String? principalId;
  /// The tenant ID of resource.
  final String? tenantId;
  /// The identity type.
  final ResourceIdentityType? type;
  /// The list of user identities associated with the resource. The user identity
  /// dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/
  /// providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserIdentityProperties>? userAssignedIdentities;

  /// Creates a new [IdentityProperties].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity
  IdentityProperties({
    this.principalId,
    this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentityProperties, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityProperties>(map['userAssignedIdentities'], (value) => UserIdentityProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

