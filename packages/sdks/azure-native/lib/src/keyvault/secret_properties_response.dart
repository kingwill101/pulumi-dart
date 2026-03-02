// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_attributes_response.dart';

/// Properties of the secret
class SecretPropertiesResponse {
  /// The attributes of the secret.
  final pulumi.Input<SecretAttributesResponse>? attributes;
  /// The content type of the secret.
  final pulumi.Input<String>? contentType;
  /// The URI to retrieve the current version of the secret.
  final pulumi.Input<String> secretUri;
  /// The URI to retrieve the specific version of the secret.
  final pulumi.Input<String> secretUriWithVersion;
  /// The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  final pulumi.Input<String>? value;

  /// Creates a new [SecretPropertiesResponse].
  /// [attributes] The attributes of the secret.
  /// [contentType] The content type of the secret.
  /// [secretUri] The URI to retrieve the current version of the secret.
  /// [secretUriWithVersion] The URI to retrieve the specific version of the secret.
  /// [value] The value of the secret. NOTE: 'value' will never be returned from the service, as APIs using this model are is intended for internal use in ARM deployments. Users should use the data-plane REST service for interaction with vault secrets.
  SecretPropertiesResponse({
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
      attributes: map['attributes'] == null ? null : (SecretAttributesResponse.fromMap((map['attributes']! as Map).cast<String, dynamic>())).input(),
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      secretUri: (map['secretUri'] as String).input(),
      secretUriWithVersion: (map['secretUriWithVersion'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

