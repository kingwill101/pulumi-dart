// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// Properties to EncryptionScope
class EncryptionScopePropertiesResponse {
  /// Enumerates the possible value of keySource for Encryption
  final pulumi.Input<String>? keySource;
  /// Properties of KeyVault
  final pulumi.Input<KeyVaultPropertiesResponse>? keyVaultProperties;
  /// Gets the status of the resource at the time the operation was called.
  final pulumi.Input<String> provisioningState;
  /// The encryptionScope state.
  final pulumi.Input<String>? state;

  /// Creates a new [EncryptionScopePropertiesResponse].
  /// [keySource] Enumerates the possible value of keySource for Encryption
  /// [keyVaultProperties] Properties of KeyVault
  /// [provisioningState] Gets the status of the resource at the time the operation was called.
  /// [state] The encryptionScope state.
  const EncryptionScopePropertiesResponse({
    this.keySource,
    this.keyVaultProperties,
    required this.provisioningState,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'state': ?state,
    };
  }

  factory EncryptionScopePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionScopePropertiesResponse(
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

