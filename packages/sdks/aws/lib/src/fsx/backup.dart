import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'backup_state.dart';

/// Provides a FSx Backup resource.
///
/// ## Lustre Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleLustreFileSystem = new aws.fsx.LustreFileSystem("example", {
///     storageCapacity: 1200,
///     subnetIds: exampleAwsSubnet.id,
///     deploymentType: "PERSISTENT_1",
///     perUnitStorageThroughput: 50,
/// });
/// const example = new aws.fsx.Backup("example", {fileSystemId: exampleLustreFileSystem.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_lustre_file_system = aws.fsx.LustreFileSystem("example",
///     storage_capacity=1200,
///     subnet_ids=example_aws_subnet["id"],
///     deployment_type="PERSISTENT_1",
///     per_unit_storage_throughput=50)
/// example = aws.fsx.Backup("example", file_system_id=example_lustre_file_system.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLustreFileSystem = new Aws.Fsx.LustreFileSystem("example", new()
///     {
///         StorageCapacity = 1200,
///         SubnetIds = exampleAwsSubnet.Id,
///         DeploymentType = "PERSISTENT_1",
///         PerUnitStorageThroughput = 50,
///     });
///
///     var example = new Aws.Fsx.Backup("example", new()
///     {
///         FileSystemId = exampleLustreFileSystem.Id,
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
/// 		exampleLustreFileSystem, err := fsx.NewLustreFileSystem(ctx, "example", &fsx.LustreFileSystemArgs{
/// 			StorageCapacity:          pulumi.Int(1200),
/// 			SubnetIds:                pulumi.Any(exampleAwsSubnet.Id),
/// 			DeploymentType:           pulumi.String("PERSISTENT_1"),
/// 			PerUnitStorageThroughput: pulumi.Int(50),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewBackup(ctx, "example", &fsx.BackupArgs{
/// 			FileSystemId: exampleLustreFileSystem.ID(),
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
/// import com.pulumi.aws.fsx.LustreFileSystem;
/// import com.pulumi.aws.fsx.LustreFileSystemArgs;
/// import com.pulumi.aws.fsx.Backup;
/// import com.pulumi.aws.fsx.BackupArgs;
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
///         var exampleLustreFileSystem = new LustreFileSystem("exampleLustreFileSystem", LustreFileSystemArgs.builder()
///             .storageCapacity(1200)
///             .subnetIds(exampleAwsSubnet.id())
///             .deploymentType("PERSISTENT_1")
///             .perUnitStorageThroughput(50)
///             .build());
///
///         var example = new Backup("example", BackupArgs.builder()
///             .fileSystemId(exampleLustreFileSystem.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:Backup
///     properties:
///       fileSystemId: ${exampleLustreFileSystem.id}
///   exampleLustreFileSystem:
///     type: aws:fsx:LustreFileSystem
///     name: example
///     properties:
///       storageCapacity: 1200
///       subnetIds: ${exampleAwsSubnet.id}
///       deploymentType: PERSISTENT_1
///       perUnitStorageThroughput: 50
/// ```
///
///
/// ## Windows Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleWindowsFileSystem = new aws.fsx.WindowsFileSystem("example", {
///     activeDirectoryId: eample.id,
///     skipFinalBackup: true,
///     storageCapacity: 32,
///     subnetIds: [example1.id],
///     throughputCapacity: 8,
/// });
/// const example = new aws.fsx.Backup("example", {fileSystemId: exampleWindowsFileSystem.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_windows_file_system = aws.fsx.WindowsFileSystem("example",
///     active_directory_id=eample["id"],
///     skip_final_backup=True,
///     storage_capacity=32,
///     subnet_ids=[example1["id"]],
///     throughput_capacity=8)
/// example = aws.fsx.Backup("example", file_system_id=example_windows_file_system.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWindowsFileSystem = new Aws.Fsx.WindowsFileSystem("example", new()
///     {
///         ActiveDirectoryId = eample.Id,
///         SkipFinalBackup = true,
///         StorageCapacity = 32,
///         SubnetIds = new[]
///         {
///             example1.Id,
///         },
///         ThroughputCapacity = 8,
///     });
///
///     var example = new Aws.Fsx.Backup("example", new()
///     {
///         FileSystemId = exampleWindowsFileSystem.Id,
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
/// 		exampleWindowsFileSystem, err := fsx.NewWindowsFileSystem(ctx, "example", &fsx.WindowsFileSystemArgs{
/// 			ActiveDirectoryId: pulumi.Any(eample.Id),
/// 			SkipFinalBackup:   pulumi.Bool(true),
/// 			StorageCapacity:   pulumi.Int(32),
/// 			SubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 			},
/// 			ThroughputCapacity: pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewBackup(ctx, "example", &fsx.BackupArgs{
/// 			FileSystemId: exampleWindowsFileSystem.ID(),
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
/// import com.pulumi.aws.fsx.Backup;
/// import com.pulumi.aws.fsx.BackupArgs;
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
///         var exampleWindowsFileSystem = new WindowsFileSystem("exampleWindowsFileSystem", WindowsFileSystemArgs.builder()
///             .activeDirectoryId(eample.id())
///             .skipFinalBackup(true)
///             .storageCapacity(32)
///             .subnetIds(example1.id())
///             .throughputCapacity(8)
///             .build());
///
///         var example = new Backup("example", BackupArgs.builder()
///             .fileSystemId(exampleWindowsFileSystem.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:Backup
///     properties:
///       fileSystemId: ${exampleWindowsFileSystem.id}
///   exampleWindowsFileSystem:
///     type: aws:fsx:WindowsFileSystem
///     name: example
///     properties:
///       activeDirectoryId: ${eample.id}
///       skipFinalBackup: true
///       storageCapacity: 32
///       subnetIds:
///         - ${example1.id}
///       throughputCapacity: 8
/// ```
///
///
/// ## ONTAP Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOntapVolume = new aws.fsx.OntapVolume("example", {
///     name: "example",
///     junctionPath: "/example",
///     sizeInMegabytes: 1024,
///     storageEfficiencyEnabled: true,
///     storageVirtualMachineId: test.id,
/// });
/// const example = new aws.fsx.Backup("example", {volumeId: exampleOntapVolume.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_ontap_volume = aws.fsx.OntapVolume("example",
///     name="example",
///     junction_path="/example",
///     size_in_megabytes=1024,
///     storage_efficiency_enabled=True,
///     storage_virtual_machine_id=test["id"])
/// example = aws.fsx.Backup("example", volume_id=example_ontap_volume.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOntapVolume = new Aws.Fsx.OntapVolume("example", new()
///     {
///         Name = "example",
///         JunctionPath = "/example",
///         SizeInMegabytes = 1024,
///         StorageEfficiencyEnabled = true,
///         StorageVirtualMachineId = test.Id,
///     });
///
///     var example = new Aws.Fsx.Backup("example", new()
///     {
///         VolumeId = exampleOntapVolume.Id,
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
/// 		exampleOntapVolume, err := fsx.NewOntapVolume(ctx, "example", &fsx.OntapVolumeArgs{
/// 			Name:                     pulumi.String("example"),
/// 			JunctionPath:             pulumi.String("/example"),
/// 			SizeInMegabytes:          pulumi.Int(1024),
/// 			StorageEfficiencyEnabled: pulumi.Bool(true),
/// 			StorageVirtualMachineId:  pulumi.Any(test.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewBackup(ctx, "example", &fsx.BackupArgs{
/// 			VolumeId: exampleOntapVolume.ID(),
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
/// import com.pulumi.aws.fsx.OntapVolume;
/// import com.pulumi.aws.fsx.OntapVolumeArgs;
/// import com.pulumi.aws.fsx.Backup;
/// import com.pulumi.aws.fsx.BackupArgs;
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
///         var exampleOntapVolume = new OntapVolume("exampleOntapVolume", OntapVolumeArgs.builder()
///             .name("example")
///             .junctionPath("/example")
///             .sizeInMegabytes(1024)
///             .storageEfficiencyEnabled(true)
///             .storageVirtualMachineId(test.id())
///             .build());
///
///         var example = new Backup("example", BackupArgs.builder()
///             .volumeId(exampleOntapVolume.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:Backup
///     properties:
///       volumeId: ${exampleOntapVolume.id}
///   exampleOntapVolume:
///     type: aws:fsx:OntapVolume
///     name: example
///     properties:
///       name: example
///       junctionPath: /example
///       sizeInMegabytes: 1024
///       storageEfficiencyEnabled: true
///       storageVirtualMachineId: ${test.id}
/// ```
///
///
/// ## OpenZFS Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleOpenZfsFileSystem = new aws.fsx.OpenZfsFileSystem("example", {
///     storageCapacity: 64,
///     subnetIds: [exampleAwsSubnet.id],
///     deploymentType: "SINGLE_AZ_1",
///     throughputCapacity: 64,
/// });
/// const example = new aws.fsx.Backup("example", {fileSystemId: exampleOpenZfsFileSystem.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_open_zfs_file_system = aws.fsx.OpenZfsFileSystem("example",
///     storage_capacity=64,
///     subnet_ids=[example_aws_subnet["id"]],
///     deployment_type="SINGLE_AZ_1",
///     throughput_capacity=64)
/// example = aws.fsx.Backup("example", file_system_id=example_open_zfs_file_system.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOpenZfsFileSystem = new Aws.Fsx.OpenZfsFileSystem("example", new()
///     {
///         StorageCapacity = 64,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         DeploymentType = "SINGLE_AZ_1",
///         ThroughputCapacity = 64,
///     });
///
///     var example = new Aws.Fsx.Backup("example", new()
///     {
///         FileSystemId = exampleOpenZfsFileSystem.Id,
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
/// 		exampleOpenZfsFileSystem, err := fsx.NewOpenZfsFileSystem(ctx, "example", &fsx.OpenZfsFileSystemArgs{
/// 			StorageCapacity: pulumi.Int(64),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			DeploymentType:     pulumi.String("SINGLE_AZ_1"),
/// 			ThroughputCapacity: pulumi.Int(64),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fsx.NewBackup(ctx, "example", &fsx.BackupArgs{
/// 			FileSystemId: exampleOpenZfsFileSystem.ID(),
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
/// import com.pulumi.aws.fsx.OpenZfsFileSystem;
/// import com.pulumi.aws.fsx.OpenZfsFileSystemArgs;
/// import com.pulumi.aws.fsx.Backup;
/// import com.pulumi.aws.fsx.BackupArgs;
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
///         var exampleOpenZfsFileSystem = new OpenZfsFileSystem("exampleOpenZfsFileSystem", OpenZfsFileSystemArgs.builder()
///             .storageCapacity(64)
///             .subnetIds(exampleAwsSubnet.id())
///             .deploymentType("SINGLE_AZ_1")
///             .throughputCapacity(64)
///             .build());
///
///         var example = new Backup("example", BackupArgs.builder()
///             .fileSystemId(exampleOpenZfsFileSystem.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fsx:Backup
///     properties:
///       fileSystemId: ${exampleOpenZfsFileSystem.id}
///   exampleOpenZfsFileSystem:
///     type: aws:fsx:OpenZfsFileSystem
///     name: example
///     properties:
///       storageCapacity: 64
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       deploymentType: SINGLE_AZ_1
///       throughputCapacity: 64
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Backups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/backup:Backup example fs-543ab12b1ca672f33
/// ```
class Backup extends pulumi.CustomResource {
  /// Amazon Resource Name of the backup.
  late final pulumi.Output<String> arn;
  /// The ID of the file system to back up. Required if backing up Lustre or Windows file systems.
  late final pulumi.Output<String?> fileSystemId;
  /// The ID of the AWS Key Management Service (AWS KMS) key used to encrypt the backup of the Amazon FSx file system's data at rest.
  late final pulumi.Output<String> kmsKeyId;
  /// AWS account identifier that created the file system.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the file system. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set `copy_tags_to_backups` to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of the file system backup.
  late final pulumi.Output<String> type;
  /// The ID of the volume to back up. Required if backing up a ONTAP Volume.
  ///
  /// Note - One of `file_system_id` or `volume_id` can be specified. `file_system_id` is used for Lustre and Windows, `volume_id` is used for ONTAP.
  late final pulumi.Output<String?> volumeId;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_fsx_backup_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(
    String name, {
    BackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/backup:Backup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fileSystemId = registerOutput<String?>('fileSystemId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.volumeId = registerOutput<String?>('volumeId');
  }

  /// Gets an existing [Backup] resource's state with the given [name] and [id].
  static Backup get(
    String name,
    pulumi.Input<String> id, {
    BackupState? state,
  }) {
    return Backup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Backup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/backup:Backup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fileSystemId = registerOutput<String?>('fileSystemId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.volumeId = registerOutput<String?>('volumeId');
  }
}
