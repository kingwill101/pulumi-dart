// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCreationTemplateEncryptionConfiguration {
  /// The encryption type to use for any created repositories. Valid values are `AES256` or `KMS`. Defaults to `AES256`.
  final pulumi.Input<String?>? encryptionType;
  /// The ARN of the KMS key to use when `encryptionType` is `KMS`. If not specified, uses the default AWS managed key for ECR.
  final pulumi.Input<String?>? kmsKey;

  /// Creates a new [RepositoryCreationTemplateEncryptionConfiguration].
  /// [encryptionType] The encryption type to use for any created repositories. Valid values are `AES256` or `KMS`. Defaults to `AES256`.
  /// [kmsKey] The ARN of the KMS key to use when `encryptionType` is `KMS`. If not specified, uses the default AWS managed key for ECR.
  const RepositoryCreationTemplateEncryptionConfiguration({
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
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
