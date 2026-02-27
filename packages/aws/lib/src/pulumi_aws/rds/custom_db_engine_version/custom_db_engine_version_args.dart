// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CustomDbEngineVersion.
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

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  CustomDbEngineVersionArgs({
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
    final map = <String, dynamic>{};
    final databaseInstallationFilesS3BucketNameValue =
        databaseInstallationFilesS3BucketName;
    if (databaseInstallationFilesS3BucketNameValue != null) {
      map['databaseInstallationFilesS3BucketName'] =
          databaseInstallationFilesS3BucketNameValue;
    }
    final databaseInstallationFilesS3PrefixValue =
        databaseInstallationFilesS3Prefix;
    if (databaseInstallationFilesS3PrefixValue != null) {
      map['databaseInstallationFilesS3Prefix'] =
          databaseInstallationFilesS3PrefixValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['engine'] = engine;
    map['engineVersion'] = engineVersion;
    final filenameValue = filename;
    if (filenameValue != null) {
      map['filename'] = filenameValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final manifestValue = manifest;
    if (manifestValue != null) {
      map['manifest'] = manifestValue;
    }
    final manifestHashValue = manifestHash;
    if (manifestHashValue != null) {
      map['manifestHash'] = manifestHashValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceImageIdValue = sourceImageId;
    if (sourceImageIdValue != null) {
      map['sourceImageId'] = sourceImageIdValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CustomDbEngineVersionArgs.fromMap(Map<String, dynamic> map) {
    return CustomDbEngineVersionArgs(
      databaseInstallationFilesS3BucketName:
          pulumi.Input.asOptionalInput<String>(
              map['databaseInstallationFilesS3BucketName']),
      databaseInstallationFilesS3Prefix: pulumi.Input.asOptionalInput<String>(
          map['databaseInstallationFilesS3Prefix']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      engine: pulumi.Input.asInput<String>(map['engine']),
      engineVersion: pulumi.Input.asInput<String>(map['engineVersion']),
      filename: pulumi.Input.asOptionalInput<String>(map['filename']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      manifest: pulumi.Input.asOptionalInput<String>(map['manifest']),
      manifestHash: pulumi.Input.asOptionalInput<String>(map['manifestHash']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sourceImageId: pulumi.Input.asOptionalInput<String>(map['sourceImageId']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
