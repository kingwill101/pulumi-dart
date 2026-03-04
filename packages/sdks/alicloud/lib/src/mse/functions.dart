import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_engine_namespaces_args.dart';
import 'get_engine_namespaces_result.dart';
import 'get_gateways_args.dart';
import 'get_gateways_result.dart';
import 'get_nacos_configs_args.dart';
import 'get_nacos_configs_result.dart';
import 'get_znodes_args.dart';
import 'get_znodes_result.dart';

/// This data source provides a list of MSE Clusters in an Alibaba Cloud account according to the specified filters.
///
/// &gt; **NOTE:** Available since v1.94.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create resource
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
/// // Declare the data source
/// const exampleGetClusters = pulumi.all([exampleCluster.id, exampleCluster.clusterAliasName]).apply(([id, clusterAliasName]) => alicloud.mse.getClustersOutput({
///     enableDetails: true,
///     ids: [id],
///     status: "INIT_SUCCESS",
///     nameRegex: clusterAliasName,
/// }));
/// export const instanceId = exampleGetClusters.apply(exampleGetClusters => exampleGetClusters.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create resource
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
/// # Declare the data source
/// example_get_clusters = pulumi.Output.all(
///     id=example_cluster.id,
///     cluster_alias_name=example_cluster.cluster_alias_name
/// ).apply(lambda resolved_outputs: alicloud.mse.get_clusters_output(enable_details=True,
///     ids=[resolved_outputs['id']],
///     status="INIT_SUCCESS",
///     name_regex=resolved_outputs['cluster_alias_name']))
///
/// pulumi.export("instanceId", example_get_clusters.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create resource
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
///     // Declare the data source
///     var exampleGetClusters = AliCloud.Mse.GetClusters.Invoke(new()
///     {
///         EnableDetails = true,
///         Ids = new[]
///         {
///             exampleCluster.Id,
///         },
///         Status = "INIT_SUCCESS",
///         NameRegex = exampleCluster.ClusterAliasName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instanceId"] = exampleGetClusters.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
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
/// 		// Create resource
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
/// 		// Declare the data source
/// 		exampleGetClusters := pulumi.All(exampleCluster.ID(), exampleCluster.ClusterAliasName).ApplyT(func(_args []interface{}) (mse.GetClustersResult, error) {
/// 			id := _args[0].(string)
/// 			clusterAliasName := _args[1].(string)
/// 			return mse.GetClustersResult(interface{}(mse.GetClusters(ctx, &mse.GetClustersArgs{
/// 				EnableDetails: pulumi.BoolRef(pulumi.BoolRef(true)),
/// 				Ids: []string{
/// 					id,
/// 				},
/// 				Status:    pulumi.StringRef(pulumi.StringRef("INIT_SUCCESS")),
/// 				NameRegex: pulumi.StringRef(pulumi.StringRef(clusterAliasName)),
/// 			}, nil))), nil
/// 		}).(mse.GetClustersResultOutput)
/// 		ctx.Export("instanceId", exampleGetClusters.ApplyT(func(exampleGetClusters mse.GetClustersResult) (*string, error) {
/// 			return &exampleGetClusters.Clusters[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.mse.MseFunctions;
/// import com.pulumi.alicloud.mse.inputs.GetClustersArgs;
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
///         // Create resource
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
///         // Declare the data source
///         final var exampleGetClusters = Output.tuple(exampleCluster.id(), exampleCluster.clusterAliasName()).applyValue(values -> {
///             var id = values.t1;
///             var clusterAliasName = values.t2;
///             return MseFunctions.getClusters(GetClustersArgs.builder()
///                 .enableDetails(true)
///                 .ids(id)
///                 .status("INIT_SUCCESS")
///                 .nameRegex(clusterAliasName)
///                 .build());
///         });
///
///         ctx.export("instanceId", exampleGetClusters.applyValue(_exampleGetClusters -> _exampleGetClusters.clusters()[0].id()));
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
/// variables:
///   # Create resource
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   # Declare the data source
///   exampleGetClusters:
///     fn::invoke:
///       function: alicloud:mse:getClusters
///       arguments:
///         enableDetails: 'true'
///         ids:
///           - ${exampleCluster.id}
///         status: INIT_SUCCESS
///         nameRegex: ${exampleCluster.clusterAliasName}
/// outputs:
///   instanceId: ${exampleGetClusters.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mse_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mse/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// This data source provides the Mse Engine Namespaces of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.166.0.
///
/// ## Example Usage
///
/// Basic Usage
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
/// // Declare the data source
/// const exampleGetEngineNamespaces = alicloud.mse.getEngineNamespacesOutput({
///     instanceId: exampleEngineNamespace.instanceId,
/// });
/// export const mseEngineNamespaceIdPublic = exampleGetEngineNamespaces.apply(exampleGetEngineNamespaces => exampleGetEngineNamespaces.namespaces?.[0]?.id);
/// export const mseEngineNamespaceIdExample = exampleGetEngineNamespaces.apply(exampleGetEngineNamespaces => exampleGetEngineNamespaces.namespaces?.[1]?.id);
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
/// # Declare the data source
/// example_get_engine_namespaces = alicloud.mse.get_engine_namespaces_output(instance_id=example_engine_namespace.instance_id)
/// pulumi.export("mseEngineNamespaceIdPublic", example_get_engine_namespaces.namespaces[0].id)
/// pulumi.export("mseEngineNamespaceIdExample", example_get_engine_namespaces.namespaces[1].id)
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
///     // Declare the data source
///     var exampleGetEngineNamespaces = AliCloud.Mse.GetEngineNamespaces.Invoke(new()
///     {
///         InstanceId = exampleEngineNamespace.InstanceId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mseEngineNamespaceIdPublic"] = exampleGetEngineNamespaces.Apply(getEngineNamespacesResult => getEngineNamespacesResult.Namespaces[0]?.Id),
///         ["mseEngineNamespaceIdExample"] = exampleGetEngineNamespaces.Apply(getEngineNamespacesResult => getEngineNamespacesResult.Namespaces[1]?.Id),
///     };
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
/// 		exampleEngineNamespace, err := mse.NewEngineNamespace(ctx, "example", &mse.EngineNamespaceArgs{
/// 			InstanceId:        exampleCluster.ID(),
/// 			NamespaceShowName: pulumi.String("terraform-example"),
/// 			NamespaceId:       pulumi.String("terraform-example"),
/// 			NamespaceDesc:     pulumi.String("description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Declare the data source
/// 		exampleGetEngineNamespaces := mse.GetEngineNamespacesOutput(ctx, mse.GetEngineNamespacesOutputArgs{
/// 			InstanceId: exampleEngineNamespace.InstanceId,
/// 		}, nil)
/// 		ctx.Export("mseEngineNamespaceIdPublic", exampleGetEngineNamespaces.ApplyT(func(exampleGetEngineNamespaces mse.GetEngineNamespacesResult) (*string, error) {
/// 			return &exampleGetEngineNamespaces.Namespaces[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		ctx.Export("mseEngineNamespaceIdExample", exampleGetEngineNamespaces.ApplyT(func(exampleGetEngineNamespaces mse.GetEngineNamespacesResult) (*string, error) {
/// 			return &exampleGetEngineNamespaces.Namespaces[1].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.mse.MseFunctions;
/// import com.pulumi.alicloud.mse.inputs.GetEngineNamespacesArgs;
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
///         // Declare the data source
///         final var exampleGetEngineNamespaces = MseFunctions.getEngineNamespaces(GetEngineNamespacesArgs.builder()
///             .instanceId(exampleEngineNamespace.instanceId())
///             .build());
///
///         ctx.export("mseEngineNamespaceIdPublic", exampleGetEngineNamespaces.applyValue(_exampleGetEngineNamespaces -> _exampleGetEngineNamespaces.namespaces()[0].id()));
///         ctx.export("mseEngineNamespaceIdExample", exampleGetEngineNamespaces.applyValue(_exampleGetEngineNamespaces -> _exampleGetEngineNamespaces.namespaces()[1].id()));
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
///   # Declare the data source
///   exampleGetEngineNamespaces:
///     fn::invoke:
///       function: alicloud:mse:getEngineNamespaces
///       arguments:
///         instanceId: ${exampleEngineNamespace.instanceId}
/// outputs:
///   mseEngineNamespaceIdPublic: ${exampleGetEngineNamespaces.namespaces[0].id}
///   mseEngineNamespaceIdExample: ${exampleGetEngineNamespaces.namespaces[1].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mse_get_engine_namespaces_get_engine_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEngineNamespacesResult> getEngineNamespaces(
  GetEngineNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mse/getEngineNamespaces:getEngineNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineNamespacesResult.fromMap(result);
}

