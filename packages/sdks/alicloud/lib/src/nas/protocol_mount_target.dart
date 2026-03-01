import 'package:pulumi/pulumi.dart' as pulumi;
import 'protocol_mount_target_args.dart';
import 'protocol_mount_target_state.dart';

/// Provides a File Storage (NAS) Protocol Mount Target resource.
///
///
///
/// For information about File Storage (NAS) Protocol Mount Target and how to use it, see [What is Protocol Mount Target](https://next.api.alibabacloud.com/document/NAS/2017-06-26/CreateProtocolMountTarget).
///
/// > **NOTE:** Available since v1.267.0.
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
/// const name = config.get("name") || "terraform-example";
/// const example = new alicloud.vpc.Network("example", {
///     isDefault: false,
///     cidrBlock: "192.168.0.0/16",
///     vpcName: "nas-examplee1223-vpc",
///     enableIpv6: true,
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     isDefault: false,
///     vpcId: example.id,
///     zoneId: "cn-beijing-i",
///     cidrBlock: "192.168.3.0/24",
///     vswitchName: "nas-examplee1223-vsw2sdw-C",
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     description: name,
///     storageType: "advance_100",
///     zoneId: "cn-beijing-i",
///     vpcId: example.id,
///     capacity: 3600,
///     protocolType: "cpfs",
///     vswitchId: exampleSwitch.id,
///     fileSystemType: "cpfs",
/// });
/// const exampleProtocolService = new alicloud.nas.ProtocolService("example", {
///     vpcId: example.id,
///     protocolType: "NFS",
///     protocolSpec: "General",
///     vswitchId: exampleSwitch.id,
///     dryRun: false,
///     fileSystemId: exampleFileSystem.id,
/// });
/// const exampleFileset = new alicloud.nas.Fileset("example", {
///     fileSystemPath: "/examplefileset/",
///     description: "cpfs-LRS-filesetexample-wyf",
///     fileSystemId: exampleFileSystem.id,
/// });
/// const _default = new alicloud.nas.ProtocolMountTarget("default", {
///     fsetId: exampleFileset.filesetId,
///     description: name,
///     vpcId: example.id,
///     vswitchId: exampleSwitch.id,
///     accessGroupName: "DEFAULT_VPC_GROUP_NAME",
///     dryRun: false,
///     fileSystemId: exampleFileSystem.id,
///     protocolServiceId: exampleProtocolService.protocolServiceId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.vpc.Network("example",
///     is_default=False,
///     cidr_block="192.168.0.0/16",
///     vpc_name="nas-examplee1223-vpc",
///     enable_ipv6=True)
/// example_switch = alicloud.vpc.Switch("example",
///     is_default=False,
///     vpc_id=example.id,
///     zone_id="cn-beijing-i",
///     cidr_block="192.168.3.0/24",
///     vswitch_name="nas-examplee1223-vsw2sdw-C")
/// example_file_system = alicloud.nas.FileSystem("example",
///     description=name,
///     storage_type="advance_100",
///     zone_id="cn-beijing-i",
///     vpc_id=example.id,
///     capacity=3600,
///     protocol_type="cpfs",
///     vswitch_id=example_switch.id,
///     file_system_type="cpfs")
/// example_protocol_service = alicloud.nas.ProtocolService("example",
///     vpc_id=example.id,
///     protocol_type="NFS",
///     protocol_spec="General",
///     vswitch_id=example_switch.id,
///     dry_run=False,
///     file_system_id=example_file_system.id)
/// example_fileset = alicloud.nas.Fileset("example",
///     file_system_path="/examplefileset/",
///     description="cpfs-LRS-filesetexample-wyf",
///     file_system_id=example_file_system.id)
/// default = alicloud.nas.ProtocolMountTarget("default",
///     fset_id=example_fileset.fileset_id,
///     description=name,
///     vpc_id=example.id,
///     vswitch_id=example_switch.id,
///     access_group_name="DEFAULT_VPC_GROUP_NAME",
///     dry_run=False,
///     file_system_id=example_file_system.id,
///     protocol_service_id=example_protocol_service.protocol_service_id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         IsDefault = false,
///         CidrBlock = "192.168.0.0/16",
///         VpcName = "nas-examplee1223-vpc",
///         EnableIpv6 = true,
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         IsDefault = false,
///         VpcId = example.Id,
///         ZoneId = "cn-beijing-i",
///         CidrBlock = "192.168.3.0/24",
///         VswitchName = "nas-examplee1223-vsw2sdw-C",
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         Description = name,
///         StorageType = "advance_100",
///         ZoneId = "cn-beijing-i",
///         VpcId = example.Id,
///         Capacity = 3600,
///         ProtocolType = "cpfs",
///         VswitchId = exampleSwitch.Id,
///         FileSystemType = "cpfs",
///     });
///
///     var exampleProtocolService = new AliCloud.Nas.ProtocolService("example", new()
///     {
///         VpcId = example.Id,
///         ProtocolType = "NFS",
///         ProtocolSpec = "General",
///         VswitchId = exampleSwitch.Id,
///         DryRun = false,
///         FileSystemId = exampleFileSystem.Id,
///     });
///
///     var exampleFileset = new AliCloud.Nas.Fileset("example", new()
///     {
///         FileSystemPath = "/examplefileset/",
///         Description = "cpfs-LRS-filesetexample-wyf",
///         FileSystemId = exampleFileSystem.Id,
///     });
///
///     var @default = new AliCloud.Nas.ProtocolMountTarget("default", new()
///     {
///         FsetId = exampleFileset.FilesetId,
///         Description = name,
///         VpcId = example.Id,
///         VswitchId = exampleSwitch.Id,
///         AccessGroupName = "DEFAULT_VPC_GROUP_NAME",
///         DryRun = false,
///         FileSystemId = exampleFileSystem.Id,
///         ProtocolServiceId = exampleProtocolService.ProtocolServiceId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			IsDefault:  pulumi.Bool(false),
/// 			CidrBlock:  pulumi.String("192.168.0.0/16"),
/// 			VpcName:    pulumi.String("nas-examplee1223-vpc"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-i"),
/// 			CidrBlock:   pulumi.String("192.168.3.0/24"),
/// 			VswitchName: pulumi.String("nas-examplee1223-vsw2sdw-C"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			Description:    pulumi.String(name),
/// 			StorageType:    pulumi.String("advance_100"),
/// 			ZoneId:         pulumi.String("cn-beijing-i"),
/// 			VpcId:          example.ID(),
/// 			Capacity:       pulumi.Int(3600),
/// 			ProtocolType:   pulumi.String("cpfs"),
/// 			VswitchId:      exampleSwitch.ID(),
/// 			FileSystemType: pulumi.String("cpfs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleProtocolService, err := nas.NewProtocolService(ctx, "example", &nas.ProtocolServiceArgs{
/// 			VpcId:        example.ID(),
/// 			ProtocolType: pulumi.String("NFS"),
/// 			ProtocolSpec: pulumi.String("General"),
/// 			VswitchId:    exampleSwitch.ID(),
/// 			DryRun:       pulumi.Bool(false),
/// 			FileSystemId: exampleFileSystem.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileset, err := nas.NewFileset(ctx, "example", &nas.FilesetArgs{
/// 			FileSystemPath: pulumi.String("/examplefileset/"),
/// 			Description:    pulumi.String("cpfs-LRS-filesetexample-wyf"),
/// 			FileSystemId:   exampleFileSystem.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewProtocolMountTarget(ctx, "default", &nas.ProtocolMountTargetArgs{
/// 			FsetId:            exampleFileset.FilesetId,
/// 			Description:       pulumi.String(name),
/// 			VpcId:             example.ID(),
/// 			VswitchId:         exampleSwitch.ID(),
/// 			AccessGroupName:   pulumi.String("DEFAULT_VPC_GROUP_NAME"),
/// 			DryRun:            pulumi.Bool(false),
/// 			FileSystemId:      exampleFileSystem.ID(),
/// 			ProtocolServiceId: exampleProtocolService.ProtocolServiceId,
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
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.ProtocolService;
/// import com.pulumi.alicloud.nas.ProtocolServiceArgs;
/// import com.pulumi.alicloud.nas.Fileset;
/// import com.pulumi.alicloud.nas.FilesetArgs;
/// import com.pulumi.alicloud.nas.ProtocolMountTarget;
/// import com.pulumi.alicloud.nas.ProtocolMountTargetArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .isDefault(false)
///             .cidrBlock("192.168.0.0/16")
///             .vpcName("nas-examplee1223-vpc")
///             .enableIpv6(true)
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .isDefault(false)
///             .vpcId(example.id())
///             .zoneId("cn-beijing-i")
///             .cidrBlock("192.168.3.0/24")
///             .vswitchName("nas-examplee1223-vsw2sdw-C")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .description(name)
///             .storageType("advance_100")
///             .zoneId("cn-beijing-i")
///             .vpcId(example.id())
///             .capacity(3600)
///             .protocolType("cpfs")
///             .vswitchId(exampleSwitch.id())
///             .fileSystemType("cpfs")
///             .build());
///
///         var exampleProtocolService = new ProtocolService("exampleProtocolService", ProtocolServiceArgs.builder()
///             .vpcId(example.id())
///             .protocolType("NFS")
///             .protocolSpec("General")
///             .vswitchId(exampleSwitch.id())
///             .dryRun(false)
///             .fileSystemId(exampleFileSystem.id())
///             .build());
///
///         var exampleFileset = new Fileset("exampleFileset", FilesetArgs.builder()
///             .fileSystemPath("/examplefileset/")
///             .description("cpfs-LRS-filesetexample-wyf")
///             .fileSystemId(exampleFileSystem.id())
///             .build());
///
///         var default_ = new ProtocolMountTarget("default", ProtocolMountTargetArgs.builder()
///             .fsetId(exampleFileset.filesetId())
///             .description(name)
///             .vpcId(example.id())
///             .vswitchId(exampleSwitch.id())
///             .accessGroupName("DEFAULT_VPC_GROUP_NAME")
///             .dryRun(false)
///             .fileSystemId(exampleFileSystem.id())
///             .protocolServiceId(exampleProtocolService.protocolServiceId())
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
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       isDefault: false
///       cidrBlock: 192.168.0.0/16
///       vpcName: nas-examplee1223-vpc
///       enableIpv6: true
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       isDefault: false
///       vpcId: ${example.id}
///       zoneId: cn-beijing-i
///       cidrBlock: 192.168.3.0/24
///       vswitchName: nas-examplee1223-vsw2sdw-C
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       description: ${name}
///       storageType: advance_100
///       zoneId: cn-beijing-i
///       vpcId: ${example.id}
///       capacity: '3600'
///       protocolType: cpfs
///       vswitchId: ${exampleSwitch.id}
///       fileSystemType: cpfs
///   exampleProtocolService:
///     type: alicloud:nas:ProtocolService
///     name: example
///     properties:
///       vpcId: ${example.id}
///       protocolType: NFS
///       protocolSpec: General
///       vswitchId: ${exampleSwitch.id}
///       dryRun: false
///       fileSystemId: ${exampleFileSystem.id}
///   exampleFileset:
///     type: alicloud:nas:Fileset
///     name: example
///     properties:
///       fileSystemPath: /examplefileset/
///       description: cpfs-LRS-filesetexample-wyf
///       fileSystemId: ${exampleFileSystem.id}
///   default:
///     type: alicloud:nas:ProtocolMountTarget
///     properties:
///       fsetId: ${exampleFileset.filesetId}
///       description: ${name}
///       vpcId: ${example.id}
///       vswitchId: ${exampleSwitch.id}
///       accessGroupName: DEFAULT_VPC_GROUP_NAME
///       dryRun: false
///       fileSystemId: ${exampleFileSystem.id}
///       protocolServiceId: ${exampleProtocolService.protocolServiceId}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Protocol Mount Target can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/protocolMountTarget:ProtocolMountTarget example <file_system_id>:<protocol_service_id>:<export_id>
/// ```
class ProtocolMountTarget extends pulumi.CustomResource {
  /// The permission group name.
  /// Default value: DEFAULT_VPC_GROUP_NAME
  late final pulumi.Output<String> accessGroupName;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Description of the protocol service mount target. Display as the export directory name in the console.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or a Chinese character. It cannot start with http:// or https.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool?> dryRun;
  /// Protocol Service Mount Target ID
  late final pulumi.Output<String> exportId;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The ID of the Fileset to be mounted.
  ///
  /// Limitations:
  /// - The Fileset must already exist.
  /// - A Fileset allows only one export directory to be created.
  /// - Fileset and Path can and must specify only one.
  late final pulumi.Output<String?> fsetId;
  /// The path of the CPFS directory to be mounted.
  ///
  /// Limitations:
  /// - The directory must be an existing directory on the CPFS.
  /// - Only one export is allowed for the same directory.
  /// - Fileset and Path can and must specify only one.
  ///
  /// Format:
  /// - 1~1024 characters in length.
  /// - Use UTF-8 encoding.
  /// - Must start and end with a forward slash (/) and root directory is/.
  late final pulumi.Output<String> path;
  /// Protocol Service ID
  late final pulumi.Output<String> protocolServiceId;
  /// Status
  late final pulumi.Output<String> status;
  /// The VPC ID of the protocol service mount point.
  late final pulumi.Output<String?> vpcId;
  /// The vSwitch ID of the protocol service mount target.
  late final pulumi.Output<String?> vswitchId;
  /// The vSwitch IDs of the protocol service mount target.
  /// When the storage redundancy type of the file system is ZRS, if VpcId is set, the vSwitch ID of three different zones under the Vpc must be set in this field.
  late final pulumi.Output<List<String>?> vswitchIds;

  /// Creates a new [ProtocolMountTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtocolMountTarget]. {@macro pulumi_nas_protocol_mount_target_protocol_mount_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtocolMountTarget(
    String name, {
    ProtocolMountTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/protocolMountTarget:ProtocolMountTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGroupName = registerOutput<String>('accessGroupName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.exportId = registerOutput<String>('exportId');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.fsetId = registerOutput<String?>('fsetId');
    this.path = registerOutput<String>('path');
    this.protocolServiceId = registerOutput<String>('protocolServiceId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }

  /// Gets an existing [ProtocolMountTarget] resource's state with the given [name] and [id].
  static ProtocolMountTarget get(
    String name,
    pulumi.Input<String> id, {
    ProtocolMountTargetState? state,
  }) {
    return ProtocolMountTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProtocolMountTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/protocolMountTarget:ProtocolMountTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGroupName = registerOutput<String>('accessGroupName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.exportId = registerOutput<String>('exportId');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.fsetId = registerOutput<String?>('fsetId');
    this.path = registerOutput<String>('path');
    this.protocolServiceId = registerOutput<String>('protocolServiceId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String?>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.vswitchIds = registerOutput<List<String>?>('vswitchIds');
  }
}
