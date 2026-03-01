import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_ip_array_args.dart';
import 'db_instance_ip_array_state.dart';

/// Provides a GPDB DB Instance IP Array resource.
///
/// Whitelist IP Group.
///
/// For information about GPDB DB Instance IP Array and how to use it, see [What is DB Instance IP Array](https://www.alibabacloud.com/help/en/).
///
/// > **NOTE:** Available since v1.231.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNpLRa1 = new alicloud.vpc.Network("defaultNpLRa1", {cidrBlock: "192.168.0.0/16"});
/// const defaultwLA5v4 = new alicloud.vpc.Switch("defaultwLA5v4", {
///     vpcId: defaultNpLRa1.id,
///     zoneId: "cn-beijing-h",
///     cidrBlock: "192.168.1.0/24",
/// });
/// const defaultHKdDs3 = new alicloud.gpdb.Instance("defaultHKdDs3", {
///     instanceSpec: "2C8G",
///     segNodeNum: 2,
///     segStorageType: "cloud_essd",
///     instanceNetworkType: "VPC",
///     dbInstanceCategory: "Basic",
///     paymentType: "PayAsYouGo",
///     sslEnabled: 0,
///     engineVersion: "6.0",
///     zoneId: "cn-beijing-h",
///     vswitchId: defaultwLA5v4.id,
///     storageSize: 50,
///     masterCu: 4,
///     vpcId: defaultNpLRa1.id,
///     dbInstanceMode: "StorageElastic",
///     engine: "gpdb",
///     description: name,
/// });
/// const defaultDbInstanceIpArray = new alicloud.gpdb.DbInstanceIpArray("default", {
///     dbInstanceIpArrayAttribute: "taffyFish",
///     securityIpLists: [
///         "12.34.56.78",
///         "11.45.14.0",
///         "19.19.81.0",
///     ],
///     dbInstanceIpArrayName: "taffy",
///     dbInstanceId: defaultHKdDs3.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_np_l_ra1 = alicloud.vpc.Network("defaultNpLRa1", cidr_block="192.168.0.0/16")
/// defaultw_la5v4 = alicloud.vpc.Switch("defaultwLA5v4",
///     vpc_id=default_np_l_ra1.id,
///     zone_id="cn-beijing-h",
///     cidr_block="192.168.1.0/24")
/// default_h_kd_ds3 = alicloud.gpdb.Instance("defaultHKdDs3",
///     instance_spec="2C8G",
///     seg_node_num=2,
///     seg_storage_type="cloud_essd",
///     instance_network_type="VPC",
///     db_instance_category="Basic",
///     payment_type="PayAsYouGo",
///     ssl_enabled=0,
///     engine_version="6.0",
///     zone_id="cn-beijing-h",
///     vswitch_id=defaultw_la5v4.id,
///     storage_size=50,
///     master_cu=4,
///     vpc_id=default_np_l_ra1.id,
///     db_instance_mode="StorageElastic",
///     engine="gpdb",
///     description=name)
/// default_db_instance_ip_array = alicloud.gpdb.DbInstanceIpArray("default",
///     db_instance_ip_array_attribute="taffyFish",
///     security_ip_lists=[
///         "12.34.56.78",
///         "11.45.14.0",
///         "19.19.81.0",
///     ],
///     db_instance_ip_array_name="taffy",
///     db_instance_id=default_h_kd_ds3.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNpLRa1 = new AliCloud.Vpc.Network("defaultNpLRa1", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultwLA5v4 = new AliCloud.Vpc.Switch("defaultwLA5v4", new()
///     {
///         VpcId = defaultNpLRa1.Id,
///         ZoneId = "cn-beijing-h",
///         CidrBlock = "192.168.1.0/24",
///     });
///
///     var defaultHKdDs3 = new AliCloud.Gpdb.Instance("defaultHKdDs3", new()
///     {
///         InstanceSpec = "2C8G",
///         SegNodeNum = 2,
///         SegStorageType = "cloud_essd",
///         InstanceNetworkType = "VPC",
///         DbInstanceCategory = "Basic",
///         PaymentType = "PayAsYouGo",
///         SslEnabled = 0,
///         EngineVersion = "6.0",
///         ZoneId = "cn-beijing-h",
///         VswitchId = defaultwLA5v4.Id,
///         StorageSize = 50,
///         MasterCu = 4,
///         VpcId = defaultNpLRa1.Id,
///         DbInstanceMode = "StorageElastic",
///         Engine = "gpdb",
///         Description = name,
///     });
///
///     var defaultDbInstanceIpArray = new AliCloud.Gpdb.DbInstanceIpArray("default", new()
///     {
///         DbInstanceIpArrayAttribute = "taffyFish",
///         SecurityIpLists = new[]
///         {
///             "12.34.56.78",
///             "11.45.14.0",
///             "19.19.81.0",
///         },
///         DbInstanceIpArrayName = "taffy",
///         DbInstanceId = defaultHKdDs3.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
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
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNpLRa1, err := vpc.NewNetwork(ctx, "defaultNpLRa1", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultwLA5v4, err := vpc.NewSwitch(ctx, "defaultwLA5v4", &vpc.SwitchArgs{
/// 			VpcId:     defaultNpLRa1.ID(),
/// 			ZoneId:    pulumi.String("cn-beijing-h"),
/// 			CidrBlock: pulumi.String("192.168.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHKdDs3, err := gpdb.NewInstance(ctx, "defaultHKdDs3", &gpdb.InstanceArgs{
/// 			InstanceSpec:        pulumi.String("2C8G"),
/// 			SegNodeNum:          pulumi.Int(2),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			DbInstanceCategory:  pulumi.String("Basic"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SslEnabled:          pulumi.Int(0),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String("cn-beijing-h"),
/// 			VswitchId:           defaultwLA5v4.ID(),
/// 			StorageSize:         pulumi.Int(50),
/// 			MasterCu:            pulumi.Int(4),
/// 			VpcId:               defaultNpLRa1.ID(),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Engine:              pulumi.String("gpdb"),
/// 			Description:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewDbInstanceIpArray(ctx, "default", &gpdb.DbInstanceIpArrayArgs{
/// 			DbInstanceIpArrayAttribute: pulumi.String("taffyFish"),
/// 			SecurityIpLists: pulumi.StringArray{
/// 				pulumi.String("12.34.56.78"),
/// 				pulumi.String("11.45.14.0"),
/// 				pulumi.String("19.19.81.0"),
/// 			},
/// 			DbInstanceIpArrayName: pulumi.String("taffy"),
/// 			DbInstanceId:          defaultHKdDs3.ID(),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.DbInstanceIpArray;
/// import com.pulumi.alicloud.gpdb.DbInstanceIpArrayArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNpLRa1 = new Network("defaultNpLRa1", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultwLA5v4 = new Switch("defaultwLA5v4", SwitchArgs.builder()
///             .vpcId(defaultNpLRa1.id())
///             .zoneId("cn-beijing-h")
///             .cidrBlock("192.168.1.0/24")
///             .build());
///
///         var defaultHKdDs3 = new Instance("defaultHKdDs3", InstanceArgs.builder()
///             .instanceSpec("2C8G")
///             .segNodeNum(2)
///             .segStorageType("cloud_essd")
///             .instanceNetworkType("VPC")
///             .dbInstanceCategory("Basic")
///             .paymentType("PayAsYouGo")
///             .sslEnabled(0)
///             .engineVersion("6.0")
///             .zoneId("cn-beijing-h")
///             .vswitchId(defaultwLA5v4.id())
///             .storageSize(50)
///             .masterCu(4)
///             .vpcId(defaultNpLRa1.id())
///             .dbInstanceMode("StorageElastic")
///             .engine("gpdb")
///             .description(name)
///             .build());
///
///         var defaultDbInstanceIpArray = new DbInstanceIpArray("defaultDbInstanceIpArray", DbInstanceIpArrayArgs.builder()
///             .dbInstanceIpArrayAttribute("taffyFish")
///             .securityIpLists(
///                 "12.34.56.78",
///                 "11.45.14.0",
///                 "19.19.81.0")
///             .dbInstanceIpArrayName("taffy")
///             .dbInstanceId(defaultHKdDs3.id())
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
///   defaultNpLRa1:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultwLA5v4:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultNpLRa1.id}
///       zoneId: cn-beijing-h
///       cidrBlock: 192.168.1.0/24
///   defaultHKdDs3:
///     type: alicloud:gpdb:Instance
///     properties:
///       instanceSpec: 2C8G
///       segNodeNum: '2'
///       segStorageType: cloud_essd
///       instanceNetworkType: VPC
///       dbInstanceCategory: Basic
///       paymentType: PayAsYouGo
///       sslEnabled: '0'
///       engineVersion: '6.0'
///       zoneId: cn-beijing-h
///       vswitchId: ${defaultwLA5v4.id}
///       storageSize: '50'
///       masterCu: '4'
///       vpcId: ${defaultNpLRa1.id}
///       dbInstanceMode: StorageElastic
///       engine: gpdb
///       description: ${name}
///   defaultDbInstanceIpArray:
///     type: alicloud:gpdb:DbInstanceIpArray
///     name: default
///     properties:
///       dbInstanceIpArrayAttribute: taffyFish
///       securityIpLists:
///         - 12.34.56.78
///         - 11.45.14.0
///         - 19.19.81.0
///       dbInstanceIpArrayName: taffy
///       dbInstanceId: ${defaultHKdDs3.id}
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
/// GPDB DB Instance IP Array can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/dbInstanceIpArray:DbInstanceIpArray example <db_instance_id>:<db_instance_ip_array_name>
/// ```
class DbInstanceIpArray extends pulumi.CustomResource {
  /// The instance ID.
  ///
  /// > **NOTE:**  You can call the [DescribeDBInstances](https://www.alibabacloud.com/help/en/doc-detail/86911.html) operation to query details about all AnalyticDB for PostgreSQL instances within a region, including instance IDs.
  late final pulumi.Output<String> dbInstanceId;
  /// The default is empty. To distinguish between different attribute values, the console does not display groups with the 'hidden' attribute.
  late final pulumi.Output<String?> dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. If you do not specify this parameter, the default whitelist is queried.
  ///
  /// > **NOTE:**   Each instance supports up to 50 IP address whitelists.
  late final pulumi.Output<String> dbInstanceIpArrayName;
  /// The method of modification. Valid values:
  ///
  /// - `Cover`: overwrites the whitelist.
  /// - `Append`: appends data to the whitelist.
  /// - `Delete`: deletes the whitelist.
  late final pulumi.Output<String?> modifyMode;
  /// The IP address whitelist contains a maximum of 1000 IP addresses separated by commas in the following three formats:
  /// - 0.0.0.0/0
  /// - 10.23.12.24(IP)
  /// - 10.23.12.24/24(CIDR mode, Classless Inter-Domain Routing, '/24' indicates the length of the prefix in the address, and the range is '[1,32]')
  late final pulumi.Output<List<String>> securityIpLists;

  /// Creates a new [DbInstanceIpArray].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DbInstanceIpArray]. {@macro pulumi_gpdb_db_instance_ip_array_db_instance_ip_array_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DbInstanceIpArray(
    String name, {
    DbInstanceIpArrayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/dbInstanceIpArray:DbInstanceIpArray',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    this.dbInstanceIpArrayName = registerOutput<String>('dbInstanceIpArrayName');
    this.modifyMode = registerOutput<String?>('modifyMode');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
  }

  /// Gets an existing [DbInstanceIpArray] resource's state with the given [name] and [id].
  static DbInstanceIpArray get(
    String name,
    pulumi.Input<String> id, {
    DbInstanceIpArrayState? state,
  }) {
    return DbInstanceIpArray._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DbInstanceIpArray._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/dbInstanceIpArray:DbInstanceIpArray',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    this.dbInstanceIpArrayName = registerOutput<String>('dbInstanceIpArrayName');
    this.modifyMode = registerOutput<String?>('modifyMode');
    this.securityIpLists = registerOutput<List<String>>('securityIpLists');
  }
}
