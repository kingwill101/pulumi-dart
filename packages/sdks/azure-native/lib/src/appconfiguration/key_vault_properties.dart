// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultProperties {
  /// The client id of the identity which will be used to access key vault.
  final pulumi.Input<String>? identityClientId;

  /// The URI of the key vault key used to encrypt data.
  final pulumi.Input<String>? keyIdentifier;

  /// Creates a new [KeyVaultProperties].
  /// [identityClientId] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] The URI of the key vault key used to encrypt data.
  KeyVaultProperties({this.identityClientId, this.keyIdentifier});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identityClientId: (() {
        final guardedValue = map['identityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyIdentifier: (() {
        final guardedValue = map['keyIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
