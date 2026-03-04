import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_args.dart';
import 'file_system_state.dart';

/// Provides a Apsara File Storage for HDFS (DFS) File System resource.
///
///
///
/// For information about Apsara File Storage for HDFS (DFS) File System and how to use it, see [What is File System](https://www.alibabacloud.com/help/en/aibaba-cloud-storage-services/latest/apsara-file-storage-for-hdfs).
///
/// &gt; **NOTE:** Available since v1.140.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.dfs.FileSystem("default", {
///     storageType: "PERFORMANCE",
///     zoneId: "cn-hangzhou-b",
///     protocolType: "PANGU",
///     description: name,
///     fileSystemName: name,
///     throughputMode: "Provisioned",
///     spaceCapacity: 1024,
///     provisionedThroughputInMiBps: 512,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.dfs.FileSystem("default",
///     storage_type="PERFORMANCE",
///     zone_id="cn-hangzhou-b",
///     protocol_type="PANGU",
///     description=name,
///     file_system_name=name,
///     throughput_mode="Provisioned",
///     space_capacity=1024,
///     provisioned_throughput_in_mi_bps=512)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.Dfs.FileSystem("default", new()
///     {
///         StorageType = "PERFORMANCE",
///         ZoneId = "cn-hangzhou-b",
///         ProtocolType = "PANGU",
///         Description = name,
///         FileSystemName = name,
///         ThroughputMode = "Provisioned",
///         SpaceCapacity = 1024,
///         ProvisionedThroughputInMiBps = 512,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := dfs.NewFileSystem(ctx, "default", &dfs.FileSystemArgs{
/// 			StorageType:                  pulumi.String("PERFORMANCE"),
/// 			ZoneId:                       pulumi.String("cn-hangzhou-b"),
/// 			ProtocolType:                 pulumi.String("PANGU"),
/// 			Description:                  pulumi.String(name),
/// 			FileSystemName:               pulumi.String(name),
/// 			ThroughputMode:               pulumi.String("Provisioned"),
/// 			SpaceCapacity:                pulumi.Int(1024),
/// 			ProvisionedThroughputInMiBps: pulumi.Int(512),
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
/// import com.pulumi.alicloud.dfs.FileSystem;
/// import com.pulumi.alicloud.dfs.FileSystemArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var default_ = new FileSystem("default", FileSystemArgs.builder()
///             .storageType("PERFORMANCE")
///             .zoneId("cn-hangzhou-b")
///             .protocolType("PANGU")
///             .description(name)
///             .fileSystemName(name)
///             .throughputMode("Provisioned")
///             .spaceCapacity(1024)
///             .provisionedThroughputInMiBps(512)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   default:
///     type: alicloud:dfs:FileSystem
///     properties:
///       storageType: PERFORMANCE
///       zoneId: cn-hangzhou-b
///       protocolType: PANGU
///       description: ${name}
///       fileSystemName: ${name}
///       throughputMode: Provisioned
///       spaceCapacity: '1024'
///       provisionedThroughputInMiBps: '512'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Apsara File Storage for HDFS (DFS) File System can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dfs/fileSystem:FileSystem example <id>
/// ```
class FileSystem extends pulumi.CustomResource {
  /// The creation time of the file system instance.
  late final pulumi.Output<String> createTime;

  /// Redundancy mode of the file system. Value:
  /// - LRS (default): Local redundancy.
  /// - ZRS: Same-City redundancy. When ZRS is selected, zoneId is a string consisting of multiple zones that are expected to be redundant in the same city, for example,  'zoneId1,zoneId2 '.
  late final pulumi.Output<String?> dataRedundancyType;

  /// Dedicated cluster id, which is used to support scenarios such as group cloud migration.
  late final pulumi.Output<String?> dedicatedClusterId;

  /// The description of the file system resource. No more than 32 characters in length.
  late final pulumi.Output<String?> description;

  /// The file system name. The naming rules are as follows: The length is 6~64 characters. Globally unique and cannot be an empty string. English letters are supported and can contain numbers, underscores (_), and dashes (-).
  late final pulumi.Output<String> fileSystemName;

  /// Save set sequence number, the user selects the content of the specified sequence number in the Save set.
  late final pulumi.Output<int?> partitionNumber;

  /// The protocol type. Value: `HDFS`, `PANGU`.
  late final pulumi.Output<String> protocolType;

  /// Provisioned throughput. This parameter is required when ThroughputMode is set to Provisioned. Unit: MB/s Value range: 1~5120.
  late final pulumi.Output<int?> provisionedThroughputInMiBps;

  /// (Available since v1.242.0) The region ID of the File System.
  late final pulumi.Output<String> regionId;

  /// File system capacity.  When the actual amount of data stored reaches the capacity of the file system, data cannot be written.  Unit: GiB.
  late final pulumi.Output<int> spaceCapacity;

  /// Save set identity, used to select a user-specified save set.
  late final pulumi.Output<String?> storageSetName;

  /// The storage media type. Value: STANDARD (default): STANDARD PERFORMANCE: PERFORMANCE type.
  late final pulumi.Output<String> storageType;

  /// The throughput mode. Value: Standard (default): Standard throughput Provisioned: preset throughput.
  late final pulumi.Output<String> throughputMode;

  /// Zone Id, which is used to create file system resources to the specified zone.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [FileSystem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystem]. {@macro pulumi_dfs_file_system_file_system_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystem(
    String name, {
    FileSystemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dfs/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dataRedundancyType = registerOutput<String?>('dataRedundancyType');
    dedicatedClusterId = registerOutput<String?>('dedicatedClusterId');
    description = registerOutput<String?>('description');
    fileSystemName = registerOutput<String>('fileSystemName');
    partitionNumber = registerOutput<int?>('partitionNumber');
    protocolType = registerOutput<String>('protocolType');
    provisionedThroughputInMiBps = registerOutput<int?>(
      'provisionedThroughputInMiBps',
    );
    regionId = registerOutput<String>('regionId');
    spaceCapacity = registerOutput<int>('spaceCapacity');
    storageSetName = registerOutput<String?>('storageSetName');
    storageType = registerOutput<String>('storageType');
    throughputMode = registerOutput<String>('throughputMode');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [FileSystem] resource's state with the given [name] and [id].
  static FileSystem get(
    String name,
    pulumi.Input<String> id, {
    FileSystemState? state,
  }) {
    return FileSystem._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileSystem._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:dfs/fileSystem:FileSystem',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    dataRedundancyType = registerOutput<String?>('dataRedundancyType');
    dedicatedClusterId = registerOutput<String?>('dedicatedClusterId');
    description = registerOutput<String?>('description');
    fileSystemName = registerOutput<String>('fileSystemName');
    partitionNumber = registerOutput<int?>('partitionNumber');
    protocolType = registerOutput<String>('protocolType');
    provisionedThroughputInMiBps = registerOutput<int?>(
      'provisionedThroughputInMiBps',
    );
    regionId = registerOutput<String>('regionId');
    spaceCapacity = registerOutput<int>('spaceCapacity');
    storageSetName = registerOutput<String?>('storageSetName');
    storageType = registerOutput<String>('storageType');
    throughputMode = registerOutput<String>('throughputMode');
    zoneId = registerOutput<String?>('zoneId');
  }
}
