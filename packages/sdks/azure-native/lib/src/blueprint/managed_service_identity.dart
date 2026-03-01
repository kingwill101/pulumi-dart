// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity.dart';

/// Managed identity generic object.
class ManagedServiceIdentity {
  /// Azure Active Directory principal ID associated with this Identity.
  final String? principalId;
  /// ID of the Azure Active Directory.
  final String? tenantId;
  /// Type of the managed identity.
  final String type;
  /// The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  final Map<String, UserAssignedIdentity>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [principalId] Azure Active Directory principal ID associated with this Identity.
  /// [tenantId] ID of the Azure Active Directory.
  /// [type] Type of the managed identity.
  /// [userAssignedIdentities] The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  ManagedServiceIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentity, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentity>(map['userAssignedIdentities'], (value) => UserAssignedIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

