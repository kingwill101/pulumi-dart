// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the managed identity used for CMK
class CmkKekIdentity {
  /// The managed identity to be used which has access permissions to the Key Vault. Provide a value here in case identity types: 'UserAssigned' only.
  final pulumi.Input<String>? identityId;
  /// The identity type. 'SystemAssigned' and 'UserAssigned' are mutually exclusive. 'SystemAssigned' will use implicitly created managed identity.
  final pulumi.Input<String>? identityType;

  /// Creates a new [CmkKekIdentity].
  /// [identityId] The managed identity to be used which has access permissions to the Key Vault. Provide a value here in case identity types: 'UserAssigned' only.
  /// [identityType] The identity type. 'SystemAssigned' and 'UserAssigned' are mutually exclusive. 'SystemAssigned' will use implicitly created managed identity.
  CmkKekIdentity({
    this.identityId,
    this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': ?identityId,
      'identityType': ?identityType,
    };
  }

  factory CmkKekIdentity.fromMap(Map<String, dynamic> map) {
    return CmkKekIdentity(
      identityId: map['identityId'] == null ? null : (map['identityId'] as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
    );
  }
}