/// This data source provides the Mse Gateways of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.157.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.mse.getGateways({
///     ids: ["example_id"],
/// });
/// export const mseGatewayId1 = ids.then(ids => ids.gateways?.[0]?.id);
/// const nameRegex = alicloud.mse.getGateways({
///     nameRegex: "^my-Gateway",
/// });
/// export const mseGatewayId2 = nameRegex.then(nameRegex => nameRegex.gateways?.[0]?.id);
/// const status = alicloud.mse.getGateways({
///     status: "2",
/// });
/// export const mseGatewayId3 = status.then(status => status.gateways?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.mse.get_gateways(ids=["example_id"])
/// pulumi.export("mseGatewayId1", ids.gateways[0].id)
/// name_regex = alicloud.mse.get_gateways(name_regex="^my-Gateway")
/// pulumi.export("mseGatewayId2", name_regex.gateways[0].id)
/// status = alicloud.mse.get_gateways(status="2")
/// pulumi.export("mseGatewayId3", status.gateways[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Mse.GetGateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Mse.GetGateways.Invoke(new()
///     {
///         NameRegex = "^my-Gateway",
///     });
///
///     var status = AliCloud.Mse.GetGateways.Invoke(new()
///     {
///         Status = "2",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mseGatewayId1"] = ids.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///         ["mseGatewayId2"] = nameRegex.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///         ["mseGatewayId3"] = status.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := mse.GetGateways(ctx, &mse.GetGatewaysArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mseGatewayId1", ids.Gateways[0].Id)
/// 		nameRegex, err := mse.GetGateways(ctx, &mse.GetGatewaysArgs{
/// 			NameRegex: pulumi.StringRef("^my-Gateway"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mseGatewayId2", nameRegex.Gateways[0].Id)
/// 		status, err := mse.GetGateways(ctx, &mse.GetGatewaysArgs{
/// 			Status: pulumi.StringRef("2"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mseGatewayId3", status.Gateways[0].Id)
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
/// import com.pulumi.alicloud.mse.MseFunctions;
/// import com.pulumi.alicloud.mse.inputs.GetGatewaysArgs;
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
///         final var ids = MseFunctions.getGateways(GetGatewaysArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("mseGatewayId1", ids.gateways()[0].id());
///         final var nameRegex = MseFunctions.getGateways(GetGatewaysArgs.builder()
///             .nameRegex("^my-Gateway")
///             .build());
///
///         ctx.export("mseGatewayId2", nameRegex.gateways()[0].id());
///         final var status = MseFunctions.getGateways(GetGatewaysArgs.builder()
///             .status("2")
///             .build());
///
///         ctx.export("mseGatewayId3", status.gateways()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:mse:getGateways
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:mse:getGateways
///       arguments:
///         nameRegex: ^my-Gateway
///   status:
///     fn::invoke:
///       function: alicloud:mse:getGateways
///       arguments:
///         status: '2'
/// outputs:
///   mseGatewayId1: ${ids.gateways[0].id}
///   mseGatewayId2: ${nameRegex.gateways[0].id}
///   mseGatewayId3: ${status.gateways[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mse_get_gateways_get_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaysResult> getGateways(
  GetGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mse/getGateways:getGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaysResult.fromMap(result);
}

