// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity used to authenticate with key vault.
class ElasticEncryptionIdentityResponse {
  /// The principal ID (object ID) of the identity used to authenticate with key vault. Read-only.
  final pulumi.Input<String> principalId;
  /// The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [ElasticEncryptionIdentityResponse].
  /// [principalId] The principal ID (object ID) of the identity used to authenticate with key vault. Read-only.
  /// [userAssignedIdentity] The ARM resource identifier of the user assigned identity used to authenticate with key vault. Applicable if identity.type has 'UserAssigned'. It should match key of identity.userAssignedIdentities.
  ElasticEncryptionIdentityResponse({
    required this.principalId,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory ElasticEncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity'] as String).input(),
    );
  }
}

