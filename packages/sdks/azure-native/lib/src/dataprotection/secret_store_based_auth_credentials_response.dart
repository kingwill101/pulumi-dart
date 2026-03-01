// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_resource_response.dart';

/// Secret store based authentication credentials.
class SecretStoreBasedAuthCredentialsResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'SecretStoreBasedAuthCredentials'.
  final String objectType;
  /// Secret store resource
  final SecretStoreResourceResponse? secretStoreResource;

  /// Creates a new [SecretStoreBasedAuthCredentialsResponse].
  /// [objectType] Type of the specific object - used for deserializing
  /// [secretStoreResource] Secret store resource
  SecretStoreBasedAuthCredentialsResponse({
    required this.objectType,
    this.secretStoreResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'secretStoreResource': ?secretStoreResource == null ? null : secretStoreResource!.toMap(),
    };
  }

  factory SecretStoreBasedAuthCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreBasedAuthCredentialsResponse(
      objectType: map['objectType'] as String,
      secretStoreResource: map['secretStoreResource'] == null ? null : SecretStoreResourceResponse.fromMap((map['secretStoreResource'] as Map).cast<String, dynamic>()),
    );
  }
}

