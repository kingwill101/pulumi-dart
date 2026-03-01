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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? databaseInstallationFilesS3BucketName,
    pulumi.Output<String>? databaseInstallationFilesS3Prefix,
    pulumi.Output<String>? dbParameterGroupFamily,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? filename,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? majorEngineVersion,
    pulumi.Output<String>? manifest,
    pulumi.Output<String>? manifestComputed,
    pulumi.Output<String>? manifestHash,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      databaseInstallationFilesS3BucketName = pulumi.Input.asOptionalInput<String>(databaseInstallationFilesS3BucketName),
      databaseInstallationFilesS3Prefix = pulumi.Input.asOptionalInput<String>(databaseInstallationFilesS3Prefix),
      dbParameterGroupFamily = pulumi.Input.asOptionalInput<String>(dbParameterGroupFamily),
      description = pulumi.Input.asOptionalInput<String>(description),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      filename = pulumi.Input.asOptionalInput<String>(filename),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      majorEngineVersion = pulumi.Input.asOptionalInput<String>(majorEngineVersion),
      manifest = pulumi.Input.asOptionalInput<String>(manifest),
      manifestComputed = pulumi.Input.asOptionalInput<String>(manifestComputed),
      manifestHash = pulumi.Input.asOptionalInput<String>(manifestHash),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      databaseInstallationFilesS3BucketName: map['databaseInstallationFilesS3BucketName'] == null ? null : pulumi.Output.create<String>(map['databaseInstallationFilesS3BucketName'] as String),
      databaseInstallationFilesS3Prefix: map['databaseInstallationFilesS3Prefix'] == null ? null : pulumi.Output.create<String>(map['databaseInstallationFilesS3Prefix'] as String),
      dbParameterGroupFamily: map['dbParameterGroupFamily'] == null ? null : pulumi.Output.create<String>(map['dbParameterGroupFamily'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      filename: map['filename'] == null ? null : pulumi.Output.create<String>(map['filename'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      majorEngineVersion: map['majorEngineVersion'] == null ? null : pulumi.Output.create<String>(map['majorEngineVersion'] as String),
      manifest: map['manifest'] == null ? null : pulumi.Output.create<String>(map['manifest'] as String),
      manifestComputed: map['manifestComputed'] == null ? null : pulumi.Output.create<String>(map['manifestComputed'] as String),
      manifestHash: map['manifestHash'] == null ? null : pulumi.Output.create<String>(map['manifestHash'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

