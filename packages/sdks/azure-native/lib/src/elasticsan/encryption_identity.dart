// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption identity for the volume group.
class EncryptionIdentity {
  /// Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  final pulumi.Input<String>? encryptionUserAssignedIdentity;

  /// Creates a new [EncryptionIdentity].
  /// [encryptionUserAssignedIdentity] Resource identifier of the UserAssigned identity to be associated with server-side encryption on the volume group.
  EncryptionIdentity({
    this.encryptionUserAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionUserAssignedIdentity': ?encryptionUserAssignedIdentity,
    };
  }

  factory EncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentity(
      encryptionUserAssignedIdentity: map['encryptionUserAssignedIdentity'] == null ? null : (map['encryptionUserAssignedIdentity']! as String).input(),
    );
  }
}

