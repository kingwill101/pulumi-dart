// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption identity for the volume group.
class EncryptionIdentityResponse {
  /// Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  final pulumi.Input<String?>? encryptionUserAssignedIdentity;

  /// Creates a new [EncryptionIdentityResponse].
  /// [encryptionUserAssignedIdentity] Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  const EncryptionIdentityResponse({
    this.encryptionUserAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionUserAssignedIdentity': ?encryptionUserAssignedIdentity,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      encryptionUserAssignedIdentity: (() { final guardedValue = map['encryptionUserAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
