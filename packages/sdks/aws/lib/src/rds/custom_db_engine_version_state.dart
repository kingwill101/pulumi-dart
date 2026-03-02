// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDbEngineVersion resources.
class CustomDbEngineVersionState {
  /// The Amazon Resource Name (ARN) for the custom engine version.
  final pulumi.Input<String>? arn;
  /// The date and time that the CEV was created.
  final pulumi.Input<String>? createTime;
  /// The name of the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String>? databaseInstallationFilesS3BucketName;
  /// The prefix for the Amazon S3 bucket that contains the database installation files.
  final pulumi.Input<String>? databaseInstallationFilesS3Prefix;
  /// The name of the DB parameter group family for the CEV.
  final pulumi.Input<String>? dbParameterGroupFamily;
  /// The description of the CEV.
  final pulumi.Input<String>? description;
  /// The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  final pulumi.Input<String>? engine;
  /// The version of the database engine.
  final pulumi.Input<String>? engineVersion;
  /// The name of the manifest file within the local filesystem. Conflicts with `manifest`.
  final pulumi.Input<String>? filename;
  /// The ID of the AMI that was created with the CEV.
  final pulumi.Input<String>? imageId;
  /// The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  final pulumi.Input<String>? kmsKeyId;
  /// The major version of the database engine.
  final pulumi.Input<String>? majorEngineVersion;
  /// The manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  final pulumi.Input<String>? manifest;
  /// The returned manifest file, in JSON format, service generated and often different from input `manifest`.
  final pulumi.Input<String>? manifestComputed;
  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  final pulumi.Input<String>? manifestHash;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  final pulumi.Input<String>? sourceImageId;
  /// The status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CustomDbEngineVersionState].
  /// [arn] The Amazon Resource Name (ARN) for the custom engine version.
  /// [createTime] The date and time that the CEV was created.
  /// [databaseInstallationFilesS3BucketName] The name of the Amazon S3 bucket that contains the database installation files.
  /// [databaseInstallationFilesS3Prefix] The prefix for the Amazon S3 bucket that contains the database installation files.
  /// [dbParameterGroupFamily] The name of the DB parameter group family for the CEV.
  /// [description] The description of the CEV.
  /// [engine] The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  /// [engineVersion] The version of the database engine.
  /// [filename] The name of the manifest file within the local filesystem. Conflicts with `manifest`.
  /// [imageId] The ID of the AMI that was created with the CEV.
  /// [kmsKeyId] The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  /// [majorEngineVersion] The major version of the database engine.
  /// [manifest] The manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  /// [manifestComputed] The returned manifest file, in JSON format, service generated and often different from input `manifest`.
  /// [manifestHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceImageId] The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  /// [status] The status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CustomDbEngineVersionState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      databaseInstallationFilesS3BucketName: map['databaseInstallationFilesS3BucketName'] == null ? null : (map['databaseInstallationFilesS3BucketName'] as String).input(),
      databaseInstallationFilesS3Prefix: map['databaseInstallationFilesS3Prefix'] == null ? null : (map['databaseInstallationFilesS3Prefix'] as String).input(),
      dbParameterGroupFamily: map['dbParameterGroupFamily'] == null ? null : (map['dbParameterGroupFamily'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      filename: map['filename'] == null ? null : (map['filename'] as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      majorEngineVersion: map['majorEngineVersion'] == null ? null : (map['majorEngineVersion'] as String).input(),
      manifest: map['manifest'] == null ? null : (map['manifest'] as String).input(),
      manifestComputed: map['manifestComputed'] == null ? null : (map['manifestComputed'] as String).input(),
      manifestHash: map['manifestHash'] == null ? null : (map['manifestHash'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceImageId: map['sourceImageId'] == null ? null : (map['sourceImageId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

