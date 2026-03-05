import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_network_private_address_args.dart';
import 'sharding_network_private_address_state.dart';

/// Provides a MongoDB Sharding Network Private Address resource.
///
/// For information about MongoDB Sharding Network Private Address and how to use it, see [What is Sharding Network Private Address](https://www.alibabacloud.com/help/en/doc-detail/141403.html).
///
/// &gt; **NOTE:** Available since v1.157.0.
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
/// const _default = alicloud.mongodb.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultShardingInstance = new alicloud.mongodb.ShardingInstance("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchId: defaultSwitch.id,
///     engineVersion: "4.2",
///     name: name,
///     shardLists: [
///         {
///             nodeClass: "dds.shard.mid",
///             nodeStorage: 10,
///         },
///         {
///             nodeClass: "dds.shard.standard",
///             nodeStorage: 20,
///             readonlyReplicas: 1,
///         },
///     ],
///     mongoLists: [
///         {
///             nodeClass: "dds.mongos.mid",
///         },
///         {
///             nodeClass: "dds.mongos.mid",
///         },
///     ],
/// });
/// const defaultShardingNetworkPrivateAddress = new alicloud.mongodb.ShardingNetworkPrivateAddress("default", {
///     dbInstanceId: defaultShardingInstance.id,
///     nodeId: defaultShardingInstance.shardLists.apply(shardLists => shardLists[0].nodeId),
///     zoneId: defaultShardingInstance.zoneId,
///     accountName: "example",
///     accountPassword: "Example_123",
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
/// default = alicloud.mongodb.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_sharding_instance = alicloud.mongodb.ShardingInstance("default",
///     zone_id=default.zones[0].id,
///     vswitch_id=default_switch.id,
///     engine_version="4.2",
///     name=name,
///     shard_lists=[
///         {
///             "node_class": "dds.shard.mid",
///             "node_storage": 10,
///         },
///         {
///             "node_class": "dds.shard.standard",
///             "node_storage": 20,
///             "readonly_replicas": 1,
///         },
///     ],
///     mongo_lists=[
///         {
///             "node_class": "dds.mongos.mid",
///         },
///         {
///             "node_class": "dds.mongos.mid",
///         },
///     ])
/// default_sharding_network_private_address = alicloud.mongodb.ShardingNetworkPrivateAddress("default",
///     db_instance_id=default_sharding_instance.id,
///     node_id=default_sharding_instance.shard_lists[0].node_id,
///     zone_id=default_sharding_instance.zone_id,
///     account_name="example",
///     account_password="Example_123")
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
///     var @default = AliCloud.MongoDB.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultShardingInstance = new AliCloud.MongoDB.ShardingInstance("default", new()
///     {
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchId = defaultSwitch.Id,
///         EngineVersion = "4.2",
///         Name = name,
///         ShardLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "dds.shard.mid",
///                 NodeStorage = 10,
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "dds.shard.standard",
///                 NodeStorage = 20,
///                 ReadonlyReplicas = 1,
///             },
///         },
///         MongoLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "dds.mongos.mid",
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "dds.mongos.mid",
///             },
///         },
///     });
///
///     var defaultShardingNetworkPrivateAddress = new AliCloud.MongoDB.ShardingNetworkPrivateAddress("default", new()
///     {
///         DbInstanceId = defaultShardingInstance.Id,
///         NodeId = defaultShardingInstance.ShardLists.Apply(shardLists => shardLists[0].NodeId),
///         ZoneId = defaultShardingInstance.ZoneId,
///         AccountName = "example",
///         AccountPassword = "Example_123",
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
/// 		_default, err := mongodb.GetZones(ctx, &mongodb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultShardingInstance, err := mongodb.NewShardingInstance(ctx, "default", &mongodb.ShardingInstanceArgs{
/// 			ZoneId:        pulumi.String(_default.Zones[0].Id),
/// 			VswitchId:     defaultSwitch.ID(),
/// 			EngineVersion: pulumi.String("4.2"),
/// 			Name:          pulumi.String(name),
/// 			ShardLists: mongodb.ShardingInstanceShardListArray{
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:   pulumi.String("dds.shard.mid"),
/// 					NodeStorage: pulumi.Int(10),
/// 				},
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:        pulumi.String("dds.shard.standard"),
/// 					NodeStorage:      pulumi.Int(20),
/// 					ReadonlyReplicas: pulumi.Int(1),
/// 				},
/// 			},
/// 			MongoLists: mongodb.ShardingInstanceMongoListArray{
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("dds.mongos.mid"),
/// 				},
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("dds.mongos.mid"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewShardingNetworkPrivateAddress(ctx, "default", &mongodb.ShardingNetworkPrivateAddressArgs{
/// 			DbInstanceId: defaultShardingInstance.ID(),
/// 			NodeId: pulumi.String(defaultShardingInstance.ShardLists.ApplyT(func(shardLists []mongodb.ShardingInstanceShardList) (*string, error) {
/// 				return &shardLists[0].NodeId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ZoneId:          defaultShardingInstance.ZoneId,
/// 			AccountName:     pulumi.String("example"),
/// 			AccountPassword: pulumi.String("Example_123"),
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
/// import com.pulumi.alicloud.mongodb.MongodbFunctions;
/// import com.pulumi.alicloud.mongodb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.mongodb.ShardingInstance;
/// import com.pulumi.alicloud.mongodb.ShardingInstanceArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceShardListArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceMongoListArgs;
/// import com.pulumi.alicloud.mongodb.ShardingNetworkPrivateAddress;
/// import com.pulumi.alicloud.mongodb.ShardingNetworkPrivateAddressArgs;
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
///         final var default = MongodbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultShardingInstance = new ShardingInstance("defaultShardingInstance", ShardingInstanceArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .vswitchId(defaultSwitch.id())
///             .engineVersion("4.2")
///             .name(name)
///             .shardLists(
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("dds.shard.mid")
///                     .nodeStorage(10)
///                     .build(),
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("dds.shard.standard")
///                     .nodeStorage(20)
///                     .readonlyReplicas(1)
///                     .build())
///             .mongoLists(
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("dds.mongos.mid")
///                     .build(),
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("dds.mongos.mid")
///                     .build())
///             .build());
///
///         var defaultShardingNetworkPrivateAddress = new ShardingNetworkPrivateAddress("defaultShardingNetworkPrivateAddress", ShardingNetworkPrivateAddressArgs.builder()
///             .dbInstanceId(defaultShardingInstance.id())
///             .nodeId(defaultShardingInstance.shardLists().applyValue(_shardLists -> _shardLists[0].nodeId()))
///             .zoneId(defaultShardingInstance.zoneId())
///             .accountName("example")
///             .accountPassword("Example_123")
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultShardingInstance:
///     type: alicloud:mongodb:ShardingInstance
///     name: default
///     properties:
///       zoneId: ${default.zones[0].id}
///       vswitchId: ${defaultSwitch.id}
///       engineVersion: '4.2'
///       name: ${name}
///       shardLists:
///         - nodeClass: dds.shard.mid
///           nodeStorage: '10'
///         - nodeClass: dds.shard.standard
///           nodeStorage: '20'
///           readonlyReplicas: '1'
///       mongoLists:
///         - nodeClass: dds.mongos.mid
///         - nodeClass: dds.mongos.mid
///   defaultShardingNetworkPrivateAddress:
///     type: alicloud:mongodb:ShardingNetworkPrivateAddress
///     name: default
///     properties:
///       dbInstanceId: ${defaultShardingInstance.id}
///       nodeId: ${defaultShardingInstance.shardLists[0].nodeId}
///       zoneId: ${defaultShardingInstance.zoneId}
///       accountName: example
///       accountPassword: Example_123
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:mongodb:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MongoDB Sharding Network Private Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/shardingNetworkPrivateAddress:ShardingNetworkPrivateAddress example <db_instance_id>:<node_id>
/// ```
class ShardingNetworkPrivateAddress extends pulumi.CustomResource {
  /// The username of the account.
  /// - The name must be 4 to 16 characters in length and can contain lowercase letters, digits, and underscores (_). It must start with a lowercase letter.
  /// - You need to set the account name and password only when you apply for an endpoint for a shard or ConfigServer node for the first time. In this case, the account name and password are used for all shard and ConfigServer nodes.
  /// - The permissions of this account are fixed to read-only.
  late final pulumi.Output<String?> accountName;
  /// The password for the account.
  /// - The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!#$%^&*()_+-=`.
  /// - The password must be 8 to 32 characters in length.
  late final pulumi.Output<String?> accountPassword;
  /// The ID of the sharded cluster instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The connection string of the instance.
  late final pulumi.Output<List<Map<String, dynamic>>> networkAddresses;
  /// The ID of the Shard node or ConfigServer node.
  late final pulumi.Output<String> nodeId;
  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ShardingNetworkPrivateAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShardingNetworkPrivateAddress]. {@macro pulumi_mongodb_sharding_network_private_address_sharding_network_private_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShardingNetworkPrivateAddress(
    String name, {
    ShardingNetworkPrivateAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/shardingNetworkPrivateAddress:ShardingNetworkPrivateAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String?>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    networkAddresses = registerOutput<List<Map<String, dynamic>>>('networkAddresses');
    nodeId = registerOutput<String>('nodeId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ShardingNetworkPrivateAddress] resource's state with the given [name] and [id].
  static ShardingNetworkPrivateAddress get(
    String name,
    pulumi.Input<String> id, {
    ShardingNetworkPrivateAddressState? state,
  }) {
    return ShardingNetworkPrivateAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShardingNetworkPrivateAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/shardingNetworkPrivateAddress:ShardingNetworkPrivateAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String?>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    networkAddresses = registerOutput<List<Map<String, dynamic>>>('networkAddresses');
    nodeId = registerOutput<String>('nodeId');
    zoneId = registerOutput<String>('zoneId');
  }
}
