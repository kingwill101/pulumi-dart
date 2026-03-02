// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_configuration_encryption_configuration_cloudwatch_encryption.dart';
import 'security_configuration_encryption_configuration_job_bookmarks_encryption.dart';
import 'security_configuration_encryption_configuration_s3_encryption.dart';

class SecurityConfigurationEncryptionConfiguration {
  final pulumi.Input<SecurityConfigurationEncryptionConfigurationCloudwatchEncryption> cloudwatchEncryption;
  final pulumi.Input<SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption> jobBookmarksEncryption;
  /// A `s3_encryption ` block as described below, which contains encryption configuration for S3 data.
  final pulumi.Input<SecurityConfigurationEncryptionConfigurationS3Encryption> s3Encryption;

  /// Creates a new [SecurityConfigurationEncryptionConfiguration].
  /// [cloudwatchEncryption] Required.
  /// [jobBookmarksEncryption] Required.
  /// [s3Encryption] A `s3_encryption ` block as described below, which contains encryption configuration for S3 data.
  SecurityConfigurationEncryptionConfiguration({
    required this.cloudwatchEncryption,
    required this.jobBookmarksEncryption,
    required this.s3Encryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchEncryption': pulumi.Input.mapInputValue<SecurityConfigurationEncryptionConfigurationCloudwatchEncryption, Map<String, dynamic>>(cloudwatchEncryption, (value) => value.toMap()),
      'jobBookmarksEncryption': pulumi.Input.mapInputValue<SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption, Map<String, dynamic>>(jobBookmarksEncryption, (value) => value.toMap()),
      's3Encryption': pulumi.Input.mapInputValue<SecurityConfigurationEncryptionConfigurationS3Encryption, Map<String, dynamic>>(s3Encryption, (value) => value.toMap()),
    };
  }

  factory SecurityConfigurationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return SecurityConfigurationEncryptionConfiguration(
      cloudwatchEncryption: (SecurityConfigurationEncryptionConfigurationCloudwatchEncryption.fromMap((map['cloudwatchEncryption'] as Map).cast<String, dynamic>())).input(),
      jobBookmarksEncryption: (SecurityConfigurationEncryptionConfigurationJobBookmarksEncryption.fromMap((map['jobBookmarksEncryption'] as Map).cast<String, dynamic>())).input(),
      s3Encryption: (SecurityConfigurationEncryptionConfigurationS3Encryption.fromMap((map['s3Encryption'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

