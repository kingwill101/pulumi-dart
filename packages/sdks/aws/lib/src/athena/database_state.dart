// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_acl_configuration.dart';
import 'database_encryption_configuration.dart';

/// Input properties used for looking up and filtering Database resources.
class DatabaseState {
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

  /// Creates a new [DatabaseState].
  /// [aclConfiguration] That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  /// [bucket] Name of S3 bucket to save the results of the query execution.
  /// [comment] Description of the database.
  /// [encryptionConfiguration] Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below.
  /// [expectedBucketOwner] AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  /// [forceDestroy] Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are *not* recoverable.
  /// [name] Name of the database to create.
  /// [properties] Key-value map of custom metadata properties for the database definition.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroup] Name of the workgroup.
  const DatabaseState({
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
    return <String, dynamic>{
      'aclConfiguration': ?pulumi.Input.mapOptionalInputValue<DatabaseAclConfiguration, Map<String, dynamic>>(aclConfiguration, (value) => value.toMap()),
      'bucket': ?bucket,
      'comment': ?comment,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DatabaseEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'properties': ?properties,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory DatabaseState.fromMap(Map<String, dynamic> map) {
    return DatabaseState(
      aclConfiguration: (() { final guardedValue = map['aclConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseAclConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroup: (() { final guardedValue = map['workgroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

