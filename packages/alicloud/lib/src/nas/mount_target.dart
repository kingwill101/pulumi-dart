import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_target_args.dart';

/// Provides a File Storage (NAS) Mount Target resource.
///
/// File system mount point.
///
/// For information about File Storage (NAS) Mount Target and how to use it, see [What is Mount Target](https://www.alibabacloud.com/help/en/doc-detail/27531.htm).
///
/// > **NOTE:** Available since v1.34.0.
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
/// const _default = alicloud.nas.getZones({
///     fileSystemType: "extreme",
/// });
/// const countSize = _default.then(_default => _default.zones).length;
/// const zoneId = pulumi.all([_default, countSize]).apply(([_default, countSize]) => _default.zones[countSize - 1].zoneId);
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: example.vpcName,
///     cidrBlock: example.cidrBlock,
///     vpcId: example.id,
///     zoneId: zoneId,
/// });
/// const exampleFileSystem = new alicloud.nas.FileSystem("example", {
///     protocolType: "NFS",
///     storageType: "advance",
///     fileSystemType: "extreme",
///     capacity: 100,
///     zoneId: zoneId,
/// });
/// const exampleAccessGroup = new alicloud.nas.AccessGroup("example", {
///     accessGroupName: "access_group_xxx",
///     accessGroupType: "Vpc",
///     description: "test_access_group",
///     fileSystemType: "extreme",
/// });
/// const exampleMountTarget = new alicloud.nas.MountTarget("example", {
///     fileSystemId: exampleFileSystem.id,
///     accessGroupName: exampleAccessGroup.accessGroupName,
///     vswitchId: exampleSwitch.id,
///     vpcId: example.id,
///     networkType: exampleAccessGroup.accessGroupType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.nas.get_zones(file_system_type="extreme")
/// count_size = len(default.zones)
/// zone_id = count_size.apply(lambda count_size: default.zones[count_size - 1]).apply(lambda obj: obj.zone_id)
/// example = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=example.vpc_name,
///     cidr_block=example.cidr_block,
///     vpc_id=example.id,
///     zone_id=zone_id)
/// example_file_system = alicloud.nas.FileSystem("example",
///     protocol_type="NFS",
///     storage_type="advance",
///     file_system_type="extreme",
///     capacity=100,
///     zone_id=zone_id)
/// example_access_group = alicloud.nas.AccessGroup("example",
///     access_group_name="access_group_xxx",
///     access_group_type="Vpc",
///     description="test_access_group",
///     file_system_type="extreme")
/// example_mount_target = alicloud.nas.MountTarget("example",
///     file_system_id=example_file_system.id,
///     access_group_name=example_access_group.access_group_name,
///     vswitch_id=example_switch.id,
///     vpc_id=example.id,
///     network_type=example_access_group.access_group_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Nas.GetZones.Invoke(new()
///     {
///         FileSystemType = "extreme",
///     });
///
///     var countSize = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length;
///
///     var zoneId = Output.Tuple(@default, countSize).Apply(values =>
///     {
///         var @default = values.Item1;
///         var countSize = values.Item2;
///         return @default.Apply(getZonesResult => getZonesResult.Zones)[countSize - 1].ZoneId;
///     });
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = example.VpcName,
///         CidrBlock = example.CidrBlock,
///         VpcId = example.Id,
///         ZoneId = zoneId,
///     });
///
///     var exampleFileSystem = new AliCloud.Nas.FileSystem("example", new()
///     {
///         ProtocolType = "NFS",
///         StorageType = "advance",
///         FileSystemType = "extreme",
///         Capacity = 100,
///         ZoneId = zoneId,
///     });
///
///     var exampleAccessGroup = new AliCloud.Nas.AccessGroup("example", new()
///     {
///         AccessGroupName = "access_group_xxx",
///         AccessGroupType = "Vpc",
///         Description = "test_access_group",
///         FileSystemType = "extreme",
///     });
///
///     var exampleMountTarget = new AliCloud.Nas.MountTarget("example", new()
///     {
///         FileSystemId = exampleFileSystem.Id,
///         AccessGroupName = exampleAccessGroup.AccessGroupName,
///         VswitchId = exampleSwitch.Id,
///         VpcId = example.Id,
///         NetworkType = exampleAccessGroup.AccessGroupType,
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := nas.GetZones(ctx, &nas.GetZonesArgs{
/// 			FileSystemType: pulumi.StringRef("extreme"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		countSize := len(_default.Zones)
/// 		zoneId := countSize.ApplyT(func(countSize int) (nas.GetZonesZone, error) {
/// 			return nas.GetZonesZone(_default.Zones[float64(countSize.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output))]), nil
/// 		}).(nas.GetZonesZoneOutput).ApplyT(func(obj nas.GetZonesZone) (*string, error) {
/// 			return obj.ZoneId, nil
/// 		}).(pulumi.StringPtrOutput)
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: example.VpcName,
/// 			CidrBlock:   example.CidrBlock,
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFileSystem, err := nas.NewFileSystem(ctx, "example", &nas.FileSystemArgs{
/// 			ProtocolType:   pulumi.String("NFS"),
/// 			StorageType:    pulumi.String("advance"),
/// 			FileSystemType: pulumi.String("extreme"),
/// 			Capacity:       pulumi.Int(100),
/// 			ZoneId:         pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessGroup, err := nas.NewAccessGroup(ctx, "example", &nas.AccessGroupArgs{
/// 			AccessGroupName: pulumi.String("access_group_xxx"),
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			Description:     pulumi.String("test_access_group"),
/// 			FileSystemType:  pulumi.String("extreme"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewMountTarget(ctx, "example", &nas.MountTargetArgs{
/// 			FileSystemId:    exampleFileSystem.ID(),
/// 			AccessGroupName: exampleAccessGroup.AccessGroupName,
/// 			VswitchId:       exampleSwitch.ID(),
/// 			VpcId:           example.ID(),
/// 			NetworkType:     exampleAccessGroup.AccessGroupType,
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.AccessGroup;
/// import com.pulumi.alicloud.nas.AccessGroupArgs;
/// import com.pulumi.alicloud.nas.MountTarget;
/// import com.pulumi.alicloud.nas.MountTargetArgs;
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
///         final var default = NasFunctions.getZones(GetZonesArgs.builder()
///             .fileSystemType("extreme")
///             .build());
///
///         final var countSize = default_.zones().length();
///
///         final var zoneId = countSize.applyValue(_countSize -> default_.zones()[_countSize - 1]).applyValue(_obj -> _obj.zoneId());
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(example.vpcName())
///             .cidrBlock(example.cidrBlock())
///             .vpcId(example.id())
///             .zoneId(zoneId)
///             .build());
///
///         var exampleFileSystem = new FileSystem("exampleFileSystem", FileSystemArgs.builder()
///             .protocolType("NFS")
///             .storageType("advance")
///             .fileSystemType("extreme")
///             .capacity(100)
///             .zoneId(zoneId)
///             .build());
///
///         var exampleAccessGroup = new AccessGroup("exampleAccessGroup", AccessGroupArgs.builder()
///             .accessGroupName("access_group_xxx")
///             .accessGroupType("Vpc")
///             .description("test_access_group")
///             .fileSystemType("extreme")
///             .build());
///
///         var exampleMountTarget = new MountTarget("exampleMountTarget", MountTargetArgs.builder()
///             .fileSystemId(exampleFileSystem.id())
///             .accessGroupName(exampleAccessGroup.accessGroupName())
///             .vswitchId(exampleSwitch.id())
///             .vpcId(example.id())
///             .networkType(exampleAccessGroup.accessGroupType())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Mount Target can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/mountTarget:MountTarget example <file_system_id>:<mount_target_domain>
/// ```
class MountTarget extends pulumi.CustomResource {
  /// The name of the permission group.
  late final pulumi.Output<String?> accessGroupName;
  /// Whether to create an IPv6 mount point.
  ///
  /// Value:
  /// - true: create
  /// - false (default): not created
  ///
  /// > **NOTE:**  currently, only extreme NAS supports IPv6 function in various regions in mainland China, and IPv6 function needs to be turned on for this file system.
  late final pulumi.Output<bool?> dualStack;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The domain name of the Mount point.
  late final pulumi.Output<String> mountTargetDomain;
  /// Network type.
  late final pulumi.Output<String> networkType;
  /// The ID of the security group.
  late final pulumi.Output<String?> securityGroupId;
  /// The current status of the Mount point, including Active and Inactive, can be used to mount the file system only when the status is Active.
  late final pulumi.Output<String> status;
  /// VPC ID.
  late final pulumi.Output<String> vpcId;
  /// The ID of the switch.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [MountTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MountTarget]. {@macro pulumi_nas_mount_target_mount_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MountTarget(
    String name, {
    MountTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/mountTarget:MountTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessGroupName = registerOutput<String?>('accessGroupName');
    this.dualStack = registerOutput<bool?>('dualStack');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.mountTargetDomain = registerOutput<String>('mountTargetDomain');
    this.networkType = registerOutput<String>('networkType');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
