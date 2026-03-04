import 'package:pulumi/pulumi.dart' as pulumi;
import 'znode_args.dart';
import 'znode_state.dart';

/// Provides a Microservice Engine (MSE) Znode resource.
///
/// For information about Microservice Engine (MSE) Znode and how to use it, see [What is Znode](https://help.aliyun.com/document_detail/393622.html).
///
/// &gt; **NOTE:** Available since v1.162.0.
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
/// const example = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const exampleNetwork = new alicloud.vpc.Network("example", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: exampleNetwork.id,
///     zoneId: example.then(example => example.zones?.[0]?.id),
/// });
/// const exampleCluster = new alicloud.mse.Cluster("example", {
///     clusterSpecification: "MSE_SC_1_2_60_c",
///     clusterType: "ZooKeeper",
///     clusterVersion: "ZooKeeper_3_8_0",
///     instanceCount: 1,
///     netType: "privatenet",
///     pubNetworkFlow: "1",
///     aclEntryLists: ["127.0.0.1/32"],
///     clusterAliasName: "terraform-example",
///     mseVersion: "mse_dev",
///     vswitchId: exampleSwitch.id,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleZnode = new alicloud.mse.Znode("example", {
///     clusterId: exampleCluster.clusterId,
///     data: "terraform-example",
///     path: "/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.get_zones(available_resource_creation="VSwitch")
/// example_network = alicloud.vpc.Network("example",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=example_network.id,
///     zone_id=example.zones[0].id)
/// example_cluster = alicloud.mse.Cluster("example",
///     cluster_specification="MSE_SC_1_2_60_c",
///     cluster_type="ZooKeeper",
///     cluster_version="ZooKeeper_3_8_0",
///     instance_count=1,
///     net_type="privatenet",
///     pub_network_flow="1",
///     acl_entry_lists=["127.0.0.1/32"],
///     cluster_alias_name="terraform-example",
///     mse_version="mse_dev",
///     vswitch_id=example_switch.id,
///     vpc_id=example_network.id)
/// example_znode = alicloud.mse.Znode("example",
///     cluster_id=example_cluster.cluster_id,
///     data="terraform-example",
///     path="/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var exampleNetwork = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = exampleNetwork.Id,
///         ZoneId = example.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var exampleCluster = new AliCloud.Mse.Cluster("example", new()
///     {
///         ClusterSpecification = "MSE_SC_1_2_60_c",
///         ClusterType = "ZooKeeper",
///         ClusterVersion = "ZooKeeper_3_8_0",
///         InstanceCount = 1,
///         NetType = "privatenet",
///         PubNetworkFlow = "1",
///         AclEntryLists = new[]
///         {
///             "127.0.0.1/32",
///         },
///         ClusterAliasName = "terraform-example",
///         MseVersion = "mse_dev",
///         VswitchId = exampleSwitch.Id,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleZnode = new AliCloud.Mse.Znode("example", new()
///     {
///         ClusterId = exampleCluster.ClusterId,
///         Data = "terraform-example",
///         Path = "/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mse"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetwork, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       exampleNetwork.ID(),
/// 			ZoneId:      pulumi.String(example.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCluster, err := mse.NewCluster(ctx, "example", &mse.ClusterArgs{
/// 			ClusterSpecification: pulumi.String("MSE_SC_1_2_60_c"),
/// 			ClusterType:          pulumi.String("ZooKeeper"),
/// 			ClusterVersion:       pulumi.String("ZooKeeper_3_8_0"),
/// 			InstanceCount:        pulumi.Int(1),
/// 			NetType:              pulumi.String("privatenet"),
/// 			PubNetworkFlow:       pulumi.String("1"),
/// 			AclEntryLists: pulumi.StringArray{
/// 				pulumi.String("127.0.0.1/32"),
/// 			},
/// 			ClusterAliasName: pulumi.String("terraform-example"),
/// 			MseVersion:       pulumi.String("mse_dev"),
/// 			VswitchId:        exampleSwitch.ID(),
/// 			VpcId:            exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mse.NewZnode(ctx, "example", &mse.ZnodeArgs{
/// 			ClusterId: exampleCluster.ClusterId,
/// 			Data:      pulumi.String("terraform-example"),
/// 			Path:      pulumi.String("/example"),
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
/// import com.pulumi.alicloud.mse.Cluster;
/// import com.pulumi.alicloud.mse.ClusterArgs;
/// import com.pulumi.alicloud.mse.Znode;
/// import com.pulumi.alicloud.mse.ZnodeArgs;
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
///         final var example = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var exampleNetwork = new Network("exampleNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(exampleNetwork.id())
///             .zoneId(example.zones()[0].id())
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .clusterSpecification("MSE_SC_1_2_60_c")
///             .clusterType("ZooKeeper")
///             .clusterVersion("ZooKeeper_3_8_0")
///             .instanceCount(1)
///             .netType("privatenet")
///             .pubNetworkFlow("1")
///             .aclEntryLists("127.0.0.1/32")
///             .clusterAliasName("terraform-example")
///             .mseVersion("mse_dev")
///             .vswitchId(exampleSwitch.id())
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleZnode = new Znode("exampleZnode", ZnodeArgs.builder()
///             .clusterId(exampleCluster.clusterId())
///             .data("terraform-example")
///             .path("/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNetwork:
///     type: alicloud:vpc:Network
///     name: example
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${exampleNetwork.id}
///       zoneId: ${example.zones[0].id}
///   exampleCluster:
///     type: alicloud:mse:Cluster
///     name: example
///     properties:
///       clusterSpecification: MSE_SC_1_2_60_c
///       clusterType: ZooKeeper
///       clusterVersion: ZooKeeper_3_8_0
///       instanceCount: 1
///       netType: privatenet
///       pubNetworkFlow: '1'
///       aclEntryLists:
///         - 127.0.0.1/32
///       clusterAliasName: terraform-example
///       mseVersion: mse_dev
///       vswitchId: ${exampleSwitch.id}
///       vpcId: ${exampleNetwork.id}
///   exampleZnode:
///     type: alicloud:mse:Znode
///     name: example
///     properties:
///       clusterId: ${exampleCluster.clusterId}
///       data: terraform-example
///       path: /example
/// variables:
///   example:
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
/// Microservice Engine (MSE) Znode can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mse/znode:Znode example <cluster_id>:<path>
/// ```
class Znode extends pulumi.CustomResource {
  /// The language type of the returned information. Valid values: `zh` or `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// The ID of the Cluster.
  late final pulumi.Output<String> clusterId;

  /// The Node data.
  late final pulumi.Output<String?> data;

  /// The Node path. The value must start with a forward slash (/).
  late final pulumi.Output<String> path;

  /// Creates a new [Znode].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Znode]. {@macro pulumi_mse_znode_znode_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Znode(String name, {ZnodeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:mse/znode:Znode',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    clusterId = registerOutput<String>('clusterId');
    data = registerOutput<String?>('data');
    path = registerOutput<String>('path');
  }

  /// Gets an existing [Znode] resource's state with the given [name] and [id].
  static Znode get(String name, pulumi.Input<String> id, {ZnodeState? state}) {
    return Znode._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Znode._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mse/znode:Znode',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    clusterId = registerOutput<String>('clusterId');
    data = registerOutput<String?>('data');
    path = registerOutput<String>('path');
  }
}
