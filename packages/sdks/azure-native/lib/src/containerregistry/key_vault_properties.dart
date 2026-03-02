// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyVaultProperties {
  /// The client id of the identity which will be used to access key vault.
  final pulumi.Input<String>? identity;
  /// Key vault uri to access the encryption key.
  final pulumi.Input<String>? keyIdentifier;

  /// Creates a new [KeyVaultProperties].
  /// [identity] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  KeyVaultProperties({
    this.identity,
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      keyIdentifier: map['keyIdentifier'] == null ? null : (map['keyIdentifier'] as String).input(),
    );
  }
}

