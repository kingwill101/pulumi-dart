// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryCreationTemplateEncryptionConfiguration {
  /// Encryption type to use for any created repositories, either `AES256` or `KMS`.
  final pulumi.Input<String> encryptionType;
  /// If `encryption_type` is `KMS`, the ARN of the KMS key used.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [GetRepositoryCreationTemplateEncryptionConfiguration].
  /// [encryptionType] Encryption type to use for any created repositories, either `AES256` or `KMS`.
  /// [kmsKey] If `encryption_type` is `KMS`, the ARN of the KMS key used.
  GetRepositoryCreationTemplateEncryptionConfiguration({
    required this.encryptionType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKey': kmsKey,
    };
  }

  factory GetRepositoryCreationTemplateEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateEncryptionConfiguration(
      encryptionType: (map['encryptionType'] as String).input(),
      kmsKey: (map['kmsKey'] as String).input(),
    );
  }
}

