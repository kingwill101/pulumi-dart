// ignore_for_file: unused_element, unnecessary_cast

import 'workgroup_configuration_result_configuration_acl_configuration.dart';
import 'workgroup_configuration_result_configuration_encryption_configuration.dart';

class WorkgroupConfigurationResultConfiguration {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  final WorkgroupConfigurationResultConfigurationAclConfiguration?
      aclConfiguration;

  /// Configuration block with encryption settings. See Encryption Configuration below.
  final WorkgroupConfigurationResultConfigurationEncryptionConfiguration?
      encryptionConfiguration;

  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  final String? expectedBucketOwner;

  /// Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`. For more information, see [Queries and Query Result Files](https://docs.aws.amazon.com/athena/latest/ug/querying.html).
  final String? outputLocation;

  /// Creates a new [WorkgroupConfigurationResultConfiguration].
  /// [aclConfiguration] That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  /// [encryptionConfiguration] Configuration block with encryption settings. See Encryption Configuration below.
  /// [expectedBucketOwner] AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  /// [outputLocation] Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`. For more information, see [Queries and Query Result Files](https://docs.aws.amazon.com/athena/latest/ug/querying.html).
  WorkgroupConfigurationResultConfiguration({
    this.aclConfiguration,
    this.encryptionConfiguration,
    this.expectedBucketOwner,
    this.outputLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclConfigurationValue = aclConfiguration;
    if (aclConfigurationValue != null) {
      map['aclConfiguration'] = aclConfigurationValue.toMap();
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = encryptionConfigurationValue.toMap();
    }
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final outputLocationValue = outputLocation;
    if (outputLocationValue != null) {
      map['outputLocation'] = outputLocationValue;
    }
    return map;
  }

  factory WorkgroupConfigurationResultConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationResultConfiguration(
      aclConfiguration: map['aclConfiguration'] == null
          ? null
          : WorkgroupConfigurationResultConfigurationAclConfiguration.fromMap(
              (map['aclConfiguration'] as Map).cast<String, dynamic>()),
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : WorkgroupConfigurationResultConfigurationEncryptionConfiguration
              .fromMap((map['encryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      outputLocation: map['outputLocation'] == null
          ? null
          : map['outputLocation'] as String,
    );
  }
}
