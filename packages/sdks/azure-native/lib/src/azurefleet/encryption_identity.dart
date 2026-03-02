// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Managed Identity used by ADE to get access token for keyvault
/// operations.
class EncryptionIdentity {
  /// Specifies ARM Resource ID of one of the user identities associated with the VM.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [EncryptionIdentity].
  /// [userAssignedIdentityResourceId] Specifies ARM Resource ID of one of the user identities associated with the VM.
  EncryptionIdentity({
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory EncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentity(
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : (map['userAssignedIdentityResourceId']! as String).input(),
    );
  }
}

