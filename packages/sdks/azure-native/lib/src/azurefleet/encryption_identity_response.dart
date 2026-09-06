// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Managed Identity used by ADE to get access token for keyvault
/// operations.
class EncryptionIdentityResponse {
  /// Specifies ARM Resource ID of one of the user identities associated with the VM.
  final pulumi.Input<String?>? userAssignedIdentityResourceId;

  /// Creates a new [EncryptionIdentityResponse].
  /// [userAssignedIdentityResourceId] Specifies ARM Resource ID of one of the user identities associated with the VM.
  const EncryptionIdentityResponse({
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      userAssignedIdentityResourceId: (() { final guardedValue = map['userAssignedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
