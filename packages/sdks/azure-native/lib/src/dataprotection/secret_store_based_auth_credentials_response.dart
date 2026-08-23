// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_resource_response.dart';

/// Secret store based authentication credentials.
class SecretStoreBasedAuthCredentialsResponse {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'SecretStoreBasedAuthCredentials'.
  final pulumi.Input<String> objectType;
  /// Secret store resource
  final pulumi.Input<SecretStoreResourceResponse>? secretStoreResource;

  /// Creates a new [SecretStoreBasedAuthCredentialsResponse].
  /// [objectType] Type of the specific object - used for deserializing
  /// [secretStoreResource] Secret store resource
  const SecretStoreBasedAuthCredentialsResponse({
    required this.objectType,
    this.secretStoreResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'secretStoreResource': ?pulumi.Input.mapOptionalInputValue<SecretStoreResourceResponse, Map<String, dynamic>>(secretStoreResource, (value) => value.toMap()),
    };
  }

  factory SecretStoreBasedAuthCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreBasedAuthCredentialsResponse(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      secretStoreResource: (() { final guardedValue = map['secretStoreResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStoreResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
