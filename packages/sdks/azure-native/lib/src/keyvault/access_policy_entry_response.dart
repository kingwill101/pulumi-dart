// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_response.dart';

/// An identity that have access to the key vault. All identities in the array must use the same tenant ID as the key vault's tenant ID.
class AccessPolicyEntryResponse {
  /// Application ID of the client making request on behalf of a principal
  final pulumi.Input<String>? applicationId;
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  final pulumi.Input<String> objectId;
  /// Permissions the identity has for keys, secrets and certificates.
  final pulumi.Input<PermissionsResponse> permissions;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AccessPolicyEntryResponse].
  /// [applicationId] Application ID of the client making request on behalf of a principal
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  /// [permissions] Permissions the identity has for keys, secrets and certificates.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.
  AccessPolicyEntryResponse({
    this.applicationId,
    required this.objectId,
    required this.permissions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'objectId': objectId,
      'permissions': pulumi.Input.mapInputValue<PermissionsResponse, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'tenantId': tenantId,
    };
  }

  factory AccessPolicyEntryResponse.fromMap(Map<String, dynamic> map) {
    return AccessPolicyEntryResponse(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      permissions: pulumi.Input.fromValue(PermissionsResponse.fromMap((map['permissions']! as Map).cast<String, dynamic>())),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

