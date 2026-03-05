import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_args.dart';
import 'access_point_posix_user.dart';
import 'access_point_root_path_permission.dart';
import 'access_point_state.dart';

/// Provides a File Storage (NAS) Access Point resource.
///
///
///
/// For information about NAS Access Point and how to use it, see [What is Access Point](https://www.alibabacloud.com/help/zh/nas/developer-reference/api-nas-2017-06-26-createaccesspoint).
///
/// &gt; **NOTE:** Available since v1.224.0.
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
/// const azone = config.get("azone") || "cn-hangzhou-g";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultkyVC70 = new alicloud.vpc.Network("defaultkyVC70", {
///     cidrBlock: "172.16.0.0/12",
///     description: "接入点测试noRootDirectory",
/// });
/// const defaultoZAPmO = new alicloud.vpc.Switch("defaultoZAPmO", {
///     vpcId: defaultkyVC70.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidrBlock: "172.16.0.0/24",
/// });
/// const defaultBbc7ev = new alicloud.nas.AccessGroup("defaultBbc7ev", {
///     accessGroupType: "Vpc",
///     accessGroupName: `${name}-${defaultInteger.result}`,
///     fileSystemType: "standard",
/// });
/// const defaultVtUpDh = new alicloud.nas.FileSystem("defaultVtUpDh", {
///     storageType: "Performance",
///     zoneId: azone,
///     encryptType: 0,
///     protocolType: "NFS",
///     fileSystemType: "standard",
///     description: "AccessPointnoRootDirectory",
/// });
/// const defaultAccessPoint = new alicloud.nas.AccessPoint("default", {
///     vpcId: defaultkyVC70.id,
///     accessGroup: defaultBbc7ev.accessGroupName,
///     vswitchId: defaultoZAPmO.id,
///     fileSystemId: defaultVtUpDh.id,
///     accessPointName: name,
///     posixUser: {
///         posixGroupId: 123,
///         posixUserId: 123,
///     },
///     rootPathPermission: {
///         ownerGroupId: 1,
///         ownerUserId: 1,
///         permission: "0777",
///     },
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
/// azone = config.get("azone")
/// if azone is None:
///     azone = "cn-hangzhou-g"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// defaultky_vc70 = alicloud.vpc.Network("defaultkyVC70",
///     cidr_block="172.16.0.0/12",
///     description="接入点测试noRootDirectory")
/// defaulto_za_pm_o = alicloud.vpc.Switch("defaultoZAPmO",
///     vpc_id=defaultky_vc70.id,
///     zone_id=default.zones[0].id,
///     cidr_block="172.16.0.0/24")
/// default_bbc7ev = alicloud.nas.AccessGroup("defaultBbc7ev",
///     access_group_type="Vpc",
///     access_group_name=f"{name}-{default_integer['result']}",
///     file_system_type="standard")
/// default_vt_up_dh = alicloud.nas.FileSystem("defaultVtUpDh",
///     storage_type="Performance",
///     zone_id=azone,
///     encrypt_type=0,
///     protocol_type="NFS",
///     file_system_type="standard",
///     description="AccessPointnoRootDirectory")
/// default_access_point = alicloud.nas.AccessPoint("default",
///     vpc_id=defaultky_vc70.id,
///     access_group=default_bbc7ev.access_group_name,
///     vswitch_id=defaulto_za_pm_o.id,
///     file_system_id=default_vt_up_dh.id,
///     access_point_name=name,
///     posix_user={
///         "posix_group_id": 123,
///         "posix_user_id": 123,
///     },
///     root_path_permission={
///         "owner_group_id": 1,
///         "owner_user_id": 1,
///         "permission": "0777",
///     })
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
///     var azone = config.Get("azone") ?? "cn-hangzhou-g";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultkyVC70 = new AliCloud.Vpc.Network("defaultkyVC70", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         Description = "接入点测试noRootDirectory",
///     });
///
///     var defaultoZAPmO = new AliCloud.Vpc.Switch("defaultoZAPmO", new()
///     {
///         VpcId = defaultkyVC70.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         CidrBlock = "172.16.0.0/24",
///     });
///
///     var defaultBbc7ev = new AliCloud.Nas.AccessGroup("defaultBbc7ev", new()
///     {
///         AccessGroupType = "Vpc",
///         AccessGroupName = $"{name}-{defaultInteger.Result}",
///         FileSystemType = "standard",
///     });
///
///     var defaultVtUpDh = new AliCloud.Nas.FileSystem("defaultVtUpDh", new()
///     {
///         StorageType = "Performance",
///         ZoneId = azone,
///         EncryptType = 0,
///         ProtocolType = "NFS",
///         FileSystemType = "standard",
///         Description = "AccessPointnoRootDirectory",
///     });
///
///     var defaultAccessPoint = new AliCloud.Nas.AccessPoint("default", new()
///     {
///         VpcId = defaultkyVC70.Id,
///         AccessGroup = defaultBbc7ev.AccessGroupName,
///         VswitchId = defaultoZAPmO.Id,
///         FileSystemId = defaultVtUpDh.Id,
///         AccessPointName = name,
///         PosixUser = new AliCloud.Nas.Inputs.AccessPointPosixUserArgs
///         {
///             PosixGroupId = 123,
///             PosixUserId = 123,
///         },
///         RootPathPermission = new AliCloud.Nas.Inputs.AccessPointRootPathPermissionArgs
///         {
///             OwnerGroupId = 1,
///             OwnerUserId = 1,
///             Permission = "0777",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		azone := "cn-hangzhou-g"
/// 		if param := cfg.Get("azone"); param != "" {
/// 			azone = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultkyVC70, err := vpc.NewNetwork(ctx, "defaultkyVC70", &vpc.NetworkArgs{
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 			Description: pulumi.String("接入点测试noRootDirectory"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultoZAPmO, err := vpc.NewSwitch(ctx, "defaultoZAPmO", &vpc.SwitchArgs{
/// 			VpcId:     defaultkyVC70.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			CidrBlock: pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBbc7ev, err := nas.NewAccessGroup(ctx, "defaultBbc7ev", &nas.AccessGroupArgs{
/// 			AccessGroupType: pulumi.String("Vpc"),
/// 			AccessGroupName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			FileSystemType:  pulumi.String("standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVtUpDh, err := nas.NewFileSystem(ctx, "defaultVtUpDh", &nas.FileSystemArgs{
/// 			StorageType:    pulumi.String("Performance"),
/// 			ZoneId:         pulumi.String(azone),
/// 			EncryptType:    pulumi.Int(0),
/// 			ProtocolType:   pulumi.String("NFS"),
/// 			FileSystemType: pulumi.String("standard"),
/// 			Description:    pulumi.String("AccessPointnoRootDirectory"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nas.NewAccessPoint(ctx, "default", &nas.AccessPointArgs{
/// 			VpcId:           defaultkyVC70.ID(),
/// 			AccessGroup:     defaultBbc7ev.AccessGroupName,
/// 			VswitchId:       defaultoZAPmO.ID(),
/// 			FileSystemId:    defaultVtUpDh.ID(),
/// 			AccessPointName: pulumi.String(name),
/// 			PosixUser: &nas.AccessPointPosixUserArgs{
/// 				PosixGroupId: pulumi.Int(123),
/// 				PosixUserId:  pulumi.Int(123),
/// 			},
/// 			RootPathPermission: &nas.AccessPointRootPathPermissionArgs{
/// 				OwnerGroupId: pulumi.Int(1),
/// 				OwnerUserId:  pulumi.Int(1),
/// 				Permission:   pulumi.String("0777"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nas.AccessGroup;
/// import com.pulumi.alicloud.nas.AccessGroupArgs;
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.nas.AccessPoint;
/// import com.pulumi.alicloud.nas.AccessPointArgs;
/// import com.pulumi.alicloud.nas.inputs.AccessPointPosixUserArgs;
/// import com.pulumi.alicloud.nas.inputs.AccessPointRootPathPermissionArgs;
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
///         final var azone = config.get("azone").orElse("cn-hangzhou-g");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultkyVC70 = new Network("defaultkyVC70", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .description("接入点测试noRootDirectory")
///             .build());
///
///         var defaultoZAPmO = new Switch("defaultoZAPmO", SwitchArgs.builder()
///             .vpcId(defaultkyVC70.id())
///             .zoneId(default_.zones()[0].id())
///             .cidrBlock("172.16.0.0/24")
///             .build());
///
///         var defaultBbc7ev = new AccessGroup("defaultBbc7ev", AccessGroupArgs.builder()
///             .accessGroupType("Vpc")
///             .accessGroupName(String.format("%s-%s", name,defaultInteger.result()))
///             .fileSystemType("standard")
///             .build());
///
///         var defaultVtUpDh = new FileSystem("defaultVtUpDh", FileSystemArgs.builder()
///             .storageType("Performance")
///             .zoneId(azone)
///             .encryptType(0)
///             .protocolType("NFS")
///             .fileSystemType("standard")
///             .description("AccessPointnoRootDirectory")
///             .build());
///
///         var defaultAccessPoint = new AccessPoint("defaultAccessPoint", AccessPointArgs.builder()
///             .vpcId(defaultkyVC70.id())
///             .accessGroup(defaultBbc7ev.accessGroupName())
///             .vswitchId(defaultoZAPmO.id())
///             .fileSystemId(defaultVtUpDh.id())
///             .accessPointName(name)
///             .posixUser(AccessPointPosixUserArgs.builder()
///                 .posixGroupId(123)
///                 .posixUserId(123)
///                 .build())
///             .rootPathPermission(AccessPointRootPathPermissionArgs.builder()
///                 .ownerGroupId(1)
///                 .ownerUserId(1)
///                 .permission("0777")
///                 .build())
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
///   azone:
///     type: string
///     default: cn-hangzhou-g
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultkyVC70:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       description: 接入点测试noRootDirectory
///   defaultoZAPmO:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultkyVC70.id}
///       zoneId: ${default.zones[0].id}
///       cidrBlock: 172.16.0.0/24
///   defaultBbc7ev:
///     type: alicloud:nas:AccessGroup
///     properties:
///       accessGroupType: Vpc
///       accessGroupName: ${name}-${defaultInteger.result}
///       fileSystemType: standard
///   defaultVtUpDh:
///     type: alicloud:nas:FileSystem
///     properties:
///       storageType: Performance
///       zoneId: ${azone}
///       encryptType: '0'
///       protocolType: NFS
///       fileSystemType: standard
///       description: AccessPointnoRootDirectory
///   defaultAccessPoint:
///     type: alicloud:nas:AccessPoint
///     name: default
///     properties:
///       vpcId: ${defaultkyVC70.id}
///       accessGroup: ${defaultBbc7ev.accessGroupName}
///       vswitchId: ${defaultoZAPmO.id}
///       fileSystemId: ${defaultVtUpDh.id}
///       accessPointName: ${name}
///       posixUser:
///         posixGroupId: '123'
///         posixUserId: '123'
///       rootPathPermission:
///         ownerGroupId: '1'
///         ownerUserId: '1'
///         permission: '0777'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// File Storage (NAS) Access Point can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/accessPoint:AccessPoint example <file_system_id>:<access_point_id>
/// ```
class AccessPoint extends pulumi.CustomResource {
  /// The name of the permission group.
  late final pulumi.Output<String> accessGroup;
  /// The ID of the access point.
  late final pulumi.Output<String> accessPointId;
  /// The name of the access point.
  late final pulumi.Output<String?> accessPointName;
  /// The time when the access point was created.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable the RAM policy. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> enabledRam;
  /// The ID of the file system.
  late final pulumi.Output<String> fileSystemId;
  /// The Posix user. See `posix_user` below.
  late final pulumi.Output<AccessPointPosixUser> posixUser;
  /// (Available since v1.254.0) The region ID.
  late final pulumi.Output<String> regionId;
  /// The root directory of the access point.
  late final pulumi.Output<String> rootPath;
  /// Root permissions. See `root_path_permission` below.
  late final pulumi.Output<AccessPointRootPathPermission> rootPathPermission;
  /// The status of the access point.
  late final pulumi.Output<String> status;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The vSwitch ID.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [AccessPoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPoint]. {@macro pulumi_nas_access_point_access_point_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPoint(
    String name, {
    AccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroup = registerOutput<String>('accessGroup');
    accessPointId = registerOutput<String>('accessPointId');
    accessPointName = registerOutput<String?>('accessPointName');
    createTime = registerOutput<String>('createTime');
    enabledRam = registerOutput<bool?>('enabledRam');
    fileSystemId = registerOutput<String>('fileSystemId');
    posixUser = registerOutput<AccessPointPosixUser>('posixUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPosixUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionId = registerOutput<String>('regionId');
    rootPath = registerOutput<String>('rootPath');
    rootPathPermission = registerOutput<AccessPointRootPathPermission>('rootPathPermission', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointRootPathPermission.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [AccessPoint] resource's state with the given [name] and [id].
  static AccessPoint get(
    String name,
    pulumi.Input<String> id, {
    AccessPointState? state,
  }) {
    return AccessPoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nas/accessPoint:AccessPoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroup = registerOutput<String>('accessGroup');
    accessPointId = registerOutput<String>('accessPointId');
    accessPointName = registerOutput<String?>('accessPointName');
    createTime = registerOutput<String>('createTime');
    enabledRam = registerOutput<bool?>('enabledRam');
    fileSystemId = registerOutput<String>('fileSystemId');
    posixUser = registerOutput<AccessPointPosixUser>('posixUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointPosixUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionId = registerOutput<String>('regionId');
    rootPath = registerOutput<String>('rootPath');
    rootPathPermission = registerOutput<AccessPointRootPathPermission>('rootPathPermission', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessPointRootPathPermission.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
