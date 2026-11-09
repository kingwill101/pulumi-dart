// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEncryptionConfiguration {
  /// Map of key-value pairs to use as the KMS encryption context.
  final pulumi.Input<Map<String, String>?>? kmsEncryptionContext;
  /// Identifier of the KMS key used to encrypt the project.
  final pulumi.Input<String> kmsKeyId;

  /// Creates a new [ProjectEncryptionConfiguration].
  /// [kmsEncryptionContext] Map of key-value pairs to use as the KMS encryption context.
  /// [kmsKeyId] Identifier of the KMS key used to encrypt the project.
  const ProjectEncryptionConfiguration({
    this.kmsEncryptionContext,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'kmsKeyId': kmsKeyId,
    };
  }

  factory ProjectEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectEncryptionConfiguration(
      kmsEncryptionContext: (() { final guardedValue = map['kmsEncryptionContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
    );
  }
}
