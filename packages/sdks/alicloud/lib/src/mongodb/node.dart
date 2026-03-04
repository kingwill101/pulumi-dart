import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_args.dart';
import 'node_state.dart';

/// Provides a Mongodb Node resource.
///
/// The sub-resources of the ShardingInstance, including the cs, shards, and mongos nodes.
///
/// For information about Mongodb Node and how to use it, see [What is Node](https://next.api.alibabacloud.com/document/Dds/2015-12-01/CreateNode).
///
/// &gt; **NOTE:** Available since v1.266.0.
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
/// const ipv4Cidr = config.get("ipv4Cidr") || "10.0.0.0/24";
/// const _default = new alicloud.vpc.Network("default", {
///     description: "tf-example",
///     vpcName: "tf-vpc-shanghai-b",
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: _default.id,
///     zoneId: zoneId,
///     cidrBlock: ipv4Cidr,
///     vswitchName: "tf-shanghai-B",
/// });
/// const defaultShardingInstance = new alicloud.mongodb.ShardingInstance("default", {
///     engineVersion: "4.2",
///     vswitchId: defaultSwitch.id,
///     zoneId: zoneId,
///     name: name,
///     storageType: "cloud_auto",
///     provisionedIops: 60,
///     configServerLists: [{
///         nodeClass: "mdb.shard.2x.xlarge.d",
///         nodeStorage: 40,
///     }],
///     mongoLists: [
///         {
///             nodeClass: "mdb.shard.2x.xlarge.d",
///         },
///         {
///             nodeClass: "mdb.shard.2x.xlarge.d",
///         },
///     ],
///     shardLists: [
///         {
///             nodeClass: "mdb.shard.2x.xlarge.d",
///             nodeStorage: 40,
///         },
///         {
///             nodeClass: "mdb.shard.2x.xlarge.d",
///             nodeStorage: 40,
///         },
///     ],
/// });
/// const defaultNode = new alicloud.mongodb.Node("default", {
///     accountPassword: "q1w2e3r4!",
///     autoPay: true,
///     nodeClass: "mdb.shard.4x.large.d",
///     shardDirect: false,
///     businessInfo: "1234",
///     nodeStorage: 40,
///     readonlyReplicas: 0,
///     dbInstanceId: defaultShardingInstance.id,
///     nodeType: "shard",
///     accountName: "root",
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
/// zone_id = config.get("zoneId")
/// if zone_id is None:
///     zone_id = "cn-shanghai-b"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-shanghai"
/// ipv4_cidr = config.get("ipv4Cidr")
/// if ipv4_cidr is None:
///     ipv4_cidr = "10.0.0.0/24"
/// default = alicloud.vpc.Network("default",
///     description="tf-example",
///     vpc_name="tf-vpc-shanghai-b",
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default.id,
///     zone_id=zone_id,
///     cidr_block=ipv4_cidr,
///     vswitch_name="tf-shanghai-B")
/// default_sharding_instance = alicloud.mongodb.ShardingInstance("default",
///     engine_version="4.2",
///     vswitch_id=default_switch.id,
///     zone_id=zone_id,
///     name=name,
///     storage_type="cloud_auto",
///     provisioned_iops=60,
///     config_server_lists=[{
///         "node_class": "mdb.shard.2x.xlarge.d",
///         "node_storage": 40,
///     }],
///     mongo_lists=[
///         {
///             "node_class": "mdb.shard.2x.xlarge.d",
///         },
///         {
///             "node_class": "mdb.shard.2x.xlarge.d",
///         },
///     ],
///     shard_lists=[
///         {
///             "node_class": "mdb.shard.2x.xlarge.d",
///             "node_storage": 40,
///         },
///         {
///             "node_class": "mdb.shard.2x.xlarge.d",
///             "node_storage": 40,
///         },
///     ])
/// default_node = alicloud.mongodb.Node("default",
///     account_password="q1w2e3r4!",
///     auto_pay=True,
///     node_class="mdb.shard.4x.large.d",
///     shard_direct=False,
///     business_info="1234",
///     node_storage=40,
///     readonly_replicas=0,
///     db_instance_id=default_sharding_instance.id,
///     node_type="shard",
///     account_name="root")
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
///     var ipv4Cidr = config.Get("ipv4Cidr") ?? "10.0.0.0/24";
///     var @default = new AliCloud.Vpc.Network("default", new()
///     {
///         Description = "tf-example",
///         VpcName = "tf-vpc-shanghai-b",
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = @default.Id,
///         ZoneId = zoneId,
///         CidrBlock = ipv4Cidr,
///         VswitchName = "tf-shanghai-B",
///     });
///
///     var defaultShardingInstance = new AliCloud.MongoDB.ShardingInstance("default", new()
///     {
///         EngineVersion = "4.2",
///         VswitchId = defaultSwitch.Id,
///         ZoneId = zoneId,
///         Name = name,
///         StorageType = "cloud_auto",
///         ProvisionedIops = 60,
///         ConfigServerLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceConfigServerListArgs
///             {
///                 NodeClass = "mdb.shard.2x.xlarge.d",
///                 NodeStorage = 40,
///             },
///         },
///         MongoLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "mdb.shard.2x.xlarge.d",
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceMongoListArgs
///             {
///                 NodeClass = "mdb.shard.2x.xlarge.d",
///             },
///         },
///         ShardLists = new[]
///         {
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "mdb.shard.2x.xlarge.d",
///                 NodeStorage = 40,
///             },
///             new AliCloud.MongoDB.Inputs.ShardingInstanceShardListArgs
///             {
///                 NodeClass = "mdb.shard.2x.xlarge.d",
///                 NodeStorage = 40,
///             },
///         },
///     });
///
///     var defaultNode = new AliCloud.MongoDB.Node("default", new()
///     {
///         AccountPassword = "q1w2e3r4!",
///         AutoPay = true,
///         NodeClass = "mdb.shard.4x.large.d",
///         ShardDirect = false,
///         BusinessInfo = "1234",
///         NodeStorage = 40,
///         ReadonlyReplicas = 0,
///         DbInstanceId = defaultShardingInstance.Id,
///         NodeType = "shard",
///         AccountName = "root",
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
/// 		ipv4Cidr := "10.0.0.0/24"
/// 		if param := cfg.Get("ipv4Cidr"); param != "" {
/// 			ipv4Cidr = param
/// 		}
/// 		_default, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			Description: pulumi.String("tf-example"),
/// 			VpcName:     pulumi.String("tf-vpc-shanghai-b"),
/// 			CidrBlock:   pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       _default.ID(),
/// 			ZoneId:      pulumi.String(zoneId),
/// 			CidrBlock:   pulumi.String(ipv4Cidr),
/// 			VswitchName: pulumi.String("tf-shanghai-B"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultShardingInstance, err := mongodb.NewShardingInstance(ctx, "default", &mongodb.ShardingInstanceArgs{
/// 			EngineVersion:   pulumi.String("4.2"),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			ZoneId:          pulumi.String(zoneId),
/// 			Name:            pulumi.String(name),
/// 			StorageType:     pulumi.String("cloud_auto"),
/// 			ProvisionedIops: pulumi.Int(60),
/// 			ConfigServerLists: mongodb.ShardingInstanceConfigServerListArray{
/// 				&mongodb.ShardingInstanceConfigServerListArgs{
/// 					NodeClass:   pulumi.String("mdb.shard.2x.xlarge.d"),
/// 					NodeStorage: pulumi.Int(40),
/// 				},
/// 			},
/// 			MongoLists: mongodb.ShardingInstanceMongoListArray{
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("mdb.shard.2x.xlarge.d"),
/// 				},
/// 				&mongodb.ShardingInstanceMongoListArgs{
/// 					NodeClass: pulumi.String("mdb.shard.2x.xlarge.d"),
/// 				},
/// 			},
/// 			ShardLists: mongodb.ShardingInstanceShardListArray{
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:   pulumi.String("mdb.shard.2x.xlarge.d"),
/// 					NodeStorage: pulumi.Int(40),
/// 				},
/// 				&mongodb.ShardingInstanceShardListArgs{
/// 					NodeClass:   pulumi.String("mdb.shard.2x.xlarge.d"),
/// 					NodeStorage: pulumi.Int(40),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mongodb.NewNode(ctx, "default", &mongodb.NodeArgs{
/// 			AccountPassword:  pulumi.String("q1w2e3r4!"),
/// 			AutoPay:          pulumi.Bool(true),
/// 			NodeClass:        pulumi.String("mdb.shard.4x.large.d"),
/// 			ShardDirect:      pulumi.Bool(false),
/// 			BusinessInfo:     pulumi.String("1234"),
/// 			NodeStorage:      pulumi.Int(40),
/// 			ReadonlyReplicas: pulumi.Int(0),
/// 			DbInstanceId:     defaultShardingInstance.ID(),
/// 			NodeType:         pulumi.String("shard"),
/// 			AccountName:      pulumi.String("root"),
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
/// import com.pulumi.alicloud.mongodb.ShardingInstance;
/// import com.pulumi.alicloud.mongodb.ShardingInstanceArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceConfigServerListArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceMongoListArgs;
/// import com.pulumi.alicloud.mongodb.inputs.ShardingInstanceShardListArgs;
/// import com.pulumi.alicloud.mongodb.Node;
/// import com.pulumi.alicloud.mongodb.NodeArgs;
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
///         final var ipv4Cidr = config.get("ipv4Cidr").orElse("10.0.0.0/24");
///         var default_ = new Network("default", NetworkArgs.builder()
///             .description("tf-example")
///             .vpcName("tf-vpc-shanghai-b")
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(default_.id())
///             .zoneId(zoneId)
///             .cidrBlock(ipv4Cidr)
///             .vswitchName("tf-shanghai-B")
///             .build());
///
///         var defaultShardingInstance = new ShardingInstance("defaultShardingInstance", ShardingInstanceArgs.builder()
///             .engineVersion("4.2")
///             .vswitchId(defaultSwitch.id())
///             .zoneId(zoneId)
///             .name(name)
///             .storageType("cloud_auto")
///             .provisionedIops(60)
///             .configServerLists(ShardingInstanceConfigServerListArgs.builder()
///                 .nodeClass("mdb.shard.2x.xlarge.d")
///                 .nodeStorage(40)
///                 .build())
///             .mongoLists(
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("mdb.shard.2x.xlarge.d")
///                     .build(),
///                 ShardingInstanceMongoListArgs.builder()
///                     .nodeClass("mdb.shard.2x.xlarge.d")
///                     .build())
///             .shardLists(
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("mdb.shard.2x.xlarge.d")
///                     .nodeStorage(40)
///                     .build(),
///                 ShardingInstanceShardListArgs.builder()
///                     .nodeClass("mdb.shard.2x.xlarge.d")
///                     .nodeStorage(40)
///                     .build())
///             .build());
///
///         var defaultNode = new Node("defaultNode", NodeArgs.builder()
///             .accountPassword("q1w2e3r4!")
///             .autoPay(true)
///             .nodeClass("mdb.shard.4x.large.d")
///             .shardDirect(false)
///             .businessInfo("1234")
///             .nodeStorage(40)
///             .readonlyReplicas(0)
///             .dbInstanceId(defaultShardingInstance.id())
///             .nodeType("shard")
///             .accountName("root")
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
///   ipv4Cidr:
///     type: string
///     default: 10.0.0.0/24
/// resources:
///   default:
///     type: alicloud:vpc:Network
///     properties:
///       description: tf-example
///       vpcName: tf-vpc-shanghai-b
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${default.id}
///       zoneId: ${zoneId}
///       cidrBlock: ${ipv4Cidr}
///       vswitchName: tf-shanghai-B
///   defaultShardingInstance:
///     type: alicloud:mongodb:ShardingInstance
///     name: default
///     properties:
///       engineVersion: '4.2'
///       vswitchId: ${defaultSwitch.id}
///       zoneId: ${zoneId}
///       name: ${name}
///       storageType: cloud_auto
///       provisionedIops: 60
///       configServerLists:
///         - nodeClass: mdb.shard.2x.xlarge.d
///           nodeStorage: 40
///       mongoLists:
///         - nodeClass: mdb.shard.2x.xlarge.d
///         - nodeClass: mdb.shard.2x.xlarge.d
///       shardLists:
///         - nodeClass: mdb.shard.2x.xlarge.d
///           nodeStorage: 40
///         - nodeClass: mdb.shard.2x.xlarge.d
///           nodeStorage: 40
///   defaultNode:
///     type: alicloud:mongodb:Node
///     name: default
///     properties:
///       accountPassword: q1w2e3r4!
///       autoPay: 'true'
///       nodeClass: mdb.shard.4x.large.d
///       shardDirect: 'false'
///       businessInfo: '1234'
///       nodeStorage: '40'
///       readonlyReplicas: '0'
///       dbInstanceId: ${defaultShardingInstance.id}
///       nodeType: shard
///       accountName: root
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Mongodb Node can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mongodb/node:Node example <db_instance_id>:<node_id>
/// ```
class Node extends pulumi.CustomResource {
  /// Account name, value description:
  /// - Begins with a lowercase letter.
  /// - Consists of lowercase letters, numbers, or underscores (_).
  /// - 4~16 characters in length.
  ///
  /// &gt; **NOTE:** - apsaradb for MongoDB does not support using keywords as accounts.
  /// - The permissions of the account are fixed to read-only permissions.
  /// - When applying for a direct connection address of a Shard node for the first time, you need to set an account and password.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> accountName;

