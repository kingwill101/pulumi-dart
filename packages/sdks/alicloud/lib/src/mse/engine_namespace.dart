import 'package:pulumi/pulumi.dart' as pulumi;
import 'engine_namespace_args.dart';
import 'engine_namespace_state.dart';

/// Provides a Microservice Engine (MSE) Engine Namespace resource.
///
/// For information about Microservice Engine (MSE) Engine Namespace and how to use it, see [What is Engine Namespace](https://www.alibabacloud.com/help/en/mse/developer-reference/api-mse-2019-05-31-createenginenamespace).
///
/// &gt; **NOTE:** Available since v1.166.0.
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
///     clusterType: "Nacos-Ans",
///     clusterVersion: "NACOS_2_0_0",
///     instanceCount: 3,
///     netType: "privatenet",
///     pubNetworkFlow: "1",
///     connectionType: "slb",
///     clusterAliasName: "terraform-example",
///     mseVersion: "mse_pro",
///     vswitchId: exampleSwitch.id,
///     vpcId: exampleNetwork.id,
/// });
/// const exampleEngineNamespace = new alicloud.mse.EngineNamespace("example", {
///     instanceId: exampleCluster.id,
///     namespaceShowName: "terraform-example",
///     namespaceId: "terraform-example",
///     namespaceDesc: "description",
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
///     cluster_type="Nacos-Ans",
///     cluster_version="NACOS_2_0_0",
///     instance_count=3,
///     net_type="privatenet",
///     pub_network_flow="1",
///     connection_type="slb",
///     cluster_alias_name="terraform-example",
///     mse_version="mse_pro",
///     vswitch_id=example_switch.id,
///     vpc_id=example_network.id)
/// example_engine_namespace = alicloud.mse.EngineNamespace("example",
///     instance_id=example_cluster.id,
///     namespace_show_name="terraform-example",
///     namespace_id="terraform-example",
///     namespace_desc="description")
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
///         ClusterType = "Nacos-Ans",
///         ClusterVersion = "NACOS_2_0_0",
///         InstanceCount = 3,
///         NetType = "privatenet",
///         PubNetworkFlow = "1",
///         ConnectionType = "slb",
///         ClusterAliasName = "terraform-example",
///         MseVersion = "mse_pro",
///         VswitchId = exampleSwitch.Id,
///         VpcId = exampleNetwork.Id,
///     });
///
///     var exampleEngineNamespace = new AliCloud.Mse.EngineNamespace("example", new()
///     {
///         InstanceId = exampleCluster.Id,
///         NamespaceShowName = "terraform-example",
///         NamespaceId = "terraform-example",
///         NamespaceDesc = "description",
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
/// 			ClusterType:          pulumi.String("Nacos-Ans"),
/// 			ClusterVersion:       pulumi.String("NACOS_2_0_0"),
/// 			InstanceCount:        pulumi.Int(3),
/// 			NetType:              pulumi.String("privatenet"),
/// 			PubNetworkFlow:       pulumi.String("1"),
/// 			ConnectionType:       pulumi.String("slb"),
/// 			ClusterAliasName:     pulumi.String("terraform-example"),
/// 			MseVersion:           pulumi.String("mse_pro"),
/// 			VswitchId:            exampleSwitch.ID(),
/// 			VpcId:                exampleNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mse.NewEngineNamespace(ctx, "example", &mse.EngineNamespaceArgs{
/// 			InstanceId:        exampleCluster.ID(),
/// 			NamespaceShowName: pulumi.String("terraform-example"),
/// 			NamespaceId:       pulumi.String("terraform-example"),
/// 			NamespaceDesc:     pulumi.String("description"),
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
/// import com.pulumi.alicloud.mse.EngineNamespace;
/// import com.pulumi.alicloud.mse.EngineNamespaceArgs;
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
///             .clusterType("Nacos-Ans")
///             .clusterVersion("NACOS_2_0_0")
///             .instanceCount(3)
///             .netType("privatenet")
///             .pubNetworkFlow("1")
///             .connectionType("slb")
///             .clusterAliasName("terraform-example")
///             .mseVersion("mse_pro")
///             .vswitchId(exampleSwitch.id())
///             .vpcId(exampleNetwork.id())
///             .build());
///
///         var exampleEngineNamespace = new EngineNamespace("exampleEngineNamespace", EngineNamespaceArgs.builder()
///             .instanceId(exampleCluster.id())
///             .namespaceShowName("terraform-example")
///             .namespaceId("terraform-example")
///             .namespaceDesc("description")
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
///       clusterType: Nacos-Ans
///       clusterVersion: NACOS_2_0_0
///       instanceCount: 3
///       netType: privatenet
///       pubNetworkFlow: '1'
///       connectionType: slb
///       clusterAliasName: terraform-example
///       mseVersion: mse_pro
///       vswitchId: ${exampleSwitch.id}
///       vpcId: ${exampleNetwork.id}
///   exampleEngineNamespace:
///     type: alicloud:mse:EngineNamespace
///     name: example
///     properties:
///       instanceId: ${exampleCluster.id}
///       namespaceShowName: terraform-example
///       namespaceId: terraform-example
///       namespaceDesc: description
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
/// Microservice Engine (MSE) Engine Namespace can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mse/engineNamespace:EngineNamespace example <instance_id>:<namespace_id>
/// ```
class EngineNamespace extends pulumi.CustomResource {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// The id of the cluster.It is formatted to `mse-xxxxxxxx`.
  late final pulumi.Output<String> clusterId;

  /// The instance id of the cluster. It is formatted to `mse-cn-xxxxxxxxxxx`.Available since v1.232.0.
  late final pulumi.Output<String> instanceId;

  /// The description of the namespace.
  ///
  /// **NOTE:** You must set `cluster_id` or `instance_id` or both.
  late final pulumi.Output<String> namespaceDesc;

  /// The id of Namespace.
  late final pulumi.Output<String> namespaceId;

  /// The name of the Engine Namespace.
  late final pulumi.Output<String> namespaceShowName;

  /// Creates a new [EngineNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EngineNamespace]. {@macro pulumi_mse_engine_namespace_engine_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EngineNamespace(
    String name, {
    EngineNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mse/engineNamespace:EngineNamespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    clusterId = registerOutput<String>('clusterId');
    instanceId = registerOutput<String>('instanceId');
    namespaceDesc = registerOutput<String>('namespaceDesc');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceShowName = registerOutput<String>('namespaceShowName');
  }

  /// Gets an existing [EngineNamespace] resource's state with the given [name] and [id].
  static EngineNamespace get(
    String name,
    pulumi.Input<String> id, {
    EngineNamespaceState? state,
  }) {
    return EngineNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EngineNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:mse/engineNamespace:EngineNamespace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    clusterId = registerOutput<String>('clusterId');
    instanceId = registerOutput<String>('instanceId');
    namespaceDesc = registerOutput<String>('namespaceDesc');
    namespaceId = registerOutput<String>('namespaceId');
    namespaceShowName = registerOutput<String>('namespaceShowName');
  }
}
