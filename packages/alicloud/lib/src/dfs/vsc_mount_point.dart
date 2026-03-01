import 'package:pulumi/pulumi.dart' as pulumi;
import 'vsc_mount_point_args.dart';
import 'vsc_mount_point_instance.dart';

/// Provides a Apsara File Storage for HDFS (DFS) Vsc Mount Point resource.
///
/// For information about Apsara File Storage for HDFS (DFS) Vsc Mount Point and how to use it, see [What is Vsc Mount Point](https://www.alibabacloud.com/help/en/aibaba-cloud-storage-services/latest/apsara-file-storage-for-hdfs).
///
/// > **NOTE:** Available since v1.218.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultFileSystem = new alicloud.dfs.FileSystem("default", {
///     spaceCapacity: 1024,
///     description: "for vsc mountpoint RMC test",
///     storageType: "PERFORMANCE",
///     zoneId: "cn-hangzhou-b",
///     protocolType: "PANGU",
///     dataRedundancyType: "LRS",
///     fileSystemName: name,
/// });
/// const defaultFsForRMCVscMp = new alicloud.dfs.VscMountPoint("DefaultFsForRMCVscMp", {
///     fileSystemId: defaultFileSystem.id,
///     aliasPrefix: name,
///     description: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_file_system = alicloud.dfs.FileSystem("default",
///     space_capacity=1024,
///     description="for vsc mountpoint RMC test",
///     storage_type="PERFORMANCE",
///     zone_id="cn-hangzhou-b",
///     protocol_type="PANGU",
///     data_redundancy_type="LRS",
///     file_system_name=name)
/// default_fs_for_rmcvsc_mp = alicloud.dfs.VscMountPoint("DefaultFsForRMCVscMp",
///     file_system_id=default_file_system.id,
///     alias_prefix=name,
///     description=name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultFileSystem = new AliCloud.Dfs.FileSystem("default", new()
///     {
///         SpaceCapacity = 1024,
///         Description = "for vsc mountpoint RMC test",
///         StorageType = "PERFORMANCE",
///         ZoneId = "cn-hangzhou-b",
///         ProtocolType = "PANGU",
///         DataRedundancyType = "LRS",
///         FileSystemName = name,
///     });
///
///     var defaultFsForRMCVscMp = new AliCloud.Dfs.VscMountPoint("DefaultFsForRMCVscMp", new()
///     {
///         FileSystemId = defaultFileSystem.Id,
///         AliasPrefix = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFileSystem, err := dfs.NewFileSystem(ctx, "default", &dfs.FileSystemArgs{
/// 			SpaceCapacity:      pulumi.Int(1024),
/// 			Description:        pulumi.String("for vsc mountpoint RMC test"),
/// 			StorageType:        pulumi.String("PERFORMANCE"),
/// 			ZoneId:             pulumi.String("cn-hangzhou-b"),
/// 			ProtocolType:       pulumi.String("PANGU"),
/// 			DataRedundancyType: pulumi.String("LRS"),
/// 			FileSystemName:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dfs.NewVscMountPoint(ctx, "DefaultFsForRMCVscMp", &dfs.VscMountPointArgs{
/// 			FileSystemId: defaultFileSystem.ID(),
/// 			AliasPrefix:  pulumi.String(name),
/// 			Description:  pulumi.String(name),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.dfs.FileSystem;
/// import com.pulumi.alicloud.dfs.FileSystemArgs;
/// import com.pulumi.alicloud.dfs.VscMountPoint;
/// import com.pulumi.alicloud.dfs.VscMountPointArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .spaceCapacity(1024)
///             .description("for vsc mountpoint RMC test")
///             .storageType("PERFORMANCE")
///             .zoneId("cn-hangzhou-b")
///             .protocolType("PANGU")
///             .dataRedundancyType("LRS")
///             .fileSystemName(name)
///             .build());
///
///         var defaultFsForRMCVscMp = new VscMountPoint("defaultFsForRMCVscMp", VscMountPointArgs.builder()
///             .fileSystemId(defaultFileSystem.id())
///             .aliasPrefix(name)
///             .description(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultFileSystem:
///     type: alicloud:dfs:FileSystem
///     name: default
///     properties:
///       spaceCapacity: '1024'
///       description: for vsc mountpoint RMC test
///       storageType: PERFORMANCE
///       zoneId: cn-hangzhou-b
///       protocolType: PANGU
///       dataRedundancyType: LRS
///       fileSystemName: ${name}
///   defaultFsForRMCVscMp:
///     type: alicloud:dfs:VscMountPoint
///     name: DefaultFsForRMCVscMp
///     properties:
///       fileSystemId: ${defaultFileSystem.id}
///       aliasPrefix: ${name}
///       description: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Apsara File Storage for HDFS (DFS) Vsc Mount Point can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dfs/vscMountPoint:VscMountPoint example <file_system_id>:<mount_point_id>
/// ```
class VscMountPoint extends pulumi.CustomResource {
  /// Mount point alias prefix, which is used as the prefix for generating VSC mount point aliases.
  late final pulumi.Output<String?> aliasPrefix;
  /// The description of the Mount point.  The length is 0 to 100 characters.
  late final pulumi.Output<String?> description;
  /// The ID of the HDFS file system resource associated with the VSC mount point.
  late final pulumi.Output<String> fileSystemId;
  /// The collection of ECS instances on which the HDFS file system is mounted. **The current property is not available**.
  late final pulumi.Output<List<VscMountPointInstance>> instances;
  /// VSC mount point ID, which is the unique identifier of the vsc mount point and is used to access the associated HDFS file system.
  late final pulumi.Output<String> mountPointId;

  /// Creates a new [VscMountPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VscMountPoint]. {@macro pulumi_dfs_vsc_mount_point_vsc_mount_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VscMountPoint(
    String name, {
    VscMountPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dfs/vscMountPoint:VscMountPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasPrefix = registerOutput<String?>('aliasPrefix');
    this.description = registerOutput<String?>('description');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.instances = registerOutput<List<VscMountPointInstance>>('instances');
    this.mountPointId = registerOutput<String>('mountPointId');
  }
}
