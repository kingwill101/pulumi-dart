import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_network_public_address_args.dart';
import 'sharding_network_public_address_network_address.dart';
import 'sharding_network_public_address_state.dart';

/// Provides a MongoDB Sharding Network Public Address resource.
///
/// For information about MongoDB Sharding Network Public Address and how to use it, see [What is Sharding Network Public Address](https://www.alibabacloud.com/help/doc-detail/67602.html).
///
/// > **NOTE:** Available since v1.149.0.
///
/// > **NOTE:** This operation supports sharded cluster instances only.
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
/// const index = _default.then(_default => _default.zones).length.apply(length => length - 1);
/// const zoneId = _default.then(_default => _default.zones[index].id);
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: zoneId,
/// });
/// const defaultShardingInstance = new alicloud.mongodb.ShardingInstance("default", {
///     zoneId: zoneId,
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
/// const example = new alicloud.mongodb.ShardingNetworkPublicAddress("example", {
///     dbInstanceId: defaultShardingInstance.id,
///     nodeId: defaultShardingInstance.mongoLists.apply(mongoLists => mongoLists[0].nodeId),
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
/// index = len(default.zones).apply(lambda length: length - 1)
/// zone_id = default.zones[index].id
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=zone_id)
/// default_sharding_instance = alicloud.mongodb.ShardingInstance("default",
///     zone_id=zone_id,
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
/// example = alicloud.mongodb.ShardingNetworkPublicAddress("example",
///     db_instance_id=default_sharding_instance.id,
///     node_id=default_sharding_instance.mongo_lists[0].node_id)
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
///     var index = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length.Apply(length => length - 1);
///
///     var zoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[index].Id);
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
///         ZoneId = zoneId,
///     });
///
///     var defaultShardingInstance = new AliCloud.MongoDB.ShardingInstance("default", new()
///     {
///         ZoneId = zoneId,
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
///     var example = new AliCloud.MongoDB.ShardingNetworkPublicAddress("example", new()
///     {
///         DbInstanceId = defaultShardingInstance.Id,
///         NodeId = defaultShardingInstance.MongoLists.Apply(mongoLists => mongoLists[0].NodeId),
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
/// 		index := len(_default.Zones).ApplyT(func(length int) (float64, error) {
/// 			return float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output)), nil
/// 		}).(pulumi.Float64Output)
/// 		zoneId := _default.Zones[index].Id
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
/// 			ZoneId:      pulumi.String(zoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultShardingInstance, err := mongodb.NewShardingInstance(ctx, "default", &mongodb.ShardingInstanceArgs{
/// 			ZoneId:        pulumi.String(zoneId),
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
/// 		_, err = mongodb.NewShardingNetworkPublicAddress(ctx, "example", &mongodb.ShardingNetworkPublicAddressArgs{
/// 			DbInstanceId: defaultShardingInstance.ID(),
/// 			NodeId: pulumi.String(defaultShardingInstance.MongoLists.ApplyT(func(mongoLists []mongodb.ShardingInstanceMongoList) (*string, error) {
/// 				return &mongoLists[0].NodeId, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.alicloud.mongodb.ShardingNetworkPublicAddress;
/// import com.pulumi.alicloud.mongodb.ShardingNetworkPublicAddressArgs;
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
///         final var index = default_.zones().length().applyValue(_length -> _length - 1);
///
///         final var zoneId = default_.zones()[index].id();
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
///             .zoneId(zoneId)
///             .build());
///
///         var defaultShardingInstance = new ShardingInstance("defaultShardingInstance", ShardingInstanceArgs.builder()
///             .zoneId(zoneId)
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
///         var example = new ShardingNetworkPublicAddress("example", ShardingNetworkPublicAddressArgs.builder()
///             .dbInstanceId(defaultShardingInstance.id())
///             .nodeId(defaultShardingInstance.mongoLists().applyValue(_mongoLists -> _mongoLists[0].nodeId()))
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
/// MongoDB Sharding Network Public Address can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/shardingNetworkPublicAddress:ShardingNetworkPublicAddress example <db_instance_id>:<node_id>
/// ```
class ShardingNetworkPublicAddress extends pulumi.CustomResource {
  /// The ID of the instance.
  late final pulumi.Output<String> dbInstanceId;
  /// The endpoint of the instance.
  late final pulumi.Output<List<ShardingNetworkPublicAddressNetworkAddress>> networkAddresses;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  late final pulumi.Output<String> nodeId;

  /// Creates a new [ShardingNetworkPublicAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShardingNetworkPublicAddress]. {@macro pulumi_mongodb_sharding_network_public_address_sharding_network_public_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShardingNetworkPublicAddress(
    String name, {
    ShardingNetworkPublicAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/shardingNetworkPublicAddress:ShardingNetworkPublicAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.networkAddresses = registerOutput<List<ShardingNetworkPublicAddressNetworkAddress>>('networkAddresses');
    this.nodeId = registerOutput<String>('nodeId');
  }

  /// Gets an existing [ShardingNetworkPublicAddress] resource's state with the given [name] and [id].
  static ShardingNetworkPublicAddress get(
    String name,
    pulumi.Input<String> id, {
    ShardingNetworkPublicAddressState? state,
  }) {
    return ShardingNetworkPublicAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ShardingNetworkPublicAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mongodb/shardingNetworkPublicAddress:ShardingNetworkPublicAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.networkAddresses = registerOutput<List<ShardingNetworkPublicAddressNetworkAddress>>('networkAddresses');
    this.nodeId = registerOutput<String>('nodeId');
  }
}
