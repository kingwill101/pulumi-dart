// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlueprintEncryptionConfiguration {
  /// Map of key-value pairs to use as the KMS encryption context.
  final pulumi.Input<Map<String, String>?>? kmsEncryptionContext;
  /// Identifier of the KMS key used to encrypt the blueprint.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [BlueprintEncryptionConfiguration].
  /// [kmsEncryptionContext] Map of key-value pairs to use as the KMS encryption context.
  /// [kmsKeyId] Identifier of the KMS key used to encrypt the blueprint.
  const BlueprintEncryptionConfiguration({
    this.kmsEncryptionContext,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kmsKeyId': kmsKeyId,
    };
  }

  factory BlueprintEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return BlueprintEncryptionConfiguration(
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}
