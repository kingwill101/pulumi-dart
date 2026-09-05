// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_result_configuration_acl_configuration.dart';
import 'workgroup_configuration_result_configuration_encryption_configuration.dart';

class WorkgroupConfigurationResultConfiguration {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  final pulumi.Input<WorkgroupConfigurationResultConfigurationAclConfiguration?>? aclConfiguration;
  /// Configuration block with encryption settings. See Encryption Configuration below.
  final pulumi.Input<WorkgroupConfigurationResultConfigurationEncryptionConfiguration?>? encryptionConfiguration;
  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  final pulumi.Input<String?>? expectedBucketOwner;
  /// Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`. For more information, see [Queries and Query Result Files](https://docs.aws.amazon.com/athena/latest/ug/querying.html).
  final pulumi.Input<String?>? outputLocation;

  /// Creates a new [WorkgroupConfigurationResultConfiguration].
  /// [aclConfiguration] That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  /// [encryptionConfiguration] Configuration block with encryption settings. See Encryption Configuration below.
  /// [expectedBucketOwner] AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  /// [outputLocation] Location in Amazon S3 where your query results are stored, such as `s3://path/to/query/bucket/`. For more information, see [Queries and Query Result Files](https://docs.aws.amazon.com/athena/latest/ug/querying.html).
  const WorkgroupConfigurationResultConfiguration({
    this.aclConfiguration,
    this.encryptionConfiguration,
    this.expectedBucketOwner,
    this.outputLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationResultConfigurationAclConfiguration, Map<String, dynamic>>(aclConfiguration, (value) => value.toMap()),
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationResultConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'outputLocation': ?outputLocation,
    };
  }

  factory WorkgroupConfigurationResultConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationResultConfiguration(
      aclConfiguration: (() { final guardedValue = map['aclConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationResultConfigurationAclConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationResultConfigurationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputLocation: (() { final guardedValue = map['outputLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
