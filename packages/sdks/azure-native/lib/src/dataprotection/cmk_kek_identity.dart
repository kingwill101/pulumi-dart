// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of the managed identity used for CMK
class CmkKekIdentity {
  /// The managed identity to be used which has access permissions to the Key Vault. Provide a value here in case identity types: 'UserAssigned' only.
  final pulumi.Input<String?>? identityId;
  /// The identity type. 'SystemAssigned' and 'UserAssigned' are mutually exclusive. 'SystemAssigned' will use implicitly created managed identity.
  final pulumi.Input<dynamic>? identityType;

  /// Creates a new [CmkKekIdentity].
  /// [identityId] The managed identity to be used which has access permissions to the Key Vault. Provide a value here in case identity types: 'UserAssigned' only.
  /// [identityType] The identity type. 'SystemAssigned' and 'UserAssigned' are mutually exclusive. 'SystemAssigned' will use implicitly created managed identity.
  const CmkKekIdentity({
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
      identityId: (() { final guardedValue = map['identityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
