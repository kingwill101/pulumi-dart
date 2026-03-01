// ignore_for_file: unused_element, unnecessary_cast

import 'permissions.dart';

/// An identity that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID.
class AccessPolicyEntry {
  /// Application ID of the client making request on behalf of a principal
  final String? applicationId;
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  final String objectId;
  /// Permissions the identity has for keys, secrets and certificates.
  final Permissions permissions;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final String tenantId;

  /// Creates a new [AccessPolicyEntry].
  /// [applicationId] Application ID of the client making request on behalf of a principal
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  /// [permissions] Permissions the identity has for keys, secrets and certificates.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  AccessPolicyEntry({
    this.applicationId,
    required this.objectId,
    required this.permissions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'objectId': objectId,
      'permissions': permissions.toMap(),
      'tenantId': tenantId,
    };
  }

  factory AccessPolicyEntry.fromMap(Map<String, dynamic> map) {
    return AccessPolicyEntry(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      objectId: map['objectId'] as String,
      permissions: Permissions.fromMap((map['permissions'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] as String,
    );
  }
}

