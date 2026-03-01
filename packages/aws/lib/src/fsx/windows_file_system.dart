import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_file_system_args.dart';
import 'windows_file_system_audit_log_configuration.dart';
import 'windows_file_system_disk_iops_configuration.dart';
import 'windows_file_system_self_managed_active_directory.dart';

/// Manages a FSx Windows File System. See the [FSx Windows Guide](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html) for more information.
///
/// > **NOTE:** Either the `active_directory_id` argument or `self_managed_active_directory` configuration block must be specified.
///
/// ## Example Usage
///
/// ### Using AWS Directory Service
///
/// Additional information for using AWS Directory Service with Windows File Systems can be found in the [FSx Windows Guide](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/fsx-aws-managed-ad.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.WindowsFileSystem("example", {
///     activeDirectoryId: exampleAwsDirectoryServiceDirectory.id,
///     kmsKeyId: exampleAwsKmsKey.arn,
///     storageCapacity: 32,
///     subnetIds: [exampleAwsSubnet.id],
///     throughputCapacity: 32,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.WindowsFileSystem("example",
///     active_directory_id=example_aws_directory_service_directory["id"],
///     kms_key_id=example_aws_kms_key["arn"],
///     storage_capacity=32,
///     subnet_ids=[example_aws_subnet["id"]],
///     throughput_capacity=32)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.WindowsFileSystem("example", new()
///     {
///         ActiveDirectoryId = exampleAwsDirectoryServiceDirectory.Id,
///         KmsKeyId = exampleAwsKmsKey.Arn,
///         StorageCapacity = 32,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         ThroughputCapacity = 32,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewWindowsFileSystem(ctx, "example", &fsx.WindowsFileSystemArgs{
/// 			ActiveDirectoryId: pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
/// 			KmsKeyId:          pulumi.Any(exampleAwsKmsKey.Arn),
/// 			StorageCapacity:   pulumi.Int(32),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			ThroughputCapacity: pulumi.Int(32),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.WindowsFileSystem;
/// import com.pulumi.aws.fsx.WindowsFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new WindowsFileSystem("example", WindowsFileSystemArgs.builder()
///             .activeDirectoryId(exampleAwsDirectoryServiceDirectory.id())
///             .kmsKeyId(exampleAwsKmsKey.arn())
///             .storageCapacity(32)
///             .subnetIds(exampleAwsSubnet.id())
///             .throughputCapacity(32)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:WindowsFileSystem
///     properties:
///       activeDirectoryId: ${exampleAwsDirectoryServiceDirectory.id}
///       kmsKeyId: ${exampleAwsKmsKey.arn}
///       storageCapacity: 32
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       throughputCapacity: 32
/// ```
///
///
/// ### Using a Self-Managed Microsoft Active Directory
///
/// Additional information for using AWS Directory Service with Windows File Systems can be found in the [FSx Windows Guide](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/self-managed-AD.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.WindowsFileSystem("example", {
///     kmsKeyId: exampleAwsKmsKey.arn,
///     storageCapacity: 32,
///     subnetIds: [exampleAwsSubnet.id],
///     throughputCapacity: 32,
///     selfManagedActiveDirectory: {
///         dnsIps: [
///             "10.0.0.111",
///             "10.0.0.222",
///         ],
///         domainName: "corp.example.com",
///         password: "avoid-plaintext-passwords",
///         username: "Admin",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.WindowsFileSystem("example",
///     kms_key_id=example_aws_kms_key["arn"],
///     storage_capacity=32,
///     subnet_ids=[example_aws_subnet["id"]],
///     throughput_capacity=32,
///     self_managed_active_directory={
///         "dns_ips": [
///             "10.0.0.111",
///             "10.0.0.222",
///         ],
///         "domain_name": "corp.example.com",
///         "password": "avoid-plaintext-passwords",
///         "username": "Admin",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.WindowsFileSystem("example", new()
///     {
///         KmsKeyId = exampleAwsKmsKey.Arn,
///         StorageCapacity = 32,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         ThroughputCapacity = 32,
///         SelfManagedActiveDirectory = new Aws.Fsx.Inputs.WindowsFileSystemSelfManagedActiveDirectoryArgs
///         {
///             DnsIps = new[]
///             {
///                 "10.0.0.111",
///                 "10.0.0.222",
///             },
///             DomainName = "corp.example.com",
///             Password = "avoid-plaintext-passwords",
///             Username = "Admin",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewWindowsFileSystem(ctx, "example", &fsx.WindowsFileSystemArgs{
/// 			KmsKeyId:        pulumi.Any(exampleAwsKmsKey.Arn),
/// 			StorageCapacity: pulumi.Int(32),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			ThroughputCapacity: pulumi.Int(32),
/// 			SelfManagedActiveDirectory: &fsx.WindowsFileSystemSelfManagedActiveDirectoryArgs{
/// 				DnsIps: pulumi.StringArray{
/// 					pulumi.String("10.0.0.111"),
/// 					pulumi.String("10.0.0.222"),
/// 				},
/// 				DomainName: pulumi.String("corp.example.com"),
/// 				Password:   pulumi.String("avoid-plaintext-passwords"),
/// 				Username:   pulumi.String("Admin"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.WindowsFileSystem;
/// import com.pulumi.aws.fsx.WindowsFileSystemArgs;
/// import com.pulumi.aws.fsx.inputs.WindowsFileSystemSelfManagedActiveDirectoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new WindowsFileSystem("example", WindowsFileSystemArgs.builder()
///             .kmsKeyId(exampleAwsKmsKey.arn())
///             .storageCapacity(32)
///             .subnetIds(exampleAwsSubnet.id())
///             .throughputCapacity(32)
///             .selfManagedActiveDirectory(WindowsFileSystemSelfManagedActiveDirectoryArgs.builder()
///                 .dnsIps(
///                     "10.0.0.111",
///                     "10.0.0.222")
///                 .domainName("corp.example.com")
///                 .password("avoid-plaintext-passwords")
///                 .username("Admin")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:WindowsFileSystem
///     properties:
///       kmsKeyId: ${exampleAwsKmsKey.arn}
///       storageCapacity: 32
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       throughputCapacity: 32
///       selfManagedActiveDirectory:
///         dnsIps:
///           - 10.0.0.111
///           - 10.0.0.222
///         domainName: corp.example.com
///         password: avoid-plaintext-passwords
///         username: Admin
/// ```
///
///
/// ### Using a Self-Managed Microsoft Active Directory with Secrets Manager
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.WindowsFileSystem("example", {
///     kmsKeyId: exampleAwsKmsKey.arn,
///     storageCapacity: 32,
///     subnetIds: [exampleAwsSubnet.id],
///     throughputCapacity: 32,
///     selfManagedActiveDirectory: {
///         dnsIps: [
///             "10.0.0.111",
///             "10.0.0.222",
///         ],
///         domainName: "corp.example.com",
///         domainJoinServiceAccountSecret: exampleAwsSecretsmanagerSecret.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.WindowsFileSystem("example",
///     kms_key_id=example_aws_kms_key["arn"],
///     storage_capacity=32,
///     subnet_ids=[example_aws_subnet["id"]],
///     throughput_capacity=32,
///     self_managed_active_directory={
///         "dns_ips": [
///             "10.0.0.111",
///             "10.0.0.222",
///         ],
///         "domain_name": "corp.example.com",
///         "domain_join_service_account_secret": example_aws_secretsmanager_secret["arn"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.WindowsFileSystem("example", new()
///     {
///         KmsKeyId = exampleAwsKmsKey.Arn,
///         StorageCapacity = 32,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         ThroughputCapacity = 32,
///         SelfManagedActiveDirectory = new Aws.Fsx.Inputs.WindowsFileSystemSelfManagedActiveDirectoryArgs
///         {
///             DnsIps = new[]
///             {
///                 "10.0.0.111",
///                 "10.0.0.222",
///             },
///             DomainName = "corp.example.com",
///             DomainJoinServiceAccountSecret = exampleAwsSecretsmanagerSecret.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewWindowsFileSystem(ctx, "example", &fsx.WindowsFileSystemArgs{
/// 			KmsKeyId:        pulumi.Any(exampleAwsKmsKey.Arn),
/// 			StorageCapacity: pulumi.Int(32),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			ThroughputCapacity: pulumi.Int(32),
/// 			SelfManagedActiveDirectory: &fsx.WindowsFileSystemSelfManagedActiveDirectoryArgs{
/// 				DnsIps: pulumi.StringArray{
/// 					pulumi.String("10.0.0.111"),
/// 					pulumi.String("10.0.0.222"),
/// 				},
/// 				DomainName:                     pulumi.String("corp.example.com"),
/// 				DomainJoinServiceAccountSecret: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.WindowsFileSystem;
/// import com.pulumi.aws.fsx.WindowsFileSystemArgs;
/// import com.pulumi.aws.fsx.inputs.WindowsFileSystemSelfManagedActiveDirectoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new WindowsFileSystem("example", WindowsFileSystemArgs.builder()
///             .kmsKeyId(exampleAwsKmsKey.arn())
///             .storageCapacity(32)
///             .subnetIds(exampleAwsSubnet.id())
///             .throughputCapacity(32)
///             .selfManagedActiveDirectory(WindowsFileSystemSelfManagedActiveDirectoryArgs.builder()
///                 .dnsIps(
///                     "10.0.0.111",
///                     "10.0.0.222")
///                 .domainName("corp.example.com")
///                 .domainJoinServiceAccountSecret(exampleAwsSecretsmanagerSecret.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:WindowsFileSystem
///     properties:
///       kmsKeyId: ${exampleAwsKmsKey.arn}
///       storageCapacity: 32
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       throughputCapacity: 32
///       selfManagedActiveDirectory:
///         dnsIps:
///           - 10.0.0.111
///           - 10.0.0.222
///         domainName: corp.example.com
///         domainJoinServiceAccountSecret: ${exampleAwsSecretsmanagerSecret.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx File Systems using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/windowsFileSystem:WindowsFileSystem example fs-543ab12b1ca672f33
/// ```
///
/// Certain resource arguments, like `security_group_ids` and the `self_managed_active_directory` configuation block `password`, do not have a FSx API method for reading the information after creation. If these arguments are set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fsx.WindowsFileSystem("example", {securityGroupIds: [exampleAwsSecurityGroup.id]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.WindowsFileSystem("example", security_group_ids=[example_aws_security_group["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fsx.WindowsFileSystem("example", new()
///     {
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewWindowsFileSystem(ctx, "example", &fsx.WindowsFileSystemArgs{
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fsx.WindowsFileSystem;
/// import com.pulumi.aws.fsx.WindowsFileSystemArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new WindowsFileSystem("example", WindowsFileSystemArgs.builder()
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:WindowsFileSystem
///     properties:
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
/// ```
class WindowsFileSystem extends pulumi.CustomResource {
  /// The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `self_managed_active_directory`.
  late final pulumi.Output<String?> activeDirectoryId;
  /// An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  late final pulumi.Output<List<String>?> aliases;
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;
  /// The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `audit_log_configuration` Block for details.
  late final pulumi.Output<WindowsFileSystemAuditLogConfiguration> auditLogConfiguration;
  /// The number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  late final pulumi.Output<int?> automaticBackupRetentionDays;
  /// The ID of the source backup to create the filesystem from.
  late final pulumi.Output<String?> backupId;
  /// A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to `false`.
  late final pulumi.Output<bool?> copyTagsToBackups;
  /// The preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  late final pulumi.Output<String> dailyAutomaticBackupStartTime;
  /// Specifies the file system deployment type, valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  late final pulumi.Output<String?> deploymentType;
  /// The SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `disk_iops_configuration` Block for details.
  late final pulumi.Output<WindowsFileSystemDiskIopsConfiguration> diskIopsConfiguration;
  /// DNS name for the file system, e.g., `fs-12345678.corp.example.com` (domain name matching the Active Directory domain name)
  late final pulumi.Output<String> dnsName;
  /// A map of tags to apply to the file system's final backup.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  late final pulumi.Output<String> kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible.
  late final pulumi.Output<List<String>> networkInterfaceIds;
  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;
  /// The IP address of the primary, or preferred, file server.
  late final pulumi.Output<String> preferredFileServerIp;
  /// Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  late final pulumi.Output<String> preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// For `MULTI_AZ_1` deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For `SINGLE_AZ_1` deployment types, this is the DNS name of the file system.
  late final pulumi.Output<String> remoteAdministrationEndpoint;
  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `active_directory_id`. See `self_managed_active_directory` Block for details.
  late final pulumi.Output<WindowsFileSystemSelfManagedActiveDirectory?> selfManagedActiveDirectory;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  late final pulumi.Output<int> storageCapacity;
  /// Specifies the storage type, Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  late final pulumi.Output<String?> storageType;
  /// A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deployment_type` to `MULTI_AZ_1`.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> throughputCapacity;
  /// Identifier of the Virtual Private Cloud for the file system.
  late final pulumi.Output<String> vpcId;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  late final pulumi.Output<String> weeklyMaintenanceStartTime;

  /// Creates a new [WindowsFileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsFileSystem]. {@macro pulumi_fsx_windows_file_system_windows_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsFileSystem(
    String name, {
    WindowsFileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/windowsFileSystem:WindowsFileSystem',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectoryId = registerOutput<String?>('activeDirectoryId');
    this.aliases = registerOutput<List<String>?>('aliases');
    this.arn = registerOutput<String>('arn');
    this.auditLogConfiguration = registerOutput<WindowsFileSystemAuditLogConfiguration>('auditLogConfiguration');
    this.automaticBackupRetentionDays = registerOutput<int?>('automaticBackupRetentionDays');
    this.backupId = registerOutput<String?>('backupId');
    this.copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    this.dailyAutomaticBackupStartTime = registerOutput<String>('dailyAutomaticBackupStartTime');
    this.deploymentType = registerOutput<String?>('deploymentType');
    this.diskIopsConfiguration = registerOutput<WindowsFileSystemDiskIopsConfiguration>('diskIopsConfiguration');
    this.dnsName = registerOutput<String>('dnsName');
    this.finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.preferredFileServerIp = registerOutput<String>('preferredFileServerIp');
    this.preferredSubnetId = registerOutput<String>('preferredSubnetId');
    this.region = registerOutput<String>('region');
    this.remoteAdministrationEndpoint = registerOutput<String>('remoteAdministrationEndpoint');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.selfManagedActiveDirectory = registerOutput<WindowsFileSystemSelfManagedActiveDirectory?>('selfManagedActiveDirectory');
    this.skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    this.storageCapacity = registerOutput<int>('storageCapacity');
    this.storageType = registerOutput<String?>('storageType');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.throughputCapacity = registerOutput<int>('throughputCapacity');
    this.vpcId = registerOutput<String>('vpcId');
    this.weeklyMaintenanceStartTime = registerOutput<String>('weeklyMaintenanceStartTime');
  }
}
