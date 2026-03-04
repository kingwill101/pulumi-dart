import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';

/// Operate the public network ip of the specified resource. How to use it, see [What is Connection](https://www.alibabacloud.com/help/en/redis/developer-reference/api-r-kvstore-2015-01-01-allocateinstancepublicconnection-redis).
///
/// &gt; **NOTE:** Available since v1.101.0.
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
/// const _default = alicloud.kvstore.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultInstance = new alicloud.kvstore.Instance("default", {
///     dbInstanceName: name,
///     vswitchId: defaultSwitch.id,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     instanceClass: "redis.master.large.default",
///     instanceType: "Redis",
///     engineVersion: "5.0",
///     securityIps: ["10.23.12.24"],
///     config: {
///         appendonly: "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultConnection = new alicloud.kvstore.Connection("default", {
///     connectionStringPrefix: "exampleconnection",
///     instanceId: defaultInstance.id,
///     port: "6370",
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
/// default = alicloud.kvstore.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_instance = alicloud.kvstore.Instance("default",
///     db_instance_name=name,
///     vswitch_id=default_switch.id,
///     resource_group_id=default_get_resource_groups.ids[0],
///     zone_id=default.zones[0].id,
///     instance_class="redis.master.large.default",
///     instance_type="Redis",
///     engine_version="5.0",
///     security_ips=["10.23.12.24"],
///     config={
///         "appendonly": "yes",
///         "lazyfree-lazy-eviction": "yes",
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_connection = alicloud.kvstore.Connection("default",
///     connection_string_prefix="exampleconnection",
///     instance_id=default_instance.id,
///     port="6370")
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
///     var @default = AliCloud.KVStore.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultInstance = new AliCloud.KVStore.Instance("default", new()
///     {
///         DbInstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceClass = "redis.master.large.default",
///         InstanceType = "Redis",
///         EngineVersion = "5.0",
///         SecurityIps = new[]
///         {
///             "10.23.12.24",
///         },
///         Config =
///         {
///             { "appendonly", "yes" },
///             { "lazyfree-lazy-eviction", "yes" },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultConnection = new AliCloud.KVStore.Connection("default", new()
///     {
///         ConnectionStringPrefix = "exampleconnection",
///         InstanceId = defaultInstance.Id,
///         Port = "6370",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kvstore"
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
/// 		_default, err := kvstore.GetZones(ctx, &kvstore.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := kvstore.NewInstance(ctx, "default", &kvstore.InstanceArgs{
/// 			DbInstanceName:  pulumi.String(name),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			ZoneId:          pulumi.String(_default.Zones[0].Id),
/// 			InstanceClass:   pulumi.String("redis.master.large.default"),
/// 			InstanceType:    pulumi.String("Redis"),
/// 			EngineVersion:   pulumi.String("5.0"),
/// 			SecurityIps: pulumi.StringArray{
/// 				pulumi.String("10.23.12.24"),
/// 			},
/// 			Config: pulumi.StringMap{
/// 				"appendonly":             pulumi.String("yes"),
/// 				"lazyfree-lazy-eviction": pulumi.String("yes"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kvstore.NewConnection(ctx, "default", &kvstore.ConnectionArgs{
/// 			ConnectionStringPrefix: pulumi.String("exampleconnection"),
/// 			InstanceId:             defaultInstance.ID(),
/// 			Port:                   pulumi.String("6370"),
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
/// import com.pulumi.alicloud.kvstore.KvstoreFunctions;
/// import com.pulumi.alicloud.kvstore.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.kvstore.Instance;
/// import com.pulumi.alicloud.kvstore.InstanceArgs;
/// import com.pulumi.alicloud.kvstore.Connection;
/// import com.pulumi.alicloud.kvstore.ConnectionArgs;
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
///         final var default = KvstoreFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .dbInstanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .instanceClass("redis.master.large.default")
///             .instanceType("Redis")
///             .engineVersion("5.0")
///             .securityIps("10.23.12.24")
///             .config(Map.ofEntries(
///                 Map.entry("appendonly", "yes"),
///                 Map.entry("lazyfree-lazy-eviction", "yes")
///             ))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultConnection = new Connection("defaultConnection", ConnectionArgs.builder()
///             .connectionStringPrefix("exampleconnection")
///             .instanceId(defaultInstance.id())
///             .port("6370")
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultInstance:
///     type: alicloud:kvstore:Instance
///     name: default
///     properties:
///       dbInstanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       zoneId: ${default.zones[0].id}
///       instanceClass: redis.master.large.default
///       instanceType: Redis
///       engineVersion: '5.0'
///       securityIps:
///         - 10.23.12.24
///       config:
///         appendonly: yes
///         lazyfree-lazy-eviction: yes
///       tags:
///         Created: TF
///         For: example
///   defaultConnection:
///     type: alicloud:kvstore:Connection
///     name: default
///     properties:
///       connectionStringPrefix: exampleconnection
///       instanceId: ${defaultInstance.id}
///       port: '6370'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:kvstore:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:kvstore/connection:Connection example r-abc12345678
/// ```
class Connection extends pulumi.CustomResource {
  /// The public connection string of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  late final pulumi.Output<String> connectionString;

  /// The prefix of the public endpoint. The prefix can be 8 to 64 characters in length, and can contain lowercase letters and digits. It must start with a lowercase letter.
  late final pulumi.Output<String> connectionStringPrefix;

  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The service port number of the instance.
  late final pulumi.Output<String> port;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_kvstore_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kvstore/connection:Connection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionString = registerOutput<String>('connectionString');
    connectionStringPrefix = registerOutput<String>('connectionStringPrefix');
    instanceId = registerOutput<String>('instanceId');
    port = registerOutput<String>('port');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:kvstore/connection:Connection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    connectionString = registerOutput<String>('connectionString');
    connectionStringPrefix = registerOutput<String>('connectionStringPrefix');
    instanceId = registerOutput<String>('instanceId');
    port = registerOutput<String>('port');
  }
}
