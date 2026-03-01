// ignore_for_file: unused_element, unnecessary_cast

import 'key_properties.dart';

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultProperties {
  /// Uri of KeyVault
  final String? id;
  /// Identity of the secret that includes name and version.
  final KeyProperties? key;

  /// Creates a new [KeyVaultProperties].
  /// [id] Uri of KeyVault
  /// [key] Identity of the secret that includes name and version.
  KeyVaultProperties({
    this.id,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'key': ?key == null ? null : key!.toMap(),
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      id: map['id'] == null ? null : map['id'] as String,
      key: map['key'] == null ? null : KeyProperties.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

