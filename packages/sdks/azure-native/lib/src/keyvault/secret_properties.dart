// ignore_for_file: unused_element, unnecessary_cast

import 'secret_attributes.dart';

/// Properties of the secret
class SecretProperties {
  /// The attributes of the secret.
  final SecretAttributes? attributes;
  /// The content type of the secret.
  final String? contentType;
  /// The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  final String? value;

  /// Creates a new [SecretProperties].
  /// [attributes] The attributes of the secret.
  /// [contentType] The content type of the secret.
  /// [value] The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  SecretProperties({
    this.attributes,
    this.contentType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : attributes!.toMap(),
      'contentType': ?contentType,
      'value': ?value,
    };
  }

  factory SecretProperties.fromMap(Map<String, dynamic> map) {
    return SecretProperties(
      attributes: map['attributes'] == null ? null : SecretAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>()),
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

