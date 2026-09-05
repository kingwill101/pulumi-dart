// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption {
  /// Encryption mode to use for job bookmarks data. Valid values: `CSE-KMS`, `DISABLED`. Default value: `DISABLED`.
  final pulumi.Input<String?>? jobBookmarksEncryptionMode;
  /// ARN of the KMS key to be used to encrypt the data.
  final pulumi.Input<String?>? kmsKeyArn;

  /// Creates a new [SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption].
  /// [jobBookmarksEncryptionMode] Encryption mode to use for job bookmarks data. Valid values: `CSE-KMS`, `DISABLED`. Default value: `DISABLED`.
  /// [kmsKeyArn] ARN of the KMS key to be used to encrypt the data.
  const SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption({
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
      jobBookmarksEncryptionMode: (() { final guardedValue = map['jobBookmarksEncryptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
