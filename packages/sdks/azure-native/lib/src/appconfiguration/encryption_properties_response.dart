// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// The encryption settings for a configuration store.
class EncryptionPropertiesResponse {
  /// Key vault properties.
  final pulumi.Input<KeyVaultPropertiesResponse?>? keyVaultProperties;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [keyVaultProperties] Key vault properties.
  const EncryptionPropertiesResponse({
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
