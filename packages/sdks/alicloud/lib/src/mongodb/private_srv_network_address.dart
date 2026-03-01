import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_srv_network_address_args.dart';
import 'private_srv_network_address_state.dart';

/// Provides a Mongodb Private Srv Network Address resource.
///
/// Private network SRV highly available link address.
///
/// For information about Mongodb Private Srv Network Address and how to use it, see [What is Private Srv Network Address](https://next.api.alibabacloud.com/document/Dds/2015-12-01/AllocateDBInstanceSrvNetworkAddress).
///
/// > **NOTE:** Available since v1.240.0.
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
/// const zoneId = config.get("zoneId") || "cn-shanghai-b";
/// const regionId = config.get("regionId") || "cn-shanghai";
/// const defaultie35CW = new alicloud.vpc.Network("defaultie35CW", {
///     cidrBlock: "10.0.0.0/8",
///     vpcName: name,
/// });
/// const defaultg0DCAR = new alicloud.vpc.Switch("defaultg0DCAR", {
///     vpcId: defaultie35CW.id,
///     zoneId: zoneId,
///     cidrBlock: "10.0.0.0/24",
/// });
/// const defaultHrZmxC = new alicloud.mongodb.Instance("defaultHrZmxC", {
///     engineVersion: "4.4",
///     storageType: "cloud_essd1",
///     vswitchId: defaultg0DCAR.id,
///     dbInstanceStorage: 20,
///     vpcId: defaultie35CW.id,
///     dbInstanceClass: "mdb.shard.4x.large.d",
///     storageEngine: "WiredTiger",
///     networkType: "VPC",
///     zoneId: zoneId,
/// });
/// const _default = new alicloud.mongodb.PrivateSrvNetworkAddress("default", {dbInstanceId: defaultHrZmxC.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// zone_id = config.get("zoneId")
/// if zone_id is None:
///     zone_id = "cn-shanghai-b"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-shanghai"
/// defaultie35_cw = alicloud.vpc.Network("defaultie35CW",
///     cidr_block="10.0.0.0/8",
///     vpc_name=name)
/// defaultg0_dcar = alicloud.vpc.Switch("defaultg0DCAR",
///     vpc_id=defaultie35_cw.id,
///     zone_id=zone_id,
///     cidr_block="10.0.0.0/24")
/// default_hr_zmx_c = alicloud.mongodb.Instance("defaultHrZmxC",
///     engine_version="4.4",
///     storage_type="cloud_essd1",
///     vswitch_id=defaultg0_dcar.id,
///     db_instance_storage=20,
///     vpc_id=defaultie35_cw.id,
///     db_instance_class="mdb.shard.4x.large.d",
///     storage_engine="WiredTiger",
///     network_type="VPC",
///     zone_id=zone_id)
/// default = alicloud.mongodb.PrivateSrvNetworkAddress("default", db_instance_id=default_hr_zmx_c.id)
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
///     var zoneId = config.Get("zoneId") ?? "cn-shanghai-b";
///     var regionId = config.Get("regionId") ?? "cn-shanghai";
///     var defaultie35CW = new AliCloud.Vpc.Network("defaultie35CW", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///         VpcName = name,
///     });
///
///     var defaultg0DCAR = new AliCloud.Vpc.Switch("defaultg0DCAR", new()
///     {
///         VpcId = defaultie35CW.Id,
///         ZoneId = zoneId,
///         CidrBlock = "10.0.0.0/24",
///     });
///
///     var defaultHrZmxC = new AliCloud.MongoDB.Instance("defaultHrZmxC", new()
///     {
///         EngineVersion = "4.4",
///         StorageType = "cloud_essd1",
///         VswitchId = defaultg0DCAR.Id,
///         DbInstanceStorage = 20,
///         VpcId = defaultie35CW.Id,
///         DbInstanceClass = "mdb.shard.4x.large.d",
///         StorageEngine = "WiredTiger",
///         NetworkType = "VPC",
///         ZoneId = zoneId,
///     });
///
///     var @default = new AliCloud.MongoDB.PrivateSrvNetworkAddress("default", new()
///     {
///         DbInstanceId = defaultHrZmxC.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mongodb"
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
/// 		zoneId := "cn-shanghai-b"
/// 		if param := cfg.Get("zoneId"); param != "" {
/// 			zoneId = param
/// 		}
/// 		regionId := "cn-shanghai"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		defaultie35CW, err := vpc.NewNetwork(ctx, "defaultie35CW", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultg0DCAR, err := vpc.NewSwitch(ctx, "defaultg0DCAR", &vpc.SwitchArgs{
/// 			VpcId:     defaultie35CW.ID(),
/// 			ZoneId:    pulumi.String(zoneId),
/// 			CidrBlock: pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHrZmxC, err := mongodb.NewInstance(ctx, "defaultHrZmxC", &mongodb.InstanceArgs{
/// 			EngineVersion:     pulumi.String("4.4"),
/// 			StorageType:       pulumi.String("cloud_essd1"),
/// 			VswitchId:         defaultg0DCAR.ID(),
/// 			DbInstanceStorage: pulumi.Int(20),
/// 			VpcId:             defaultie35CW.ID(),
/// 			DbInstanceClass:   pulumi.String("mdb.shard.4x.large.d"),
/// 			StorageEngine:     pulumi.String("WiredTiger"),
/// 			NetworkType:       pulumi.String("VPC"),
/// 			ZoneId:            pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewPrivateSrvNetworkAddress(ctx, "default", &mongodb.PrivateSrvNetworkAddressArgs{
/// 			DbInstanceId: defaultHrZmxC.ID(),
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
/// import com.pulumi.alicloud.mongodb.Instance;
/// import com.pulumi.alicloud.mongodb.InstanceArgs;
/// import com.pulumi.alicloud.mongodb.PrivateSrvNetworkAddress;
/// import com.pulumi.alicloud.mongodb.PrivateSrvNetworkAddressArgs;
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
///         final var zoneId = config.get("zoneId").orElse("cn-shanghai-b");
///         final var regionId = config.get("regionId").orElse("cn-shanghai");
///         var defaultie35CW = new Network("defaultie35CW", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .vpcName(name)
///             .build());
///
///         var defaultg0DCAR = new Switch("defaultg0DCAR", SwitchArgs.builder()
///             .vpcId(defaultie35CW.id())
///             .zoneId(zoneId)
///             .cidrBlock("10.0.0.0/24")
///             .build());
///
///         var defaultHrZmxC = new Instance("defaultHrZmxC", InstanceArgs.builder()
///             .engineVersion("4.4")
///             .storageType("cloud_essd1")
///             .vswitchId(defaultg0DCAR.id())
///             .dbInstanceStorage(20)
///             .vpcId(defaultie35CW.id())
///             .dbInstanceClass("mdb.shard.4x.large.d")
///             .storageEngine("WiredTiger")
///             .networkType("VPC")
///             .zoneId(zoneId)
///             .build());
///
///         var default_ = new PrivateSrvNetworkAddress("default", PrivateSrvNetworkAddressArgs.builder()
///             .dbInstanceId(defaultHrZmxC.id())
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
///   zoneId:
///     type: string
///     default: cn-shanghai-b
///   regionId:
///     type: string
///     default: cn-shanghai
/// resources:
///   defaultie35CW:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 10.0.0.0/8
///       vpcName: ${name}
///   defaultg0DCAR:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultie35CW.id}
///       zoneId: ${zoneId}
///       cidrBlock: 10.0.0.0/24
///   defaultHrZmxC:
///     type: alicloud:mongodb:Instance
///     properties:
///       engineVersion: '4.4'
///       storageType: cloud_essd1
///       vswitchId: ${defaultg0DCAR.id}
///       dbInstanceStorage: '20'
///       vpcId: ${defaultie35CW.id}
///       dbInstanceClass: mdb.shard.4x.large.d
///       storageEngine: WiredTiger
///       networkType: VPC
///       zoneId: ${zoneId}
///   default:
///     type: alicloud:mongodb:PrivateSrvNetworkAddress
///     properties:
///       dbInstanceId: ${defaultHrZmxC.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Mongodb Private Srv Network Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/privateSrvNetworkAddress:PrivateSrvNetworkAddress example <id>
/// ```
class PrivateSrvNetworkAddress extends pulumi.CustomResource {
  /// The instance ID.
  late final pulumi.Output<String> dbInstanceId;
  /// Private network SRV highly available connection address
  late final pulumi.Output<String> privateSrvConnectionStringUri;

  /// Creates a new [PrivateSrvNetworkAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateSrvNetworkAddress]. {@macro pulumi_mongodb_private_srv_network_address_private_srv_network_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateSrvNetworkAddress(
    String name, {
    PrivateSrvNetworkAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/privateSrvNetworkAddress:PrivateSrvNetworkAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.privateSrvConnectionStringUri = registerOutput<String>('privateSrvConnectionStringUri');
  }

  /// Gets an existing [PrivateSrvNetworkAddress] resource's state with the given [name] and [id].
  static PrivateSrvNetworkAddress get(
    String name,
    pulumi.Input<String> id, {
    PrivateSrvNetworkAddressState? state,
  }) {
    return PrivateSrvNetworkAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateSrvNetworkAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/privateSrvNetworkAddress:PrivateSrvNetworkAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.privateSrvConnectionStringUri = registerOutput<String>('privateSrvConnectionStringUri');
  }
}
