import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_group_args.dart';

/// Provides an EDAS deploy group resource, see [What is EDAS Deploy Group](https://www.alibabacloud.com/help/en/edas/developer-reference/api-edas-2017-08-01-insertdeploygroup).
///
/// > **NOTE:** Available since v1.82.0.
///
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultCluster = new alicloud.edas.Cluster("default", {
///     clusterName: `${name}-${defaultInteger.result}`,
///     clusterType: 2,
///     networkMode: 2,
///     logicalRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     vpcId: defaultNetwork.id,
/// });
/// const defaultApplication = new alicloud.edas.Application("default", {
///     applicationName: `${name}-${defaultInteger.result}`,
///     clusterId: defaultCluster.id,
///     packageType: "JAR",
/// });
/// const defaultDeployGroup = new alicloud.edas.DeployGroup("default", {
///     appId: defaultApplication.id,
///     groupName: `${name}-${defaultInteger.result}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.get_regions(current=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="10.4.0.0/16")
/// default_cluster = alicloud.edas.Cluster("default",
///     cluster_name=f"{name}-{default_integer['result']}",
///     cluster_type=2,
///     network_mode=2,
///     logical_region_id=default.regions[0].id,
///     vpc_id=default_network.id)
/// default_application = alicloud.edas.Application("default",
///     application_name=f"{name}-{default_integer['result']}",
///     cluster_id=default_cluster.id,
///     package_type="JAR")
/// default_deploy_group = alicloud.edas.DeployGroup("default",
///     app_id=default_application.id,
///     group_name=f"{name}-{default_integer['result']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultCluster = new AliCloud.Edas.Cluster("default", new()
///     {
///         ClusterName = $"{name}-{defaultInteger.Result}",
///         ClusterType = 2,
///         NetworkMode = 2,
///         LogicalRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultApplication = new AliCloud.Edas.Application("default", new()
///     {
///         ApplicationName = $"{name}-{defaultInteger.Result}",
///         ClusterId = defaultCluster.Id,
///         PackageType = "JAR",
///     });
///
///     var defaultDeployGroup = new AliCloud.Edas.DeployGroup("default", new()
///     {
///         AppId = defaultApplication.Id,
///         GroupName = $"{name}-{defaultInteger.Result}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/edas"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCluster, err := edas.NewCluster(ctx, "default", &edas.ClusterArgs{
/// 			ClusterName:     pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			ClusterType:     pulumi.Int(2),
/// 			NetworkMode:     pulumi.Int(2),
/// 			LogicalRegionId: pulumi.String(_default.Regions[0].Id),
/// 			VpcId:           defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplication, err := edas.NewApplication(ctx, "default", &edas.ApplicationArgs{
/// 			ApplicationName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			ClusterId:       defaultCluster.ID(),
/// 			PackageType:     pulumi.String("JAR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edas.NewDeployGroup(ctx, "default", &edas.DeployGroupArgs{
/// 			AppId:     defaultApplication.ID(),
/// 			GroupName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.edas.Cluster;
/// import com.pulumi.alicloud.edas.ClusterArgs;
/// import com.pulumi.alicloud.edas.Application;
/// import com.pulumi.alicloud.edas.ApplicationArgs;
/// import com.pulumi.alicloud.edas.DeployGroup;
/// import com.pulumi.alicloud.edas.DeployGroupArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterName(String.format("%s-%s", name,defaultInteger.result()))
///             .clusterType(2)
///             .networkMode(2)
///             .logicalRegionId(default_.regions()[0].id())
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultApplication = new Application("defaultApplication", ApplicationArgs.builder()
///             .applicationName(String.format("%s-%s", name,defaultInteger.result()))
///             .clusterId(defaultCluster.id())
///             .packageType("JAR")
///             .build());
///
///         var defaultDeployGroup = new DeployGroup("defaultDeployGroup", DeployGroupArgs.builder()
///             .appId(defaultApplication.id())
///             .groupName(String.format("%s-%s", name,defaultInteger.result()))
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}-${defaultInteger.result}
///       cidrBlock: 10.4.0.0/16
///   defaultCluster:
///     type: alicloud:edas:Cluster
///     name: default
///     properties:
///       clusterName: ${name}-${defaultInteger.result}
///       clusterType: '2'
///       networkMode: '2'
///       logicalRegionId: ${default.regions[0].id}
///       vpcId: ${defaultNetwork.id}
///   defaultApplication:
///     type: alicloud:edas:Application
///     name: default
///     properties:
///       applicationName: ${name}-${defaultInteger.result}
///       clusterId: ${defaultCluster.id}
///       packageType: JAR
///   defaultDeployGroup:
///     type: alicloud:edas:DeployGroup
///     name: default
///     properties:
///       appId: ${defaultApplication.id}
///       groupName: ${name}-${defaultInteger.result}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EDAS deploy group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:edas/deployGroup:DeployGroup group app_id:group_name:group_id
/// ```
class DeployGroup extends pulumi.CustomResource {
  /// The ID of the application that you want to deploy.
  late final pulumi.Output<String> appId;
  /// The name of the instance group that you want to create.
  late final pulumi.Output<String> groupName;
  /// The type of the instance group that you want to create. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  late final pulumi.Output<int> groupType;

  /// Creates a new [DeployGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeployGroup]. {@macro pulumi_edas_deploy_group_deploy_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeployGroup(
    String name, {
    DeployGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:edas/deployGroup:DeployGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.groupName = registerOutput<String>('groupName');
    this.groupType = registerOutput<int>('groupType');
  }
}
