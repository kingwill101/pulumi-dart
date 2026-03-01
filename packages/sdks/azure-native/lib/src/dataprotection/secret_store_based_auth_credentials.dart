// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_resource.dart';

/// Secret store based authentication credentials.
class SecretStoreBasedAuthCredentials {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'SecretStoreBasedAuthCredentials'.
  final String objectType;
  /// Secret store resource
  final SecretStoreResource? secretStoreResource;

  /// Creates a new [SecretStoreBasedAuthCredentials].
  /// [objectType] Type of the specific object - used for deserializing
  /// [secretStoreResource] Secret store resource
  SecretStoreBasedAuthCredentials({
    required this.objectType,
    this.secretStoreResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'secretStoreResource': ?secretStoreResource == null ? null : secretStoreResource!.toMap(),
    };
  }

  factory SecretStoreBasedAuthCredentials.fromMap(Map<String, dynamic> map) {
    return SecretStoreBasedAuthCredentials(
      objectType: map['objectType'] as String,
      secretStoreResource: map['secretStoreResource'] == null ? null : SecretStoreResource.fromMap((map['secretStoreResource'] as Map).cast<String, dynamic>()),
    );
  }
}

