// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_vault_properties_response.dart';

/// The properties of customer managed encryption key
class EncryptionResponse {
  /// The key vault where the encryption key is stored
  final pulumi.Input<EncryptionKeyVaultPropertiesResponse>? keyVaultProperties;
  /// Status of customer managed encryption key
  final pulumi.Input<String>? status;

  /// Creates a new [EncryptionResponse].
  /// [keyVaultProperties] The key vault where the encryption key is stored
  /// [status] Status of customer managed encryption key
  const EncryptionResponse({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

