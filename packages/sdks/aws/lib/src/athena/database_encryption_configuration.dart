// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseEncryptionConfiguration {
  /// Type of key; one of `SSE_S3`, `SSE_KMS`, `CSE_KMS`
  final pulumi.Input<String> encryptionOption;
  /// KMS key ARN or ID; required for key types `SSE_KMS` and `CSE_KMS`.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [DatabaseEncryptionConfiguration].
  /// [encryptionOption] Type of key; one of `SSE_S3`, `SSE_KMS`, `CSE_KMS`
  /// [kmsKey] KMS key ARN or ID; required for key types `SSE_KMS` and `CSE_KMS`.
  const DatabaseEncryptionConfiguration({
    required this.encryptionOption,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionOption': encryptionOption,
      'kmsKey': ?kmsKey,
    };
  }

  factory DatabaseEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DatabaseEncryptionConfiguration(
      encryptionOption: pulumi.Input.fromValue(map['encryptionOption'] as String),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

