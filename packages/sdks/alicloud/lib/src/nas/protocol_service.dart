import 'package:pulumi/pulumi.dart' as pulumi;
import 'protocol_service_args.dart';
import 'protocol_service_state.dart';

/// Provides a File Storage (NAS) Protocol Service resource.
///
///
///
/// For information about File Storage (NAS) Protocol Service and how to use it, see [What is Protocol Service](https://next.api.alibabacloud.com/document/NAS/2017-06-26/CreateProtocolService).
///
/// &gt; **NOTE:** Available since v1.267.0.
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
///     vpcName: "nas-examplee1031-vpc",
///     enableIpv6: true,
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     isDefault: false,
///     vpcId: example.id,
///     zoneId: "cn-beijing-i",
///     cidrBlock: "192.168.2.0/24",
///     vswitchName: "nas-examplee1031-vsw1sdw-F",
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     description: name,
///     storageType: "advance_100",
///     zoneId: "cn-beijing-i",
///     encryptType: 0,
///     vpcId: example.id,
///     capacity: 3600,
///     protocolType: "cpfs",
///     vswitchId: exampleSwitch.id,
///     fileSystemType: "cpfs",
/// });
/// const _default = new alicloud.nas.ProtocolService("default", {
///     vpcId: example.id,
///     protocolType: "NFS",
///     protocolSpec: "General",
///     vswitchId: exampleSwitch.id,
///     dryRun: false,
///     fileSystemId: exampleFileSystem.id,
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
///     vpc_name="nas-examplee1031-vpc",
///     enable_ipv6=True)
/// example_switch = alicloud.vpc.Switch("example",
///     is_default=False,
///     vpc_id=example.id,
///     zone_id="cn-beijing-i",
///     cidr_block="192.168.2.0/24",
///     vswitch_name="nas-examplee1031-vsw1sdw-F")
/// example_file_system = alicloud.nas.FileSystem("example",
///     description=name,
///     storage_type="advance_100",
///     zone_id="cn-beijing-i",
///     encrypt_type=0,
///     vpc_id=example.id,
///     capacity=3600,
///     protocol_type="cpfs",
///     vswitch_id=example_switch.id,
///     file_system_type="cpfs")
/// default = alicloud.nas.ProtocolService("default",
///     vpc_id=example.id,
///     protocol_type="NFS",
///     protocol_spec="General",
///     vswitch_id=example_switch.id,
///     dry_run=False,
///     file_system_id=example_file_system.id)
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
///         VpcName = "nas-examplee1031-vpc",
///         EnableIpv6 = true,
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         IsDefault = false,
///         VpcId = example.Id,
///         ZoneId = "cn-beijing-i",
///         CidrBlock = "192.168.2.0/24",
///         VswitchName = "nas-examplee1031-vsw1sdw-F",
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         Description = name,
///         StorageType = "advance_100",
///         ZoneId = "cn-beijing-i",
///         EncryptType = 0,
///         VpcId = example.Id,
///         Capacity = 3600,
///         ProtocolType = "cpfs",
///         VswitchId = exampleSwitch.Id,
///         FileSystemType = "cpfs",
///     });
///
///     var @default = new AliCloud.Nas.ProtocolService("default", new()
///     {
///         VpcId = example.Id,
///         ProtocolType = "NFS",
///         ProtocolSpec = "General",
///         VswitchId = exampleSwitch.Id,
///         DryRun = false,
///         FileSystemId = exampleFileSystem.Id,
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
/// 			VpcName:    pulumi.String("nas-examplee1031-vpc"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			IsDefault:   pulumi.Bool(false),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-i"),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VswitchName: pulumi.String("nas-examplee1031-vsw1sdw-F"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			Description:    pulumi.String(name),
/// 			StorageType:    pulumi.String("advance_100"),
/// 			ZoneId:         pulumi.String("cn-beijing-i"),
/// 			EncryptType:    pulumi.Int(0),
/// 			VpcId:          example.ID(),
/// 			Capacity:       pulumi.Int(3600),
/// 			ProtocolType:   pulumi.String("cpfs"),
/// 			VswitchId:      exampleSwitch.ID(),
/// 			FileSystemType: pulumi.String("cpfs"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewProtocolService(ctx, "default", &nas.ProtocolServiceArgs{
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
///             .vpcName("nas-examplee1031-vpc")
///             .enableIpv6(true)
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .isDefault(false)
///             .vpcId(example.id())
///             .zoneId("cn-beijing-i")
///             .cidrBlock("192.168.2.0/24")
///             .vswitchName("nas-examplee1031-vsw1sdw-F")
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .description(name)
///             .storageType("advance_100")
///             .zoneId("cn-beijing-i")
///             .encryptType(0)
///             .vpcId(example.id())
///             .capacity(3600)
///             .protocolType("cpfs")
///             .vswitchId(exampleSwitch.id())
///             .fileSystemType("cpfs")
///             .build());
///
///         var default_ = new ProtocolService("default", ProtocolServiceArgs.builder()
///             .vpcId(example.id())
///             .protocolType("NFS")
///             .protocolSpec("General")
///             .vswitchId(exampleSwitch.id())
///             .dryRun(false)
///             .fileSystemId(exampleFileSystem.id())
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
///       vpcName: nas-examplee1031-vpc
///       enableIpv6: true
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       isDefault: false
///       vpcId: ${example.id}
///       zoneId: cn-beijing-i
///       cidrBlock: 192.168.2.0/24
///       vswitchName: nas-examplee1031-vsw1sdw-F
///   exampleFileSystem:
///     type: alicloud:nas:FileSystem
///     name: example
///     properties:
///       description: ${name}
///       storageType: advance_100
///       zoneId: cn-beijing-i
///       encryptType: '0'
///       vpcId: ${example.id}
///       capacity: '3600'
///       protocolType: cpfs
///       vswitchId: ${exampleSwitch.id}
///       fileSystemType: cpfs
///   default:
///     type: alicloud:nas:ProtocolService
///     properties:
///       vpcId: ${example.id}
///       protocolType: NFS
///       protocolSpec: General
///       vswitchId: ${exampleSwitch.id}
///       dryRun: false
///       fileSystemId: ${exampleFileSystem.id}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Protocol Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/protocolService:ProtocolService example <file_system_id>:<protocol_service_id>
/// ```
class ProtocolService extends pulumi.CustomResource {
  /// The time when the protocol server service was created. The UTC time.
  late final pulumi.Output<String> createTime;

