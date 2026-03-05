// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing a secret store resource.
class SecretStoreResource {
  /// Gets or sets the type of secret store
  final pulumi.Input<String> secretStoreType;
  /// Uri to get to the resource
  final pulumi.Input<String>? uri;
  /// Gets or sets value stored in secret store resource
  final pulumi.Input<String>? value;

  /// Creates a new [SecretStoreResource].
  /// [secretStoreType] Gets or sets the type of secret store
  /// [uri] Uri to get to the resource
  /// [value] Gets or sets value stored in secret store resource
  SecretStoreResource({
    required this.secretStoreType,
    this.uri,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStoreType': secretStoreType,
      'uri': ?uri,
      'value': ?value,
    };
  }

  factory SecretStoreResource.fromMap(Map<String, dynamic> map) {
    return SecretStoreResource(
      secretStoreType: pulumi.Input.fromValue(map['secretStoreType'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

