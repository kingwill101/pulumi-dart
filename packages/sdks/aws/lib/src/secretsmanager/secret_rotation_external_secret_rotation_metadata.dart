// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecretRotationExternalSecretRotationMetadata {
  /// Metadata key name. Partner-specific keys are required for each external secret type. See [partner documentation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/mes-partners.html) for required keys.
  final pulumi.Input<String> key;
  /// Metadata value for the specified key.
  final pulumi.Input<String> value;

  /// Creates a new [SecretRotationExternalSecretRotationMetadata].
  /// [key] Metadata key name. Partner-specific keys are required for each external secret type. See [partner documentation](https://docs.aws.amazon.com/secretsmanager/latest/userguide/mes-partners.html) for required keys.
  /// [value] Metadata value for the specified key.
  const SecretRotationExternalSecretRotationMetadata({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SecretRotationExternalSecretRotationMetadata.fromMap(Map<String, dynamic> map) {
    return SecretRotationExternalSecretRotationMetadata(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
