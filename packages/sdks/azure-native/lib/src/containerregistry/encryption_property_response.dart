// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

class EncryptionPropertyResponse {
  /// Key vault properties.
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;
  /// Indicates whether or not the encryption is enabled for container registry.
  final pulumi.Input<String>? status;

  /// Creates a new [EncryptionPropertyResponse].
  /// [keyVaultProperties] Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for container registry.
  EncryptionPropertyResponse({
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
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

