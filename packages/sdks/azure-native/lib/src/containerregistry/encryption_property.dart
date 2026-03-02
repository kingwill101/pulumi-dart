// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

class EncryptionProperty {
  /// Key vault properties.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;
  /// Indicates whether or not the encryption is enabled for container registry.
  final pulumi.Input<String>? status;

  /// Creates a new [EncryptionProperty].
  /// [keyVaultProperties] Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for container registry.
  EncryptionProperty({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory EncryptionProperty.fromMap(Map<String, dynamic> map) {
    return EncryptionProperty(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

