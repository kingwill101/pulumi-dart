// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption {
  /// Encryption mode to use for job bookmarks data. Valid values: `CSE-KMS`, `DISABLED`. Default value: `DISABLED`.
  final pulumi.Input<String>? jobBookmarksEncryptionMode;
  /// Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption].
  /// [jobBookmarksEncryptionMode] Encryption mode to use for job bookmarks data. Valid values: `CSE-KMS`, `DISABLED`. Default value: `DISABLED`.
  /// [kmsKeyArn] Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.
  SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption({
    this.jobBookmarksEncryptionMode,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobBookmarksEncryptionMode': ?jobBookmarksEncryptionMode,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption(
      jobBookmarksEncryptionMode: map['jobBookmarksEncryptionMode'] == null ? null : ((map['jobBookmarksEncryptionMode'] as String).input()).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
    );
  }
}

