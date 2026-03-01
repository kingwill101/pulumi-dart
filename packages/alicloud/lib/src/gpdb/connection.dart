import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';

/// Provides a connection resource to allocate an Internet connection string for instance.
///
/// > **NOTE:** Available since v1.48.0.
///
/// > **NOTE:** Each instance will allocate a intranet connection string automatically and its prefix is instance ID.
/// To avoid unnecessary conflict, please specified a internet connection prefix before applying the resource.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.gpdb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, defaultGetZones]).then(([defaultGetNetworks, defaultGetZones]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: defaultGetZones.ids?.[0],
/// }));
/// const defaultInstance = new alicloud.gpdb.Instance("default", {
///     dbInstanceCategory: "HighAvailability",
///     dbInstanceClass: "gpdb.group.segsdx1",
///     dbInstanceMode: "StorageElastic",
///     description: name,
///     engine: "gpdb",
///     engineVersion: "6.0",
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.ids?.[0]),
///     instanceNetworkType: "VPC",
///     instanceSpec: "2C16G",
///     paymentType: "PayAsYouGo",
///     segStorageType: "cloud_essd",
///     segNodeNum: 4,
///     storageSize: 50,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     ipWhitelists: [{
///         securityIpList: "127.0.0.1",
///     }],
/// });
/// const defaultConnection = new alicloud.gpdb.Connection("default", {
///     instanceId: defaultInstance.id,
///     connectionPrefix: "exampelcon",
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.gpdb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default_get_zones.ids[0])
/// default_instance = alicloud.gpdb.Instance("default",
///     db_instance_category="HighAvailability",
///     db_instance_class="gpdb.group.segsdx1",
///     db_instance_mode="StorageElastic",
///     description=name,
///     engine="gpdb",
///     engine_version="6.0",
///     zone_id=default_get_zones.ids[0],
///     instance_network_type="VPC",
///     instance_spec="2C16G",
///     payment_type="PayAsYouGo",
///     seg_storage_type="cloud_essd",
///     seg_node_num=4,
///     storage_size=50,
///     vpc_id=default_get_networks.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     ip_whitelists=[{
///         "security_ip_list": "127.0.0.1",
///     }])
/// default_connection = alicloud.gpdb.Connection("default",
///     instance_id=default_instance.id,
///     connection_prefix="exampelcon")
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.Gpdb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.Gpdb.Instance("default", new()
///     {
///         DbInstanceCategory = "HighAvailability",
///         DbInstanceClass = "gpdb.group.segsdx1",
///         DbInstanceMode = "StorageElastic",
///         Description = name,
///         Engine = "gpdb",
///         EngineVersion = "6.0",
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Ids[0]),
///         InstanceNetworkType = "VPC",
///         InstanceSpec = "2C16G",
///         PaymentType = "PayAsYouGo",
///         SegStorageType = "cloud_essd",
///         SegNodeNum = 4,
///         StorageSize = 50,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         IpWhitelists = new[]
///         {
///             new AliCloud.Gpdb.Inputs.InstanceIpWhitelistArgs
///             {
///                 SecurityIpList = "127.0.0.1",
///             },
///         },
///     });
///
///     var defaultConnection = new AliCloud.Gpdb.Connection("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ConnectionPrefix = "exampelcon",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gpdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := gpdb.GetZones(ctx, &gpdb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(defaultGetZones.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := gpdb.NewInstance(ctx, "default", &gpdb.InstanceArgs{
/// 			DbInstanceCategory:  pulumi.String("HighAvailability"),
/// 			DbInstanceClass:     pulumi.String("gpdb.group.segsdx1"),
/// 			DbInstanceMode:      pulumi.String("StorageElastic"),
/// 			Description:         pulumi.String(name),
/// 			Engine:              pulumi.String("gpdb"),
/// 			EngineVersion:       pulumi.String("6.0"),
/// 			ZoneId:              pulumi.String(defaultGetZones.Ids[0]),
/// 			InstanceNetworkType: pulumi.String("VPC"),
/// 			InstanceSpec:        pulumi.String("2C16G"),
/// 			PaymentType:         pulumi.String("PayAsYouGo"),
/// 			SegStorageType:      pulumi.String("cloud_essd"),
/// 			SegNodeNum:          pulumi.Int(4),
/// 			StorageSize:         pulumi.Int(50),
/// 			VpcId:               pulumi.String(defaultGetNetworks.Ids[0]),
/// 			VswitchId:           pulumi.String(defaultGetSwitches.Ids[0]),
/// 			IpWhitelists: gpdb.InstanceIpWhitelistArray{
/// 				&gpdb.InstanceIpWhitelistArgs{
/// 					SecurityIpList: pulumi.String("127.0.0.1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gpdb.NewConnection(ctx, "default", &gpdb.ConnectionArgs{
/// 			InstanceId:       defaultInstance.ID(),
/// 			ConnectionPrefix: pulumi.String("exampelcon"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.gpdb.GpdbFunctions;
/// import com.pulumi.alicloud.gpdb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.gpdb.Instance;
/// import com.pulumi.alicloud.gpdb.InstanceArgs;
/// import com.pulumi.alicloud.gpdb.inputs.InstanceIpWhitelistArgs;
/// import com.pulumi.alicloud.gpdb.Connection;
/// import com.pulumi.alicloud.gpdb.ConnectionArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = GpdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(defaultGetZones.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceCategory("HighAvailability")
///             .dbInstanceClass("gpdb.group.segsdx1")
///             .dbInstanceMode("StorageElastic")
///             .description(name)
///             .engine("gpdb")
///             .engineVersion("6.0")
///             .zoneId(defaultGetZones.ids()[0])
///             .instanceNetworkType("VPC")
///             .instanceSpec("2C16G")
///             .paymentType("PayAsYouGo")
///             .segStorageType("cloud_essd")
///             .segNodeNum(4)
///             .storageSize(50)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .ipWhitelists(InstanceIpWhitelistArgs.builder()
///                 .securityIpList("127.0.0.1")
///                 .build())
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .instanceId(defaultInstance.id())
///             .connectionPrefix("exampelcon")
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
///   defaultInstance:
///     type: alicloud:gpdb:Instance
///     name: default
///     properties:
///       dbInstanceCategory: HighAvailability
///       dbInstanceClass: gpdb.group.segsdx1
///       dbInstanceMode: StorageElastic
///       description: ${name}
///       engine: gpdb
///       engineVersion: '6.0'
///       zoneId: ${defaultGetZones.ids[0]}
///       instanceNetworkType: VPC
///       instanceSpec: 2C16G
///       paymentType: PayAsYouGo
///       segStorageType: cloud_essd
///       segNodeNum: 4
///       storageSize: 50
///       vpcId: ${defaultGetNetworks.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       ipWhitelists:
///         - securityIpList: 127.0.0.1
///   defaultConnection:
///     type: alicloud:gpdb:Connection
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       connectionPrefix: exampelcon
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:gpdb:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${defaultGetZones.ids[0]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AnalyticDB for PostgreSQL's connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gpdb/connection:Connection example abc12345678
/// ```
class Connection extends pulumi.CustomResource {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + '-tf'.
  late final pulumi.Output<String> connectionPrefix;
  /// Connection instance string.
  late final pulumi.Output<String> connectionString;
  /// The Id of instance that can run database.
  late final pulumi.Output<String> instanceId;
  /// The ip address of connection string.
  late final pulumi.Output<String> ipAddress;
  /// Internet connection port. Valid value: [3200-3999]. Default to 3306.
  late final pulumi.Output<String?> port;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_gpdb_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gpdb/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionPrefix = registerOutput<String>('connectionPrefix');
    this.connectionString = registerOutput<String>('connectionString');
    this.instanceId = registerOutput<String>('instanceId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.port = registerOutput<String?>('port');
  }
}
