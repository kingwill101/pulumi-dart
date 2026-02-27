// ignore_for_file: unused_element, unnecessary_cast

import '../security_configuration_encryption_configuration_cloudwatch_encryption/security_configuration_encryption_configuration_cloudwatch_encryption.dart';
import '../security_configuration_encryption_configuration_job_bookmarks_encryption/security_configuration_encryption_configuration_job_bookmarks_encryption.dart';
import '../security_configuration_encryption_configuration_s3_encryption/security_configuration_encryption_configuration_s3_encryption.dart';

class SecurityConfigurationEncryptionConfiguration {
  final SecurityConfigurationEncryptionConfigurationCloudwatchEncryption
      cloudwatchEncryption;
  final SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption
      jobBookmarksEncryption;

  /// A `s3_encryption ` block as described below, which contains encryption configuration for S3 data.
  final SecurityConfigurationEncryptionConfigurationS3Encryption s3Encryption;

  SecurityConfigurationEncryptionConfiguration({
    required this.cloudwatchEncryption,
    required this.jobBookmarksEncryption,
    required this.s3Encryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchEncryption'] = cloudwatchEncryption.toMap();
    map['jobBookmarksEncryption'] = jobBookmarksEncryption.toMap();
    map['s3Encryption'] = s3Encryption.toMap();
    return map;
  }

  factory SecurityConfigurationEncryptionConfiguration.fromMap(
      Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfiguration(
      cloudwatchEncryption:
          SecurityConfigurationEncryptionConfigurationCloudwatchEncryption
              .fromMap(
                  (map['cloudwatchEncryption'] as Map).cast<String, dynamic>()),
      jobBookmarksEncryption:
          SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption
              .fromMap((map['jobBookmarksEncryption'] as Map)
                  .cast<String, dynamic>()),
      s3Encryption:
          SecurityConfigurationEncryptionConfigurationS3Encryption.fromMap(
              (map['s3Encryption'] as Map).cast<String, dynamic>()),
    );
  }
}