/// This data source provides the Mse Nacos Configs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.233.0.
///
/// ## Example Usage
///
/// Basic Usage
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
///     connectionType: "slb",
///     netType: "privatenet",
///     vswitchId: exampleSwitch.id,
///     clusterSpecification: "MSE_SC_1_2_60_c",
///     clusterVersion: "NACOS_2_0_0",
///     instanceCount: 3,
///     pubNetworkFlow: "1",
///     clusterAliasName: "example",
///     mseVersion: "mse_pro",
///     clusterType: "Nacos-Ans",
/// });
/// const exampleEngineNamespace = new alicloud.mse.EngineNamespace("example", {
///     instanceId: exampleCluster.id,
///     namespaceShowName: "example",
///     namespaceId: "example",
/// });
/// const exampleNacosConfig = new alicloud.mse.NacosConfig("example", {
///     instanceId: exampleCluster.id,
///     dataId: "example",
///     group: "example",
///     namespaceId: exampleEngineNamespace.namespaceId,
///     content: "example",
///     type: "text",
///     tags: "example",
///     appName: "example",
///     desc: "example",
/// });
/// const exampleGetNacosConfigs = pulumi.all([exampleCluster.id, exampleEngineNamespace.namespaceId]).apply(([id, namespaceId]) => alicloud.mse.getNacosConfigsOutput({
///     instanceId: id,
///     enableDetails: true,
///     namespaceId: namespaceId,
/// }));
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
///     connection_type="slb",
///     net_type="privatenet",
///     vswitch_id=example_switch.id,
///     cluster_specification="MSE_SC_1_2_60_c",
///     cluster_version="NACOS_2_0_0",
///     instance_count=3,
///     pub_network_flow="1",
///     cluster_alias_name="example",
///     mse_version="mse_pro",
///     cluster_type="Nacos-Ans")
/// example_engine_namespace = alicloud.mse.EngineNamespace("example",
///     instance_id=example_cluster.id,
///     namespace_show_name="example",
///     namespace_id="example")
/// example_nacos_config = alicloud.mse.NacosConfig("example",
///     instance_id=example_cluster.id,
///     data_id="example",
///     group="example",
///     namespace_id=example_engine_namespace.namespace_id,
///     content="example",
///     type="text",
///     tags="example",
///     app_name="example",
///     desc="example")
/// example_get_nacos_configs = pulumi.Output.all(
///     id=example_cluster.id,
///     namespace_id=example_engine_namespace.namespace_id
/// ).apply(lambda resolved_outputs: alicloud.mse.get_nacos_configs_output(instance_id=resolved_outputs['id'],
///     enable_details=True,
///     namespace_id=resolved_outputs['namespace_id']))
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
///         ConnectionType = "slb",
///         NetType = "privatenet",
///         VswitchId = exampleSwitch.Id,
///         ClusterSpecification = "MSE_SC_1_2_60_c",
///         ClusterVersion = "NACOS_2_0_0",
///         InstanceCount = 3,
///         PubNetworkFlow = "1",
///         ClusterAliasName = "example",
///         MseVersion = "mse_pro",
///         ClusterType = "Nacos-Ans",
///     });
///
///     var exampleEngineNamespace = new AliCloud.Mse.EngineNamespace("example", new()
///     {
///         InstanceId = exampleCluster.Id,
///         NamespaceShowName = "example",
///         NamespaceId = "example",
///     });
///
///     var exampleNacosConfig = new AliCloud.Mse.NacosConfig("example", new()
///     {
///         InstanceId = exampleCluster.Id,
///         DataId = "example",
///         Group = "example",
///         NamespaceId = exampleEngineNamespace.NamespaceId,
///         Content = "example",
///         Type = "text",
///         Tags = "example",
///         AppName = "example",
///         Desc = "example",
///     });
///
///     var exampleGetNacosConfigs = AliCloud.Mse.GetNacosConfigs.Invoke(new()
///     {
///         InstanceId = exampleCluster.Id,
///         EnableDetails = true,
///         NamespaceId = exampleEngineNamespace.NamespaceId,
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
/// 			ConnectionType:       pulumi.String("slb"),
/// 			NetType:              pulumi.String("privatenet"),
/// 			VswitchId:            exampleSwitch.ID(),
/// 			ClusterSpecification: pulumi.String("MSE_SC_1_2_60_c"),
/// 			ClusterVersion:       pulumi.String("NACOS_2_0_0"),
/// 			InstanceCount:        pulumi.Int(3),
/// 			PubNetworkFlow:       pulumi.String("1"),
/// 			ClusterAliasName:     pulumi.String("example"),
/// 			MseVersion:           pulumi.String("mse_pro"),
/// 			ClusterType:          pulumi.String("Nacos-Ans"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEngineNamespace, err := mse.NewEngineNamespace(ctx, "example", &mse.EngineNamespaceArgs{
/// 			InstanceId:        exampleCluster.ID(),
/// 			NamespaceShowName: pulumi.String("example"),
/// 			NamespaceId:       pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = mse.NewNacosConfig(ctx, "example", &mse.NacosConfigArgs{
/// 			InstanceId:  exampleCluster.ID(),
/// 			DataId:      pulumi.String("example"),
/// 			Group:       pulumi.String("example"),
/// 			NamespaceId: exampleEngineNamespace.NamespaceId,
/// 			Content:     pulumi.String("example"),
/// 			Type:        pulumi.String("text"),
/// 			Tags:        pulumi.String("example"),
/// 			AppName:     pulumi.String("example"),
/// 			Desc:        pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = pulumi.All(exampleCluster.ID(), exampleEngineNamespace.NamespaceId).ApplyT(func(_args []interface{}) (mse.GetNacosConfigsResult, error) {
/// 			id := _args[0].(string)
/// 			namespaceId := _args[1].(string)
/// 			return mse.GetNacosConfigsResult(interface{}(mse.GetNacosConfigs(ctx, &mse.GetNacosConfigsArgs{
/// 				InstanceId:    id,
/// 				EnableDetails: pulumi.BoolRef(pulumi.BoolRef(true)),
/// 				NamespaceId:   pulumi.StringRef(pulumi.StringRef(namespaceId)),
/// 			}, nil))), nil
/// 		}).(mse.GetNacosConfigsResultOutput)
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
/// import com.pulumi.alicloud.mse.NacosConfig;
/// import com.pulumi.alicloud.mse.NacosConfigArgs;
/// import com.pulumi.alicloud.mse.MseFunctions;
/// import com.pulumi.alicloud.mse.inputs.GetNacosConfigsArgs;
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
///             .connectionType("slb")
///             .netType("privatenet")
///             .vswitchId(exampleSwitch.id())
///             .clusterSpecification("MSE_SC_1_2_60_c")
///             .clusterVersion("NACOS_2_0_0")
///             .instanceCount(3)
///             .pubNetworkFlow("1")
///             .clusterAliasName("example")
///             .mseVersion("mse_pro")
///             .clusterType("Nacos-Ans")
///             .build());
///
///         var exampleEngineNamespace = new EngineNamespace("exampleEngineNamespace", EngineNamespaceArgs.builder()
///             .instanceId(exampleCluster.id())
///             .namespaceShowName("example")
///             .namespaceId("example")
///             .build());
///
///         var exampleNacosConfig = new NacosConfig("exampleNacosConfig", NacosConfigArgs.builder()
///             .instanceId(exampleCluster.id())
///             .dataId("example")
///             .group("example")
///             .namespaceId(exampleEngineNamespace.namespaceId())
///             .content("example")
///             .type("text")
///             .tags("example")
///             .appName("example")
///             .desc("example")
///             .build());
///
///         final var exampleGetNacosConfigs = Output.tuple(exampleCluster.id(), exampleEngineNamespace.namespaceId()).applyValue(values -> {
///             var id = values.t1;
///             var namespaceId = values.t2;
///             return MseFunctions.getNacosConfigs(GetNacosConfigsArgs.builder()
///                 .instanceId(id)
///                 .enableDetails(true)
///                 .namespaceId(namespaceId)
///                 .build());
///         });
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
///       connectionType: slb
///       netType: privatenet
///       vswitchId: ${exampleSwitch.id}
///       clusterSpecification: MSE_SC_1_2_60_c
///       clusterVersion: NACOS_2_0_0
///       instanceCount: '3'
///       pubNetworkFlow: '1'
///       clusterAliasName: example
///       mseVersion: mse_pro
///       clusterType: Nacos-Ans
///   exampleEngineNamespace:
///     type: alicloud:mse:EngineNamespace
///     name: example
///     properties:
///       instanceId: ${exampleCluster.id}
///       namespaceShowName: example
///       namespaceId: example
///   exampleNacosConfig:
///     type: alicloud:mse:NacosConfig
///     name: example
///     properties:
///       instanceId: ${exampleCluster.id}
///       dataId: example
///       group: example
///       namespaceId: ${exampleEngineNamespace.namespaceId}
///       content: example
///       type: text
///       tags: example
///       appName: example
///       desc: example
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   exampleGetNacosConfigs:
///     fn::invoke:
///       function: alicloud:mse:getNacosConfigs
///       arguments:
///         instanceId: ${exampleCluster.id}
///         enableDetails: 'true'
///         namespaceId: ${exampleEngineNamespace.namespaceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mse_get_nacos_configs_get_nacos_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNacosConfigsResult> getNacosConfigs(
  GetNacosConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mse/getNacosConfigs:getNacosConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNacosConfigsResult.fromMap(result);
}

