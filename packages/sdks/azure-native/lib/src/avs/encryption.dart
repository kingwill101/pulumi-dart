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
  Encryption({
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
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (EncryptionKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

