// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_properties_response.dart';

class SecretStoreDetailsResponse {
  final pulumi.Input<String>? secretStore;
  final pulumi.Input<SecretStorePropertiesResponse>? secretStoreProperties;

  /// Creates a new [SecretStoreDetailsResponse].
  /// [secretStore] Optional.
  /// [secretStoreProperties] Optional.
  const SecretStoreDetailsResponse({
    this.secretStore,
    this.secretStoreProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStore': ?secretStore,
      'secretStoreProperties': ?pulumi.Input.mapOptionalInputValue<SecretStorePropertiesResponse, Map<String, dynamic>>(secretStoreProperties, (value) => value.toMap()),
    };
  }

  factory SecretStoreDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreDetailsResponse(
      secretStore: (() { final guardedValue = map['secretStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStoreProperties: (() { final guardedValue = map['secretStoreProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStorePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
