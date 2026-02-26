// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomDbEngineVersion.
class CustomDbEngineVersionArgs {
  /// The name of the Amazon S3 bucket that contains the database installation files.
  final Input<String>? databaseInstallationFilesS3BucketName;

  /// The prefix for the Amazon S3 bucket that contains the database installation files.
  final Input<String>? databaseInstallationFilesS3Prefix;

  /// The description of the CEV.
  final Input<String>? description;

  /// The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  final Input<String> engine;

  /// The version of the database engine.
  final Input<String> engineVersion;

  /// The name of the manifest file within the local filesystem. Conflicts with <span pulumi-lang-nodejs="`manifest`" pulumi-lang-dotnet="`Manifest`" pulumi-lang-go="`manifest`" pulumi-lang-python="`manifest`" pulumi-lang-yaml="`manifest`" pulumi-lang-java="`manifest`">`manifest`</span>.
  final Input<String>? filename;

  /// The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  final Input<String>? kmsKeyId;

  /// The manifest file, in JSON format, that contains the list of database installation files. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  final Input<String>? manifest;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  final Input<String>? manifestHash;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  final Input<String>? sourceImageId;

  /// The status of the CEV. Valid values are <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span>, <span pulumi-lang-nodejs="`inactive`" pulumi-lang-dotnet="`Inactive`" pulumi-lang-go="`inactive`" pulumi-lang-python="`inactive`" pulumi-lang-yaml="`inactive`" pulumi-lang-java="`inactive`">`inactive`</span>, `inactive-except-restore`.
  final Input<String>? status;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      databaseInstallationFilesS3BucketName: Input.asOptionalInput<String>(
          map['databaseInstallationFilesS3BucketName']),
      databaseInstallationFilesS3Prefix: Input.asOptionalInput<String>(
          map['databaseInstallationFilesS3Prefix']),
      description: Input.asOptionalInput<String>(map['description']),
      engine: Input.asInput<String>(map['engine']),
      engineVersion: Input.asInput<String>(map['engineVersion']),
      filename: Input.asOptionalInput<String>(map['filename']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      manifest: Input.asOptionalInput<String>(map['manifest']),
      manifestHash: Input.asOptionalInput<String>(map['manifestHash']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceImageId: Input.asOptionalInput<String>(map['sourceImageId']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
