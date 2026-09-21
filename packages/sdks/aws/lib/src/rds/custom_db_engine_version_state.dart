// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDbEngineVersion resources.
class CustomDbEngineVersionState {
  /// ARN for the custom engine version.
  final pulumi.Input<String?>? arn;
  /// Date and time that the CEV was created.
  final pulumi.Input<String?>? createTime;
  /// Name of the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String?>? databaseInstallationFilesS3BucketName;
  /// Prefix for the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String?>? databaseInstallationFilesS3Prefix;
  /// Name of the DB parameter group family for the CEV.
  final pulumi.Input<String?>? dbParameterGroupFamily;
  /// Description of the CEV.
  final pulumi.Input<String?>? description;
  /// Name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  final pulumi.Input<String?>? engine;
  /// Version of the database engine.
  final pulumi.Input<String?>? engineVersion;
  /// Name of the manifest file within the local filesystem. Conflicts with `manifest`.
  final pulumi.Input<String?>? filename;
  /// ID of the AMI that was created with the CEV.
  final pulumi.Input<String?>? imageId;
  /// ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  final pulumi.Input<String?>? kmsKeyId;
  /// Major version of the database engine.
  final pulumi.Input<String?>? majorEngineVersion;
  /// Manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  final pulumi.Input<String?>? manifest;
  /// Returned manifest file, in JSON format, service generated and often different from input `manifest`.
  final pulumi.Input<String?>? manifestComputed;
  /// Triggers updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  final pulumi.Input<String?>? manifestHash;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  final pulumi.Input<String?>? sourceImageId;
  /// Status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [CustomDbEngineVersionState].
  /// [arn] ARN for the custom engine version.
  /// [createTime] Date and time that the CEV was created.
  /// [databaseInstallationFilesS3BucketName] Name of the Amazon S3 bucket that contains the database installation files.
  /// [databaseInstallationFilesS3Prefix] Prefix for the Amazon S3 bucket that contains the database installation files.
  /// [dbParameterGroupFamily] Name of the DB parameter group family for the CEV.
  /// [description] Description of the CEV.
  /// [engine] Name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  /// [engineVersion] Version of the database engine.
  /// [filename] Name of the manifest file within the local filesystem. Conflicts with `manifest`.
  /// [imageId] ID of the AMI that was created with the CEV.
  /// [kmsKeyId] ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  /// [majorEngineVersion] Major version of the database engine.
  /// [manifest] Manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  /// [manifestComputed] Returned manifest file, in JSON format, service generated and often different from input `manifest`.
  /// [manifestHash] Triggers updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceImageId] ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  /// [status] Status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const CustomDbEngineVersionState({
    this.arn,
    this.createTime,
    this.databaseInstallationFilesS3BucketName,
    this.databaseInstallationFilesS3Prefix,
    this.dbParameterGroupFamily,
    this.description,
    this.engine,
    this.engineVersion,
    this.filename,
    this.imageId,
    this.kmsKeyId,
    this.majorEngineVersion,
    this.manifest,
    this.manifestComputed,
    this.manifestHash,
    this.region,
    this.sourceImageId,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createTime': ?createTime,
      'databaseInstallationFilesS3BucketName': ?databaseInstallationFilesS3BucketName,
      'databaseInstallationFilesS3Prefix': ?databaseInstallationFilesS3Prefix,
      'dbParameterGroupFamily': ?dbParameterGroupFamily,
      'description': ?description,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'filename': ?filename,
      'imageId': ?imageId,
      'kmsKeyId': ?kmsKeyId,
      'majorEngineVersion': ?majorEngineVersion,
      'manifest': ?manifest,
      'manifestComputed': ?manifestComputed,
      'manifestHash': ?manifestHash,
      'region': ?region,
      'sourceImageId': ?sourceImageId,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CustomDbEngineVersionState.fromMap(Map<String, dynamic> map) {
    return CustomDbEngineVersionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseInstallationFilesS3BucketName: (() { final guardedValue = map['databaseInstallationFilesS3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseInstallationFilesS3Prefix: (() { final guardedValue = map['databaseInstallationFilesS3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbParameterGroupFamily: (() { final guardedValue = map['dbParameterGroupFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      majorEngineVersion: (() { final guardedValue = map['majorEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifest: (() { final guardedValue = map['manifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestComputed: (() { final guardedValue = map['manifestComputed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestHash: (() { final guardedValue = map['manifestHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
