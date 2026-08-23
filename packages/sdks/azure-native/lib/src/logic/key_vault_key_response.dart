// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_response_attributes.dart';

/// The key vault key.
class KeyVaultKeyResponse {
  /// The key attributes.
  final pulumi.Input<KeyVaultKeyResponseAttributes>? attributes;
  /// The key id.
  final pulumi.Input<String>? kid;

  /// Creates a new [KeyVaultKeyResponse].
  /// [attributes] The key attributes.
  /// [kid] The key id.
  const KeyVaultKeyResponse({
    this.attributes,
    this.kid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyResponseAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'kid': ?kid,
    };
  }

  factory KeyVaultKeyResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyResponse(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultKeyResponseAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kid: (() { final guardedValue = map['kid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
