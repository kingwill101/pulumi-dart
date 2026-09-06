// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

class EncryptionPropertyResponse {
  /// Key vault properties.
  final pulumi.Input<KeyVaultPropertiesResponse?>? keyVaultProperties;
  /// Indicates whether or not the encryption is enabled for container registry.
  final pulumi.Input<String?>? status;

  /// Creates a new [EncryptionPropertyResponse].
  /// [keyVaultProperties] Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for container registry.
  const EncryptionPropertyResponse({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory EncryptionPropertyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertyResponse(
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