/// This data source provides the Mse Znodes of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.162.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.mse.getZnodes({
///     clusterId: "example_value",
///     path: "/",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const mseZnodeId1 = ids.then(ids => ids.znodes?.[0]?.id);
/// const nameRegex = alicloud.mse.getZnodes({
///     path: "/",
///     clusterId: "example_value",
///     nameRegex: "^my-Znode",
/// });
/// export const mseZnodeId2 = nameRegex.then(nameRegex => nameRegex.znodes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.mse.get_znodes(cluster_id="example_value",
///     path="/",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("mseZnodeId1", ids.znodes[0].id)
/// name_regex = alicloud.mse.get_znodes(path="/",
///     cluster_id="example_value",
///     name_regex="^my-Znode")
/// pulumi.export("mseZnodeId2", name_regex.znodes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Mse.GetZnodes.Invoke(new()
///     {
///         ClusterId = "example_value",
///         Path = "/",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Mse.GetZnodes.Invoke(new()
///     {
///         Path = "/",
///         ClusterId = "example_value",
///         NameRegex = "^my-Znode",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mseZnodeId1"] = ids.Apply(getZnodesResult => getZnodesResult.Znodes[0]?.Id),
///         ["mseZnodeId2"] = nameRegex.Apply(getZnodesResult => getZnodesResult.Znodes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := mse.GetZnodes(ctx, &mse.GetZnodesArgs{
/// 			ClusterId: "example_value",
/// 			Path:      "/",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mseZnodeId1", ids.Znodes[0].Id)
/// 		nameRegex, err := mse.GetZnodes(ctx, &mse.GetZnodesArgs{
/// 			Path:      "/",
/// 			ClusterId: "example_value",
/// 			NameRegex: pulumi.StringRef("^my-Znode"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mseZnodeId2", nameRegex.Znodes[0].Id)
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
/// import com.pulumi.alicloud.mse.MseFunctions;
/// import com.pulumi.alicloud.mse.inputs.GetZnodesArgs;
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
///         final var ids = MseFunctions.getZnodes(GetZnodesArgs.builder()
///             .clusterId("example_value")
///             .path("/")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("mseZnodeId1", ids.znodes()[0].id());
///         final var nameRegex = MseFunctions.getZnodes(GetZnodesArgs.builder()
///             .path("/")
///             .clusterId("example_value")
///             .nameRegex("^my-Znode")
///             .build());
///
///         ctx.export("mseZnodeId2", nameRegex.znodes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:mse:getZnodes
///       arguments:
///         clusterId: example_value
///         path: /
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:mse:getZnodes
///       arguments:
///         path: /
///         clusterId: example_value
///         nameRegex: ^my-Znode
/// outputs:
///   mseZnodeId1: ${ids.znodes[0].id}
///   mseZnodeId2: ${nameRegex.znodes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mse_get_znodes_get_znodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZnodesResult> getZnodes(
  GetZnodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mse/getZnodes:getZnodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZnodesResult.fromMap(result);
}
