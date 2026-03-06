// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_resource.dart';

/// Secret store based authentication credentials.
class SecretStoreBasedAuthCredentials {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'SecretStoreBasedAuthCredentials'.
  final pulumi.Input<String> objectType;
  /// Secret store resource
  final pulumi.Input<SecretStoreResource>? secretStoreResource;

  /// Creates a new [SecretStoreBasedAuthCredentials].
  /// [objectType] Type of the specific object - used for deserializing
  /// [secretStoreResource] Secret store resource
  const SecretStoreBasedAuthCredentials({
    required this.objectType,
    this.secretStoreResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
      'secretStoreResource': ?pulumi.Input.mapOptionalInputValue<SecretStoreResource, Map<String, dynamic>>(secretStoreResource, (value) => value.toMap()),
    };
  }

  factory SecretStoreBasedAuthCredentials.fromMap(Map<String, dynamic> map) {
    return SecretStoreBasedAuthCredentials(
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      secretStoreResource: (() { final guardedValue = map['secretStoreResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStoreResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

