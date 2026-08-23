// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretRotationExternalSecretRotationMetadata {
  /// Metadata key name.
  final pulumi.Input<String> key;
  /// Metadata value for the specified key.
  final pulumi.Input<String> value;

  /// Creates a new [GetSecretRotationExternalSecretRotationMetadata].
  /// [key] Metadata key name.
  /// [value] Metadata value for the specified key.
  const GetSecretRotationExternalSecretRotationMetadata({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetSecretRotationExternalSecretRotationMetadata.fromMap(Map<String, dynamic> map) {
    return GetSecretRotationExternalSecretRotationMetadata(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
