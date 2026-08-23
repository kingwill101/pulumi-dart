// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_vault_properties.dart';

/// The properties of customer managed encryption key
class Encryption {
  /// The key vault where the encryption key is stored
  final pulumi.Input<EncryptionKeyVaultProperties>? keyVaultProperties;
  /// Status of customer managed encryption key
  final pulumi.Input<String>? status;

  /// Creates a new [Encryption].
  /// [keyVaultProperties] The key vault where the encryption key is stored
  /// [status] Status of customer managed encryption key
  const Encryption({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
