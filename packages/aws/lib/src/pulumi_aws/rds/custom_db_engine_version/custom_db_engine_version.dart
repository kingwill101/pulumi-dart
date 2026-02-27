import 'package:pulumi/pulumi.dart';
import 'custom_db_engine_version_args.dart';

/// Provides an custom engine version (CEV) resource for Amazon RDS Custom. For additional information, see [Working with CEVs for RDS Custom for Oracle](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html) and [Working with CEVs for RDS Custom for SQL Server](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev-sqlserver.html) in the the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html).
///
/// ## Example Usage
///
/// ### RDS Custom for Oracle Usage
///
///
///
/// ### RDS Custom for Oracle External Manifest Usage
///
///
///
/// ### RDS Custom for SQL Server Usage
///
///
///
/// ### RDS Custom for SQL Server Usage with AMI from another region
///
///
///
/// ## Import
///
/// Using `pulumi import`, import custom engine versions for Amazon RDS custom using the `engine` and `engine_version` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:rds/customDbEngineVersion:CustomDbEngineVersion example custom-oracle-ee-cdb:19.cdb_cev1
/// ```
class CustomDbEngineVersion extends CustomResource {
  /// The Amazon Resource Name (ARN) for the custom engine version.
  late final Output<String> arn;

  /// The date and time that the CEV was created.
  late final Output<String> createTime;

  /// The name of the Amazon S3 bucket that contains the database installation files.
  late final Output<String?> databaseInstallationFilesS3BucketName;

  /// The prefix for the Amazon S3 bucket that contains the database installation files.
  late final Output<String?> databaseInstallationFilesS3Prefix;

  /// The name of the DB parameter group family for the CEV.
  late final Output<String> dbParameterGroupFamily;

  /// The description of the CEV.
  late final Output<String?> description;

  /// The name of the database engine. Valid values are `custom-oracle*`, `custom-sqlserver*`.
  late final Output<String> engine;

  /// The version of the database engine.
  late final Output<String> engineVersion;

  /// The name of the manifest file within the local filesystem. Conflicts with `manifest`.
  late final Output<String?> filename;

  /// The ID of the AMI that was created with the CEV.
  late final Output<String> imageId;

  /// The ARN of the AWS KMS key that is used to encrypt the database installation files. Required for RDS Custom for Oracle.
  late final Output<String> kmsKeyId;

  /// The major version of the database engine.
  late final Output<String> majorEngineVersion;

  /// The manifest file, in JSON format, that contains the list of database installation files. Conflicts with `filename`.
  late final Output<String?> manifest;

  /// The returned manifest file, in JSON format, service generated and often different from input `manifest`.
  late final Output<String> manifestComputed;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the manifest source specified with `filename`. The usual way to set this is filebase64sha256("manifest.json") where "manifest.json" is the local filename of the manifest source.
  late final Output<String?> manifestHash;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the AMI to create the CEV from. Required for RDS Custom for SQL Server. For RDS Custom for Oracle, you can specify an AMI ID that was used in a different Oracle CEV.
  late final Output<String?> sourceImageId;

  /// The status of the CEV. Valid values are `available`, `inactive`, `inactive-except-restore`.
  late final Output<String> status;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomDbEngineVersion(
    String name, {
    CustomDbEngineVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/customDbEngineVersion:CustomDbEngineVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createTime = registerOutput<String>('createTime');
    this.databaseInstallationFilesS3BucketName =
        registerOutput<String?>('databaseInstallationFilesS3BucketName');
    this.databaseInstallationFilesS3Prefix =
        registerOutput<String?>('databaseInstallationFilesS3Prefix');
    this.dbParameterGroupFamily =
        registerOutput<String>('dbParameterGroupFamily');
    this.description = registerOutput<String?>('description');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.filename = registerOutput<String?>('filename');
    this.imageId = registerOutput<String>('imageId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.manifest = registerOutput<String?>('manifest');
    this.manifestComputed = registerOutput<String>('manifestComputed');
    this.manifestHash = registerOutput<String?>('manifestHash');
    this.region = registerOutput<String>('region');
    this.sourceImageId = registerOutput<String?>('sourceImageId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