  /// Description of the agreement service.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or Chinese, and cannot start with `http://` and `https://`.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool?> dryRun;

  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;

  /// Protocol Service ID
  late final pulumi.Output<String> protocolServiceId;

  /// The specification of the protocol machine cluster.
  /// - Value range: General、CL1、CL2
  /// - Default value: General
  late final pulumi.Output<String> protocolSpec;

  /// The throughput of the protocol service. Unit: MB/s.
  late final pulumi.Output<int> protocolThroughput;

  /// The protocol type supported by the protocol service.
  ///
  /// Value range:
  /// - NFS: Protocol Service supports NFS protocol access.
  late final pulumi.Output<String> protocolType;

  /// Agreement service status.
  late final pulumi.Output<String> status;

  /// The VpcId of the protocol service, which must be consistent with the VPC of the file system.
  late final pulumi.Output<String?> vpcId;

  /// The VSwitchId of the protocol service.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [ProtocolService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtocolService]. {@macro pulumi_nas_protocol_service_protocol_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtocolService(
    String name, {
    ProtocolServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/protocolService:ProtocolService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    fileSystemId = registerOutput<String>('fileSystemId');
    protocolServiceId = registerOutput<String>('protocolServiceId');
    protocolSpec = registerOutput<String>('protocolSpec');
    protocolThroughput = registerOutput<int>('protocolThroughput');
    protocolType = registerOutput<String>('protocolType');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
  }

  /// Gets an existing [ProtocolService] resource's state with the given [name] and [id].
  static ProtocolService get(
    String name,
    pulumi.Input<String> id, {
    ProtocolServiceState? state,
  }) {
    return ProtocolService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProtocolService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/protocolService:ProtocolService',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    dryRun = registerOutput<bool?>('dryRun');
    fileSystemId = registerOutput<String>('fileSystemId');
    protocolServiceId = registerOutput<String>('protocolServiceId');
    protocolSpec = registerOutput<String>('protocolSpec');
    protocolThroughput = registerOutput<int>('protocolThroughput');
    protocolType = registerOutput<String>('protocolType');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
  }
}
