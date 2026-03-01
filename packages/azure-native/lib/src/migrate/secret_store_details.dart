// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_properties.dart';

class SecretStoreDetails {
  final String? secretStore;
  final SecretStoreProperties? secretStoreProperties;

  /// Creates a new [SecretStoreDetails].
  /// [secretStore] Optional.
  /// [secretStoreProperties] Optional.
  SecretStoreDetails({
    this.secretStore,
    this.secretStoreProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStore': ?secretStore,
      'secretStoreProperties': ?secretStoreProperties == null ? null : secretStoreProperties!.toMap(),
    };
  }

  factory SecretStoreDetails.fromMap(Map<String, dynamic> map) {
    return SecretStoreDetails(
      secretStore: map['secretStore'] == null ? null : map['secretStore'] as String,
      secretStoreProperties: map['secretStoreProperties'] == null ? null : SecretStoreProperties.fromMap((map['secretStoreProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

