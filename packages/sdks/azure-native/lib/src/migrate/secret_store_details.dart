// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_properties.dart';

class SecretStoreDetails {
  final pulumi.Input<String>? secretStore;
  final pulumi.Input<SecretStoreProperties>? secretStoreProperties;

  /// Creates a new [SecretStoreDetails].
  /// [secretStore] Optional.
  /// [secretStoreProperties] Optional.
  SecretStoreDetails({this.secretStore, this.secretStoreProperties});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStore': ?secretStore,
      'secretStoreProperties':
          ?pulumi.Input.mapOptionalInputValue<
            SecretStoreProperties,
            Map<String, dynamic>
          >(secretStoreProperties, (value) => value.toMap()),
    };
  }

  factory SecretStoreDetails.fromMap(Map<String, dynamic> map) {
    return SecretStoreDetails(
      secretStore: (() {
        final guardedValue = map['secretStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretStoreProperties: (() {
        final guardedValue = map['secretStoreProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecretStoreProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