  /// Account password, value description:
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  ///
  /// &gt; **NOTE:**  apsaradb for MongoDB does not support resetting the account and password of the Shard node.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> accountPassword;

  /// Whether to pay automatically. Value description:
  late final pulumi.Output<bool?> autoPay;

  /// Additional parameters, business information.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  late final pulumi.Output<String?> businessInfo;

  /// The ID of the sharded cluster instance.
  late final pulumi.Output<String> dbInstanceId;
  late final pulumi.Output<String?> effectiveTime;

  /// Request Source, value description:
  /// - `OpenApi`: The request source is OpenApi.
  late final pulumi.Output<String?> fromApp;

  /// The specifications of the Shard node or Mongos node. For more information, see Instance Specifications.
  late final pulumi.Output<String> nodeClass;

  /// The first ID of the resource
  late final pulumi.Output<String> nodeId;

  /// The disk space of the Node. Unit: GB.
  ///
  /// Value range: `10` to `2000`, with a step size of 10GB.
  ///
  /// &gt; **NOTE:**  When the node type is `Shard`, you need to configure this parameter.
  late final pulumi.Output<int?> nodeStorage;

  /// Node type, value description:
  late final pulumi.Output<String> nodeType;
  late final pulumi.Output<String?> orderType;

  /// The number of read-only nodes in the Shard.
  ///
  /// Value range: `0` to `5` (integer). Default value: **0 * *.
  ///
  /// &gt; **NOTE:**  This parameter is currently only supported by China Station.
  late final pulumi.Output<int> readonlyReplicas;

