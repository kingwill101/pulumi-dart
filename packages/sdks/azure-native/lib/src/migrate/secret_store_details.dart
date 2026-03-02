// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_properties.dart';

class SecretStoreDetails {
  final pulumi.Input<String>? secretStore;
  final pulumi.Input<SecretStoreProperties>? secretStoreProperties;

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
      'secretStoreProperties': ?pulumi.Input.mapOptionalInputValue<SecretStoreProperties, Map<String, dynamic>>(secretStoreProperties, (value) => value.toMap()),
    };
  }

  factory SecretStoreDetails.fromMap(Map<String, dynamic> map) {
    return SecretStoreDetails(
      secretStore: map['secretStore'] == null ? null : (map['secretStore'] as String).input(),
      secretStoreProperties: map['secretStoreProperties'] == null ? null : (SecretStoreProperties.fromMap((map['secretStoreProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

