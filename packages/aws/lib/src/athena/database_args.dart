// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_acl_configuration.dart';
import 'database_encryption_configuration.dart';

/// {@template pulumi_athena_database_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_athena_database_database_args_doc}
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

  /// Creates a new [DatabaseArgs].
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
  DatabaseArgs({
    DatabaseAclConfiguration? aclConfiguration,
    String? bucket,
    String? comment,
    DatabaseEncryptionConfiguration? encryptionConfiguration,
    String? expectedBucketOwner,
    bool? forceDestroy,
    String? name,
    Map<String, String>? properties,
    String? region,
    String? workgroup,
  }) : aclConfiguration = pulumi
           .Input.asOptionalInput<DatabaseAclConfiguration>(aclConfiguration),
       bucket = pulumi.Input.asOptionalInput<String>(bucket),
       comment = pulumi.Input.asOptionalInput<String>(comment),
       encryptionConfiguration =
           pulumi.Input.asOptionalInput<DatabaseEncryptionConfiguration>(
             encryptionConfiguration,
           ),
       expectedBucketOwner = pulumi.Input.asOptionalInput<String>(
         expectedBucketOwner,
       ),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       name = pulumi.Input.asOptionalInput<String>(name),
       properties = pulumi.Input.asOptionalInput<Map<String, String>>(
         properties,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       workgroup = pulumi.Input.asOptionalInput<String>(workgroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseAclConfiguration,
            Map<String, dynamic>
          >(aclConfiguration, (value) => value.toMap()),
      'bucket': ?bucket,
      'comment': ?comment,
      'encryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseEncryptionConfiguration,
            Map<String, dynamic>
          >(encryptionConfiguration, (value) => value.toMap()),
      'expectedBucketOwner': ?expectedBucketOwner,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'properties': ?properties,
      'region': ?region,
      'workgroup': ?workgroup,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      aclConfiguration: map['aclConfiguration'] == null
          ? null
          : DatabaseAclConfiguration.fromMap(
              (map['aclConfiguration'] as Map).cast<String, dynamic>(),
            ),
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      comment: map['comment'] == null ? null : map['comment'] as String,
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : DatabaseEncryptionConfiguration.fromMap(
              (map['encryptionConfiguration'] as Map).cast<String, dynamic>(),
            ),
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      workgroup: map['workgroup'] == null ? null : map['workgroup'] as String,
    );
  }
}
