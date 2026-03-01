// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_properties_response.dart';

class SecretStoreDetailsResponse {
  final String? secretStore;
  final SecretStorePropertiesResponse? secretStoreProperties;

  /// Creates a new [SecretStoreDetailsResponse].
  /// [secretStore] Optional.
  /// [secretStoreProperties] Optional.
  SecretStoreDetailsResponse({
    this.secretStore,
    this.secretStoreProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStore': ?secretStore,
      'secretStoreProperties': ?secretStoreProperties == null ? null : secretStoreProperties!.toMap(),
    };
  }

  factory SecretStoreDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreDetailsResponse(
      secretStore: map['secretStore'] == null ? null : map['secretStore'] as String,
      secretStoreProperties: map['secretStoreProperties'] == null ? null : SecretStorePropertiesResponse.fromMap((map['secretStoreProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

