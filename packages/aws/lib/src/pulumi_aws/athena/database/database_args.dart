// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_acl_configuration/database_acl_configuration.dart';
import '../database_encryption_configuration/database_encryption_configuration.dart';

/// The set of arguments for Database.
class DatabaseArgs {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  final pulumi.Input<DatabaseAclConfiguration>? aclConfiguration;

  /// Name of S3 bucket to save the results of the query execution.
  final pulumi.Input<String>? bucket;

  /// Description of the database.
  final pulumi.Input<String>? comment;

  /// Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below.
  final pulumi.Input<DatabaseEncryptionConfiguration>? encryptionConfiguration;

  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are *not* recoverable.
  final pulumi.Input<bool>? forceDestroy;

  /// Name of the database to create.
  final pulumi.Input<String>? name;

  /// Key-value map of custom metadata properties for the database definition.
  final pulumi.Input<Map<String, String>>? properties;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the workgroup.
  final pulumi.Input<String>? workgroup;

  DatabaseArgs({
    this.aclConfiguration,
    this.bucket,
    this.comment,
    this.encryptionConfiguration,
    this.expectedBucketOwner,
    this.forceDestroy,
    this.name,
    this.properties,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aclConfigurationValue = aclConfiguration;
    if (aclConfigurationValue != null) {
      map['aclConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DatabaseAclConfiguration, Map<String, dynamic>>(
          aclConfigurationValue, (value) => value.toMap());
    }
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DatabaseEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final workgroupValue = workgroup;
    if (workgroupValue != null) {
      map['workgroup'] = workgroupValue;
    }
    return map;
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      aclConfiguration: pulumi.Input.asOptionalInput<DatabaseAclConfiguration>(
          map['aclConfiguration']),
      bucket: pulumi.Input.asOptionalInput<String>(map['bucket']),
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      encryptionConfiguration:
          pulumi.Input.asOptionalInput<DatabaseEncryptionConfiguration>(
              map['encryptionConfiguration']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      properties:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['properties']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workgroup: pulumi.Input.asOptionalInput<String>(map['workgroup']),
    );
  }
}
