import 'package:pulumi/pulumi.dart' as pulumi;
import 'nacos_config_args.dart';
import 'nacos_config_state.dart';

/// Provides a Microservice Engine (MSE) Nacos Config resource.
///
/// For information about Microservice Engine (MSE) Nacos Config and how to use it, see [What is Nacos configuration](https://www.alibabacloud.com/help/en/mse/developer-reference/api-mse-2019-05-31-createnacosconfig)
///
/// &gt; **NOTE:** Available since v1.233.0.
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Microservice Engine (MSE) Nacos Config can be imported using the id, e.g.
///
/// **Note**: If instance_id, namespace_id, data_id, and group contain ":", please replace it with "\\\\:", available since v1.243.0
///
/// ```sh
/// $ pulumi import alicloud:mse/nacosConfig:NacosConfig example <instance_id>:<namespace_id>:<data_id>:<group>
/// ```
class NacosConfig extends pulumi.CustomResource {
  /// The language type of the returned information. Valid values: `zh`, `en`.
  late final pulumi.Output<String?> acceptLanguage;
  /// The name of the application.
  late final pulumi.Output<String?> appName;
  /// The list of IP addresses where the beta release of the configuration is performed.
  late final pulumi.Output<String> betaIps;
  /// The content of the configuration.
  late final pulumi.Output<String> content;
  /// The ID of the data.
  late final pulumi.Output<String> dataId;
  /// The description of the configuration.
  late final pulumi.Output<String?> desc;
  /// The encryption key.
  late final pulumi.Output<String> encryptedDataKey;
  /// The ID of the group.
  late final pulumi.Output<String> group;
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The id of Namespace. If you want to create a config under the `public` namespace, this parameter can be set to an empty string  *`""`* or just not set this parameter.
  late final pulumi.Output<String?> namespaceId;
  /// The tags of the configuration.
  late final pulumi.Output<String?> tags;
  /// The format of the configuration. Supported formats include TEXT, JSON, and XML.
  late final pulumi.Output<String> type;

  /// Creates a new [NacosConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NacosConfig]. {@macro pulumi_mse_nacos_config_nacos_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NacosConfig(
    String name, {
    NacosConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mse/nacosConfig:NacosConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    appName = registerOutput<String?>('appName');
    betaIps = registerOutput<String>('betaIps');
    content = registerOutput<String>('content');
    dataId = registerOutput<String>('dataId');
    desc = registerOutput<String?>('desc');
    encryptedDataKey = registerOutput<String>('encryptedDataKey');
    group = registerOutput<String>('group');
    instanceId = registerOutput<String>('instanceId');
    namespaceId = registerOutput<String?>('namespaceId');
    tags = registerOutput<String?>('tags');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [NacosConfig] resource's state with the given [name] and [id].
  static NacosConfig get(
    String name,
    pulumi.Input<String> id, {
    NacosConfigState? state,
  }) {
    return NacosConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NacosConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mse/nacosConfig:NacosConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    appName = registerOutput<String?>('appName');
    betaIps = registerOutput<String>('betaIps');
    content = registerOutput<String>('content');
    dataId = registerOutput<String>('dataId');
    desc = registerOutput<String?>('desc');
    encryptedDataKey = registerOutput<String>('encryptedDataKey');
    group = registerOutput<String>('group');
    instanceId = registerOutput<String>('instanceId');
    namespaceId = registerOutput<String?>('namespaceId');
    tags = registerOutput<String?>('tags');
    type = registerOutput<String>('type');
  }
}
