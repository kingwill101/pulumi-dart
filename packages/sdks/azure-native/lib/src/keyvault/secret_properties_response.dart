// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_attributes_response.dart';

/// Properties of the secret
class SecretPropertiesResponse {
  /// The attributes of the secret.
  final pulumi.Input<SecretAttributesResponse?>? attributes;
  /// The content type of the secret.
  final pulumi.Input<String?>? contentType;
  /// The URI to retrieve the current version of the secret.
  final pulumi.Input<String> secretUri;
  /// The URI to retrieve the specific version of the secret.
  final pulumi.Input<String> secretUriWithVersion;
  /// The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  final pulumi.Input<String?>? value;

  /// Creates a new [SecretPropertiesResponse].
  /// [attributes] The attributes of the secret.
  /// [contentType] The content type of the secret.
  /// [secretUri] The URI to retrieve the current version of the secret.
  /// [secretUriWithVersion] The URI to retrieve the specific version of the secret.
  /// [value] The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  const SecretPropertiesResponse({
    this.attributes,
    this.contentType,
    required this.secretUri,
    required this.secretUriWithVersion,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<SecretAttributesResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'contentType': ?contentType,
      'secretUri': secretUri,
      'secretUriWithVersion': secretUriWithVersion,
      'value': ?value,
    };
  }

  factory SecretPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SecretPropertiesResponse(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretUri: pulumi.Input.fromValue(map['secretUri'] as String),
      secretUriWithVersion: pulumi.Input.fromValue(map['secretUriWithVersion'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
