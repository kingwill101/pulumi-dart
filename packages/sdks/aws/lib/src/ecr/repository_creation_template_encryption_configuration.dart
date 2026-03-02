// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCreationTemplateEncryptionConfiguration {
  /// The encryption type to use for any created repositories. Valid values are `AES256` or `KMS`. Defaults to `AES256`.
  final pulumi.Input<String>? encryptionType;
  /// The ARN of the KMS key to use when `encryption_type` is `KMS`. If not specified, uses the default AWS managed key for ECR.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [RepositoryCreationTemplateEncryptionConfiguration].
  /// [encryptionType] The encryption type to use for any created repositories. Valid values are `AES256` or `KMS`. Defaults to `AES256`.
  /// [kmsKey] The ARN of the KMS key to use when `encryption_type` is `KMS`. If not specified, uses the default AWS managed key for ECR.
  RepositoryCreationTemplateEncryptionConfiguration({
    this.encryptionType,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': ?encryptionType,
      'kmsKey': ?kmsKey,
    };
  }

  factory RepositoryCreationTemplateEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return RepositoryCreationTemplateEncryptionConfiguration(
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
    );
  }
}

