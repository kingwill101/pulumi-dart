import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_point_args.dart';
import 'mount_point_state.dart';

/// Provides a Apsara File Storage for HDFS (DFS) Mount Point resource.
///
/// For information about Apsara File Storage for HDFS (DFS) Mount Point and how to use it, see [What is Mount Point](https://www.alibabacloud.com/help/en/aibaba-cloud-storage-services/latest/apsara-file-storage-for-hdfs).
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
/// const _default = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: _default.id,
///     zoneId: "cn-hangzhou-e",
/// });
/// const defaultFileSystem = new alicloud.dfs.FileSystem("default", {
///     storageType: "STANDARD",
///     zoneId: "cn-hangzhou-e",
///     protocolType: "PANGU",
///     description: name,
///     fileSystemName: name,
///     throughputMode: "Provisioned",
///     spaceCapacity: 1024,
///     provisionedThroughputInMiBps: 512,
/// });
/// const defaultAccessGroup = new alicloud.dfs.AccessGroup("default", {
///     accessGroupName: name,
///     description: name,
///     networkType: "VPC",
/// });
/// const defaultMountPoint = new alicloud.dfs.MountPoint("default", {
///     description: name,
///     vpcId: _default.id,
///     fileSystemId: defaultFileSystem.id,
///     accessGroupId: defaultAccessGroup.id,
///     networkType: "VPC",
///     vswitchId: defaultSwitch.id,
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
/// default = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default.id,
///     zone_id="cn-hangzhou-e")
/// default_file_system = alicloud.dfs.FileSystem("default",
///     storage_type="STANDARD",
///     zone_id="cn-hangzhou-e",
///     protocol_type="PANGU",
///     description=name,
///     file_system_name=name,
///     throughput_mode="Provisioned",
///     space_capacity=1024,
///     provisioned_throughput_in_mi_bps=512)
/// default_access_group = alicloud.dfs.AccessGroup("default",
///     access_group_name=name,
///     description=name,
///     network_type="VPC")
/// default_mount_point = alicloud.dfs.MountPoint("default",
///     description=name,
///     vpc_id=default.id,
///     file_system_id=default_file_system.id,
///     access_group_id=default_access_group.id,
///     network_type="VPC",
///     vswitch_id=default_switch.id)
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
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = @default.Id,
///         ZoneId = "cn-hangzhou-e",
///     });
///
///     var defaultFileSystem = new AliCloud.Dfs.FileSystem("default", new()
///     {
///         StorageType = "STANDARD",
///         ZoneId = "cn-hangzhou-e",
///         ProtocolType = "PANGU",
///         Description = name,
///         FileSystemName = name,
///         ThroughputMode = "Provisioned",
///         SpaceCapacity = 1024,
///         ProvisionedThroughputInMiBps = 512,
///     });
///
///     var defaultAccessGroup = new AliCloud.Dfs.AccessGroup("default", new()
///     {
///         AccessGroupName = name,
///         Description = name,
///         NetworkType = "VPC",
///     });
///
///     var defaultMountPoint = new AliCloud.Dfs.MountPoint("default", new()
///     {
///         Description = name,
///         VpcId = @default.Id,
///         FileSystemId = defaultFileSystem.Id,
///         AccessGroupId = defaultAccessGroup.Id,
///         NetworkType = "VPC",
///         VswitchId = defaultSwitch.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       _default.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-e"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFileSystem, err := dfs.NewFileSystem(ctx, "default", &dfs.FileSystemArgs{
/// 			StorageType:                  pulumi.String("STANDARD"),
/// 			ZoneId:                       pulumi.String("cn-hangzhou-e"),
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
/// 		defaultAccessGroup, err := dfs.NewAccessGroup(ctx, "default", &dfs.AccessGroupArgs{
/// 			AccessGroupName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 			NetworkType:     pulumi.String("VPC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dfs.NewMountPoint(ctx, "default", &dfs.MountPointArgs{
/// 			Description:   pulumi.String(name),
/// 			VpcId:         _default.ID(),
/// 			FileSystemId:  defaultFileSystem.ID(),
/// 			AccessGroupId: defaultAccessGroup.ID(),
/// 			NetworkType:   pulumi.String("VPC"),
/// 			VswitchId:     defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.dfs.FileSystem;
/// import com.pulumi.alicloud.dfs.FileSystemArgs;
/// import com.pulumi.alicloud.dfs.AccessGroup;
/// import com.pulumi.alicloud.dfs.AccessGroupArgs;
/// import com.pulumi.alicloud.dfs.MountPoint;
/// import com.pulumi.alicloud.dfs.MountPointArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(default_.id())
///             .zoneId("cn-hangzhou-e")
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .storageType("STANDARD")
///             .zoneId("cn-hangzhou-e")
///             .protocolType("PANGU")
///             .description(name)
///             .fileSystemName(name)
///             .throughputMode("Provisioned")
///             .spaceCapacity(1024)
///             .provisionedThroughputInMiBps(512)
///             .build());
///
///         var defaultAccessGroup = new AccessGroup("defaultAccessGroup", AccessGroupArgs.builder()
///             .accessGroupName(name)
///             .description(name)
///             .networkType("VPC")
///             .build());
///
///         var defaultMountPoint = new MountPoint("defaultMountPoint", MountPointArgs.builder()
///             .description(name)
///             .vpcId(default_.id())
///             .fileSystemId(defaultFileSystem.id())
///             .accessGroupId(defaultAccessGroup.id())
///             .networkType("VPC")
///             .vswitchId(defaultSwitch.id())
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
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${default.id}
///       zoneId: cn-hangzhou-e
///   defaultFileSystem:
///     type: alicloud:dfs:FileSystem
///     name: default
///     properties:
///       storageType: STANDARD
///       zoneId: cn-hangzhou-e
///       protocolType: PANGU
///       description: ${name}
///       fileSystemName: ${name}
///       throughputMode: Provisioned
///       spaceCapacity: '1024'
///       provisionedThroughputInMiBps: '512'
///   defaultAccessGroup:
///     type: alicloud:dfs:AccessGroup
///     name: default
///     properties:
///       accessGroupName: ${name}
///       description: ${name}
///       networkType: VPC
///   defaultMountPoint:
///     type: alicloud:dfs:MountPoint
///     name: default
///     properties:
///       description: ${name}
///       vpcId: ${default.id}
///       fileSystemId: ${defaultFileSystem.id}
///       accessGroupId: ${defaultAccessGroup.id}
///       networkType: VPC
///       vswitchId: ${defaultSwitch.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Apsara File Storage for HDFS (DFS) Mount Point can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dfs/mountPoint:MountPoint example <file_system_id>:<mount_point_id>
/// ```
class MountPoint extends pulumi.CustomResource {
  /// The id of the permission group associated with the Mount point, which is used to set the access permissions of the Mount point.
  late final pulumi.Output<String> accessGroupId;
  /// The mount point alias prefix, which specifies the mount point alias prefix.
  late final pulumi.Output<String?> aliasPrefix;
  /// The creation time of the Mount point resource.
  late final pulumi.Output<String> createTime;
  /// The description of the Mount point.  No more than 32 characters in length.
  late final pulumi.Output<String?> description;
  /// Unique file system identifier, used to retrieve specified file system resources.
  late final pulumi.Output<String> fileSystemId;
  /// The unique identifier of the Mount point, which is used to retrieve the specified mount point resources.
  late final pulumi.Output<String> mountPointId;
  /// The network type of the Mount point.  Only VPC (VPC) is supported.
  late final pulumi.Output<String> networkType;
  /// (Available since v1.242.0) The region ID of the Mount Point.
  late final pulumi.Output<String> regionId;
  /// Mount point status. Value: Inactive: Disable mount points Active: Activate the mount point.
  late final pulumi.Output<String> status;
  /// The ID of the VPC. Specifies the VPC environment to which the mount point belongs.
  late final pulumi.Output<String> vpcId;
  /// VSwitch ID, which specifies the VSwitch resource used to create the mount point.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [MountPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MountPoint]. {@macro pulumi_dfs_mount_point_mount_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MountPoint(
    String name, {
    MountPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dfs/mountPoint:MountPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupId = registerOutput<String>('accessGroupId');
    aliasPrefix = registerOutput<String?>('aliasPrefix');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fileSystemId = registerOutput<String>('fileSystemId');
    mountPointId = registerOutput<String>('mountPointId');
    networkType = registerOutput<String>('networkType');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [MountPoint] resource's state with the given [name] and [id].
  static MountPoint get(
    String name,
    pulumi.Input<String> id, {
    MountPointState? state,
  }) {
    return MountPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MountPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dfs/mountPoint:MountPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupId = registerOutput<String>('accessGroupId');
    aliasPrefix = registerOutput<String?>('aliasPrefix');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    fileSystemId = registerOutput<String>('fileSystemId');
    mountPointId = registerOutput<String>('mountPointId');
    networkType = registerOutput<String>('networkType');
    regionId = registerOutput<String>('regionId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