  /// Whether to apply for the direct connection address of the Shard node. Value description:
  late final pulumi.Output<bool?> shardDirect;

  /// Running status of node in sharded cluster
  late final pulumi.Output<String> status;
  late final pulumi.Output<String?> switchTime;

  /// Creates a new [Node].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Node]. {@macro pulumi_mongodb_node_node_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Node(String name, {NodeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:mongodb/node:Node',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accountName = registerOutput<String?>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    autoPay = registerOutput<bool?>('autoPay');
    businessInfo = registerOutput<String?>('businessInfo');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    effectiveTime = registerOutput<String?>('effectiveTime');
    fromApp = registerOutput<String?>('fromApp');
    nodeClass = registerOutput<String>('nodeClass');
    nodeId = registerOutput<String>('nodeId');
    nodeStorage = registerOutput<int?>('nodeStorage');
    nodeType = registerOutput<String>('nodeType');
    orderType = registerOutput<String?>('orderType');
    readonlyReplicas = registerOutput<int>('readonlyReplicas');
    shardDirect = registerOutput<bool?>('shardDirect');
    status = registerOutput<String>('status');
    switchTime = registerOutput<String?>('switchTime');
  }

  /// Gets an existing [Node] resource's state with the given [name] and [id].
  static Node get(String name, pulumi.Input<String> id, {NodeState? state}) {
    return Node._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Node._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mongodb/node:Node',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountName = registerOutput<String?>('accountName');
    accountPassword = registerOutput<String?>('accountPassword');
    autoPay = registerOutput<bool?>('autoPay');
    businessInfo = registerOutput<String?>('businessInfo');
    dbInstanceId = registerOutput<String>('dbInstanceId');
    effectiveTime = registerOutput<String?>('effectiveTime');
    fromApp = registerOutput<String?>('fromApp');
    nodeClass = registerOutput<String>('nodeClass');
    nodeId = registerOutput<String>('nodeId');
    nodeStorage = registerOutput<int?>('nodeStorage');
    nodeType = registerOutput<String>('nodeType');
    orderType = registerOutput<String?>('orderType');
    readonlyReplicas = registerOutput<int>('readonlyReplicas');
    shardDirect = registerOutput<bool?>('shardDirect');
    status = registerOutput<String>('status');
    switchTime = registerOutput<String?>('switchTime');
  }
}
