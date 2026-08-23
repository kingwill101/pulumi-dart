// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_custom_db_engine_version_custom_db_engine_version_args_doc}
/// The set of arguments for CustomDbEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_rds_custom_db_engine_version_custom_db_engine_version_args_doc}
class CustomDbEngineVersionArgs {
  /// The name of the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String>? databaseInstallationFilesS3BucketName;
  /// The prefix for the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String>? databaseInstallationFilesS3Prefix;
  /// The description of the CEV.
  final pulumi.Input<String>? description;
  /// The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  final pulumi.Input<String> engine;
  /// The version of the database engine.
  final pulumi.Input<String> engineVersion;
  /// The name of the manifest file within the local filesystem. Conflicts with `manifest`.
  final pulumi.Input<String>? filename;
  /// The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  final pulumi.Input<String>? kmsKeyId;
  /// The manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  final pulumi.Input<String>? manifest;
  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  final pulumi.Input<String>? manifestHash;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  final pulumi.Input<String>? sourceImageId;
  /// The status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomDbEngineVersionArgs].
  /// [databaseInstallationFilesS3BucketName] The name of the Amazon S3 bucket that contains the database installation files.
  /// [databaseInstallationFilesS3Prefix] The prefix for the Amazon S3 bucket that contains the database installation files.
  /// [description] The description of the CEV.
  /// [engine] The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  /// [engineVersion] The version of the database engine.
  /// [filename] The name of the manifest file within the local filesystem. Conflicts with `manifest`.
  /// [kmsKeyId] The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  /// [manifest] The manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  /// [manifestHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceImageId] The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  /// [status] The status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CustomDbEngineVersionArgs({
    this.databaseInstallationFilesS3BucketName,
    this.databaseInstallationFilesS3Prefix,
    this.description,
    required this.engine,
    required this.engineVersion,
    this.filename,
    this.kmsKeyId,
    this.manifest,
    this.manifestHash,
    this.region,
    this.sourceImageId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstallationFilesS3BucketName': ?databaseInstallationFilesS3BucketName,
      'databaseInstallationFilesS3Prefix': ?databaseInstallationFilesS3Prefix,
      'description': ?description,
      'engine': engine,
      'engineVersion': engineVersion,
      'filename': ?filename,
      'kmsKeyId': ?kmsKeyId,
      'manifest': ?manifest,
      'manifestHash': ?manifestHash,
      'region': ?region,
      'sourceImageId': ?sourceImageId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory CustomDbEngineVersionArgs.fromMap(Map<String, dynamic> map) {
    return CustomDbEngineVersionArgs(
      databaseInstallationFilesS3BucketName: (() { final guardedValue = map['databaseInstallationFilesS3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseInstallationFilesS3Prefix: (() { final guardedValue = map['databaseInstallationFilesS3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifest: (() { final guardedValue = map['manifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestHash: (() { final guardedValue = map['manifestHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
