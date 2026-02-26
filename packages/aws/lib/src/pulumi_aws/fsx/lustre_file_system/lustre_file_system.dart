import 'package:pulumi/pulumi.dart';
import '../lustre_file_system_data_read_cache_configuration/lustre_file_system_data_read_cache_configuration.dart';
import '../lustre_file_system_log_configuration/lustre_file_system_log_configuration.dart';
import '../lustre_file_system_metadata_configuration/lustre_file_system_metadata_configuration.dart';
import '../lustre_file_system_root_squash_configuration/lustre_file_system_root_squash_configuration.dart';
import 'lustre_file_system_args.dart';

/// Manages a FSx Lustre File System. See the [FSx Lustre Guide](https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html) for more information.
///
/// > **NOTE:** <span pulumi-lang-nodejs="`autoImportPolicy`" pulumi-lang-dotnet="`AutoImportPolicy`" pulumi-lang-go="`autoImportPolicy`" pulumi-lang-python="`auto_import_policy`" pulumi-lang-yaml="`autoImportPolicy`" pulumi-lang-java="`autoImportPolicy`">`auto_import_policy`</span>, <span pulumi-lang-nodejs="`exportPath`" pulumi-lang-dotnet="`ExportPath`" pulumi-lang-go="`exportPath`" pulumi-lang-python="`export_path`" pulumi-lang-yaml="`exportPath`" pulumi-lang-java="`exportPath`">`export_path`</span>, <span pulumi-lang-nodejs="`importPath`" pulumi-lang-dotnet="`ImportPath`" pulumi-lang-go="`importPath`" pulumi-lang-python="`import_path`" pulumi-lang-yaml="`importPath`" pulumi-lang-java="`importPath`">`import_path`</span> and <span pulumi-lang-nodejs="`importedFileChunkSize`" pulumi-lang-dotnet="`ImportedFileChunkSize`" pulumi-lang-go="`importedFileChunkSize`" pulumi-lang-python="`imported_file_chunk_size`" pulumi-lang-yaml="`importedFileChunkSize`" pulumi-lang-java="`importedFileChunkSize`">`imported_file_chunk_size`</span> are not supported with the `PERSISTENT_2` deployment type. Use <span pulumi-lang-nodejs="`aws.fsx.DataRepositoryAssociation`" pulumi-lang-dotnet="`aws.fsx.DataRepositoryAssociation`" pulumi-lang-go="`fsx.DataRepositoryAssociation`" pulumi-lang-python="`fsx.DataRepositoryAssociation`" pulumi-lang-yaml="`aws.fsx.DataRepositoryAssociation`" pulumi-lang-java="`aws.fsx.DataRepositoryAssociation`">`aws.fsx.DataRepositoryAssociation`</span> instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.LustreFileSystem("example", {
/// importPath: `s3://${exampleAwsS3Bucket.bucket}`,
/// storageCapacity: 1200,
/// subnetIds: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.LustreFileSystem("example",
/// import_path=f"s3://{example_aws_s3_bucket['bucket']}",
/// storage_capacity=1200,
/// subnet_ids=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Fsx.LustreFileSystem("example", new()
/// {
/// ImportPath = $"s3://{exampleAwsS3Bucket.Bucket}",
/// StorageCapacity = 1200,
/// SubnetIds = exampleAwsSubnet.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.NewLustreFileSystem(ctx, "example", &fsx.LustreFileSystemArgs{
/// ImportPath:      pulumi.Sprintf("s3://%v", exampleAwsS3Bucket.Bucket),
/// StorageCapacity: pulumi.Int(1200),
/// SubnetIds:       pulumi.Any(exampleAwsSubnet.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.LustreFileSystem;
/// import com.pulumi.aws.fsx.LustreFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LustreFileSystem("example", LustreFileSystemArgs.builder()
/// .importPath(String.format("s3://%s", exampleAwsS3Bucket.bucket()))
/// .storageCapacity(1200)
/// .subnetIds(exampleAwsSubnet.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:LustreFileSystem
/// properties:
/// importPath: s3://${exampleAwsS3Bucket.bucket}
/// storageCapacity: 1200
/// subnetIds: ${exampleAwsSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/lustreFileSystem:LustreFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like <span pulumi-lang-nodejs="`securityGroupIds`" pulumi-lang-dotnet="`SecurityGroupIds`" pulumi-lang-go="`securityGroupIds`" pulumi-lang-python="`security_group_ids`" pulumi-lang-yaml="`securityGroupIds`" pulumi-lang-java="`securityGroupIds`">`security_group_ids`</span>, do not have a FSx API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> to hide the difference. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.LustreFileSystem("example", {securityGroupIds: [exampleAwsSecurityGroup.id]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.LustreFileSystem("example", security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Fsx.LustreFileSystem("example", new()
/// {
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.NewLustreFileSystem(ctx, "example", &fsx.LustreFileSystemArgs{
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.LustreFileSystem;
/// import com.pulumi.aws.fsx.LustreFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new LustreFileSystem("example", LustreFileSystemArgs.builder()
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fsx:LustreFileSystem
/// properties:
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
class LustreFileSystem extends CustomResource {
  /// Amazon Resource Name of the file system.
  late final Output<String> arn;

  /// How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see [Auto Import Data Repo](https://docs.aws.amazon.com/fsx/latest/LustreGuide/autoimport-data-repo.html) for more details. Only supported on `PERSISTENT_1` deployment types.
  late final Output<String> autoImportPolicy;

  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type.
  late final Output<int> automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  late final Output<String?> backupId;

  /// A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. The default value is false.
  late final Output<bool?> copyTagsToBackups;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Requires <span pulumi-lang-nodejs="`automaticBackupRetentionDays`" pulumi-lang-dotnet="`AutomaticBackupRetentionDays`" pulumi-lang-go="`automaticBackupRetentionDays`" pulumi-lang-python="`automatic_backup_retention_days`" pulumi-lang-yaml="`automaticBackupRetentionDays`" pulumi-lang-java="`automaticBackupRetentionDays`">`automatic_backup_retention_days`</span> to be set.
  late final Output<String> dailyAutomaticBackupStartTime;

  /// Sets the data compression configuration for the file system. Valid values are `LZ4` and `NONE`. Default value is `NONE`. Unsetting this value reverts the compression type back to `NONE`.
  late final Output<String?> dataCompressionType;
  late final Output<LustreFileSystemDataReadCacheConfiguration?>
      dataReadCacheConfiguration;

  /// The filesystem deployment type. One of: `SCRATCH_1`, `SCRATCH_2`, `PERSISTENT_1`, `PERSISTENT_2`.
  late final Output<String?> deploymentType;

  /// DNS name for the file system, e.g., `fs-12345678.fsx.us-west-2.amazonaws.com`
  late final Output<String> dnsName;

  /// The type of drive cache used by `PERSISTENT_1` filesystems that are provisioned with `HDD` storage_type. Required for `HDD` storage_type, set to either `READ` or `NONE`.
  late final Output<String?> driveCacheType;

  /// Adds support for Elastic Fabric Adapter (EFA) and GPUDirect Storage (GDS) to Lustre. This must be set at creation. If set this cannot be changed and this prevents changes to <span pulumi-lang-nodejs="`perUnitStorageThroughput`" pulumi-lang-dotnet="`PerUnitStorageThroughput`" pulumi-lang-go="`perUnitStorageThroughput`" pulumi-lang-python="`per_unit_storage_throughput`" pulumi-lang-yaml="`perUnitStorageThroughput`" pulumi-lang-java="`perUnitStorageThroughput`">`per_unit_storage_throughput`</span>. This is only supported when<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>is set to `PERSISTENT_2`, <span pulumi-lang-nodejs="`metadataConfiguration`" pulumi-lang-dotnet="`MetadataConfiguration`" pulumi-lang-go="`metadataConfiguration`" pulumi-lang-python="`metadata_configuration`" pulumi-lang-yaml="`metadataConfiguration`" pulumi-lang-java="`metadataConfiguration`">`metadata_configuration`</span> is used, and an EFA-enabled security group is attached.
  late final Output<bool> efaEnabled;

  /// S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with <span pulumi-lang-nodejs="`importPath`" pulumi-lang-dotnet="`ImportPath`" pulumi-lang-go="`importPath`" pulumi-lang-python="`import_path`" pulumi-lang-yaml="`importPath`" pulumi-lang-java="`importPath`">`import_path`</span> argument and the path must use the same Amazon S3 bucket as specified in <span pulumi-lang-nodejs="`importPath`" pulumi-lang-dotnet="`ImportPath`" pulumi-lang-go="`importPath`" pulumi-lang-python="`import_path`" pulumi-lang-yaml="`importPath`" pulumi-lang-java="`importPath`">`import_path`</span>. Set equal to <span pulumi-lang-nodejs="`importPath`" pulumi-lang-dotnet="`ImportPath`" pulumi-lang-go="`importPath`" pulumi-lang-python="`import_path`" pulumi-lang-yaml="`importPath`" pulumi-lang-java="`importPath`">`import_path`</span> to overwrite files on export. Defaults to `s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}`. Only supported on `PERSISTENT_1` deployment types.
  late final Output<String> exportPath;

  /// Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for `SCRATCH_1`, `SCRATCH_2` and `PERSISTENT_1` deployment types. Valid values for 2.12 include all deployment types.
  late final Output<String> fileSystemTypeVersion;

  /// A map of tags to apply to the file system's final backup.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  late final Output<Map<String, String>?> finalBackupTags;

  /// S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, `s3://example-bucket/optional-prefix/`. Only supported on `PERSISTENT_1` deployment types.
  late final Output<String?> importPath;

  /// For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with <span pulumi-lang-nodejs="`importPath`" pulumi-lang-dotnet="`ImportPath`" pulumi-lang-go="`importPath`" pulumi-lang-python="`import_path`" pulumi-lang-yaml="`importPath`" pulumi-lang-java="`importPath`">`import_path`</span> argument. Defaults to <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>. Minimum of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and maximum of <span pulumi-lang-nodejs="`512000`" pulumi-lang-dotnet="`512000`" pulumi-lang-go="`512000`" pulumi-lang-python="`512000`" pulumi-lang-yaml="`512000`" pulumi-lang-java="`512000`">`512000`</span>. Only supported on `PERSISTENT_1` deployment types.
  late final Output<int> importedFileChunkSize;

  /// ARN for the KMS Key to encrypt the file system at rest, applicable for `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Defaults to an AWS managed KMS Key.
  late final Output<String> kmsKeyId;

  /// The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs. See <span pulumi-lang-nodejs="`logConfiguration`" pulumi-lang-dotnet="`LogConfiguration`" pulumi-lang-go="`logConfiguration`" pulumi-lang-python="`log_configuration`" pulumi-lang-yaml="`logConfiguration`" pulumi-lang-java="`logConfiguration`">`log_configuration`</span> Block for details.
  late final Output<LustreFileSystemLogConfiguration> logConfiguration;

  /// The Lustre metadata configuration used when creating an Amazon FSx for Lustre file system. This can be used to specify a user provisioned metadata scale. This is only supported when <span pulumi-lang-nodejs="`deploymentType`" pulumi-lang-dotnet="`DeploymentType`" pulumi-lang-go="`deploymentType`" pulumi-lang-python="`deployment_type`" pulumi-lang-yaml="`deploymentType`" pulumi-lang-java="`deploymentType`">`deployment_type`</span> is set to `PERSISTENT_2`. See <span pulumi-lang-nodejs="`metadataConfiguration`" pulumi-lang-dotnet="`MetadataConfiguration`" pulumi-lang-go="`metadataConfiguration`" pulumi-lang-python="`metadata_configuration`" pulumi-lang-yaml="`metadataConfiguration`" pulumi-lang-java="`metadataConfiguration`">`metadata_configuration`</span> Block for details.
  late final Output<LustreFileSystemMetadataConfiguration>
      metadataConfiguration;

  /// The value to be used when mounting the filesystem.
  late final Output<String> mountName;

  /// Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the [documentation](https://docs.aws.amazon.com/fsx/latest/LustreGuide/mounting-on-premises.html), the first network interface returned is the primary network interface.
  late final Output<List<String>> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  late final Output<String> ownerId;

  /// Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the `PERSISTENT_1` and `PERSISTENT_2` deployment_type. Valid values for `PERSISTENT_1`<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>and `SSD`<span pulumi-lang-nodejs=" storageType " pulumi-lang-dotnet=" StorageType " pulumi-lang-go=" storageType " pulumi-lang-python=" storage_type " pulumi-lang-yaml=" storageType " pulumi-lang-java=" storageType "> storage_type </span>are 50, 100, 200. Valid values for `PERSISTENT_1`<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>and `HDD`<span pulumi-lang-nodejs=" storageType " pulumi-lang-dotnet=" StorageType " pulumi-lang-go=" storageType " pulumi-lang-python=" storage_type " pulumi-lang-yaml=" storageType " pulumi-lang-java=" storageType "> storage_type </span>are 12, 40. Valid values for `PERSISTENT_2`<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>and ` SSD`<span pulumi-lang-nodejs=" storageType " pulumi-lang-dotnet=" StorageType " pulumi-lang-go=" storageType " pulumi-lang-python=" storage_type " pulumi-lang-yaml=" storageType " pulumi-lang-java=" storageType "> storage_type </span>are 125, 250, 500, 1000.
  late final Output<int?> perUnitStorageThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Lustre root squash configuration used when creating an Amazon FSx for Lustre file system. When enabled, root squash restricts root-level access from clients that try to access your file system as a root user. See <span pulumi-lang-nodejs="`rootSquashConfiguration`" pulumi-lang-dotnet="`RootSquashConfiguration`" pulumi-lang-go="`rootSquashConfiguration`" pulumi-lang-python="`root_squash_configuration`" pulumi-lang-yaml="`rootSquashConfiguration`" pulumi-lang-java="`rootSquashConfiguration`">`root_squash_configuration`</span> Block for details.
  late final Output<LustreFileSystemRootSquashConfiguration?>
      rootSquashConfiguration;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final Output<List<String>?> securityGroupIds;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// **Note:** If the filesystem uses a Scratch deployment type, final backup during delete will always be skipped and this argument will not be used even when set.
  late final Output<bool?> skipFinalBackup;

  /// The storage capacity (GiB) of the file system. Minimum of <span pulumi-lang-nodejs="`1200`" pulumi-lang-dotnet="`1200`" pulumi-lang-go="`1200`" pulumi-lang-python="`1200`" pulumi-lang-yaml="`1200`" pulumi-lang-java="`1200`">`1200`</span>. See more details at [Allowed values for Fsx storage capacity](https://docs.aws.amazon.com/fsx/latest/APIReference/API_CreateFileSystem.html#FSx-CreateFileSystem-request-StorageCapacity). Update is allowed only for `SCRATCH_2`, `PERSISTENT_1` and `PERSISTENT_2` deployment types, See more details at [Fsx Storage Capacity Update](https://docs.aws.amazon.com/fsx/latest/APIReference/API_UpdateFileSystem.html#FSx-UpdateFileSystem-request-StorageCapacity). Required when not creating filesystem for a backup.
  late final Output<int?> storageCapacity;

  /// The filesystem storage type. One of `SSD`, `HDD` or `INTELLIGENT_TIERING`, defaults to `SSD`. `HDD` is only supported on `PERSISTENT_1` deployment types. `INTELLIGENT_TIERING` requires <span pulumi-lang-nodejs="`dataReadCacheConfiguration`" pulumi-lang-dotnet="`DataReadCacheConfiguration`" pulumi-lang-go="`dataReadCacheConfiguration`" pulumi-lang-python="`data_read_cache_configuration`" pulumi-lang-yaml="`dataReadCacheConfiguration`" pulumi-lang-java="`dataReadCacheConfiguration`">`data_read_cache_configuration`</span> and <span pulumi-lang-nodejs="`metadataConfiguration`" pulumi-lang-dotnet="`MetadataConfiguration`" pulumi-lang-go="`metadataConfiguration`" pulumi-lang-python="`metadata_configuration`" pulumi-lang-yaml="`metadataConfiguration`" pulumi-lang-java="`metadataConfiguration`">`metadata_configuration`</span> to be set and is only supported for `PERSISTENT_2` deployment types.
  late final Output<String?> storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone.
  ///
  /// The following arguments are optional:
  late final Output<String> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Throughput in MBps required for the `INTELLIGENT_TIERING` storage type. Must be 4000 or multiples of 4000.
  late final Output<int?> throughputCapacity;

  /// Identifier of the Virtual Private Cloud for the file system.
  late final Output<String> vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final Output<String> weeklyMaintenanceStartTime;

  LustreFileSystem(
    String name, {
    LustreFileSystemArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/lustreFileSystem:LustreFileSystem',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoImportPolicy = registerOutput<String>('autoImportPolicy');
    this.automaticBackupRetentionDays =
        registerOutput<int>('automaticBackupRetentionDays');
    this.backupId = registerOutput<String?>('backupId');
    this.copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    this.dailyAutomaticBackupStartTime =
        registerOutput<String>('dailyAutomaticBackupStartTime');
    this.dataCompressionType = registerOutput<String?>('dataCompressionType');
    this.dataReadCacheConfiguration =
        registerOutput<LustreFileSystemDataReadCacheConfiguration?>(
            'dataReadCacheConfiguration');
    this.deploymentType = registerOutput<String?>('deploymentType');
    this.dnsName = registerOutput<String>('dnsName');
    this.driveCacheType = registerOutput<String?>('driveCacheType');
    this.efaEnabled = registerOutput<bool>('efaEnabled');
    this.exportPath = registerOutput<String>('exportPath');
    this.fileSystemTypeVersion =
        registerOutput<String>('fileSystemTypeVersion');
    this.finalBackupTags =
        registerOutput<Map<String, String>?>('finalBackupTags');
    this.importPath = registerOutput<String?>('importPath');
    this.importedFileChunkSize = registerOutput<int>('importedFileChunkSize');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.logConfiguration =
        registerOutput<LustreFileSystemLogConfiguration>('logConfiguration');
    this.metadataConfiguration =
        registerOutput<LustreFileSystemMetadataConfiguration>(
            'metadataConfiguration');
    this.mountName = registerOutput<String>('mountName');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.perUnitStorageThroughput =
        registerOutput<int?>('perUnitStorageThroughput');
    this.region = registerOutput<String>('region');
    this.rootSquashConfiguration =
        registerOutput<LustreFileSystemRootSquashConfiguration?>(
            'rootSquashConfiguration');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    this.storageCapacity = registerOutput<int?>('storageCapacity');
    this.storageType = registerOutput<String?>('storageType');
    this.subnetIds = registerOutput<String>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputCapacity = registerOutput<int?>('throughputCapacity');
    this.vpcId = registerOutput<String>('vpcId');
    this.weeklyMaintenanceStartTime =
        registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
