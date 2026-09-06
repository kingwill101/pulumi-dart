// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_attributes.dart';

/// Properties of the secret
class SecretProperties {
  /// The attributes of the secret.
  final pulumi.Input<SecretAttributes?>? attributes;
  /// The content type of the secret.
  final pulumi.Input<String?>? contentType;
  /// The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  final pulumi.Input<String?>? value;

  /// Creates a new [SecretProperties].
  /// [attributes] The attributes of the secret.
  /// [contentType] The content type of the secret.
  /// [value] The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  const SecretProperties({
    this.attributes,
    this.contentType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<SecretAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'contentType': ?contentType,
      'value': ?value,
    };
  }

  factory SecretProperties.fromMap(Map<String, dynamic> map) {
    return SecretProperties(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
