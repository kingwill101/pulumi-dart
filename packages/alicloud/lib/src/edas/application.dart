import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';

/// Creates an EDAS ecs application on EDAS, see [What is EDAS Application](https://www.alibabacloud.com/help/en/edas/developer-reference/api-edas-2017-08-01-insertapplication). The application will be deployed when `group_id` and `war_url` are given.
///
/// > **NOTE:** Available since v1.82.0.
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
/// 		_, err = edas.NewApplication(ctx, "default", &edas.ApplicationArgs{
/// 			ApplicationName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			ClusterId:       defaultCluster.ID(),
/// 			PackageType:     pulumi.String("JAR"),
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
/// EDAS application can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:edas/application:Application app app_Id
/// ```
class Application extends pulumi.CustomResource {
  /// Name of your EDAS application. Only letters '-' '_' and numbers are allowed. The length cannot exceed 36 characters.
  late final pulumi.Output<String> applicationName;
  /// The package ID of Enterprise Distributed Application Service (EDAS) Container, which can be retrieved by calling container version list interface ListBuildPack or the "Pack ID" column in container version list. When creating High-speed Service Framework (HSF) application, this parameter is required.
  late final pulumi.Output<int?> buildPackId;
  /// The ID of the cluster that you want to create the application. The default cluster will be used if you do not specify this parameter.
  late final pulumi.Output<String> clusterId;
  /// The description of the application that you want to create.
  late final pulumi.Output<String?> descriotion;
  /// The ID of the Elastic Compute Unit (ECU) where you want to deploy the application. Type: List.
  late final pulumi.Output<List<String>?> ecuInfos;
  /// The ID of the instance group where the application is going to be deployed. Set this parameter to all if you want to deploy the application to all groups.
  late final pulumi.Output<String?> groupId;
  /// The URL for health checking of the application.
  late final pulumi.Output<String?> healthCheckUrl;
  /// The ID of the namespace where you want to create the application. You can call the ListUserDefineRegion operation to query the namespace ID.
  late final pulumi.Output<String?> logicalRegionId;
  /// The type of the package for the deployment of the application that you want to create. The valid values are: WAR and JAR. We strongly recommend you to set this parameter when creating the application.
  late final pulumi.Output<String> packageType;
  /// The version of the application that you want to deploy. It must be unique for every application. The length cannot exceed 64 characters. We recommended you to use a timestamp.
  late final pulumi.Output<String?> packageVersion;
  /// The address to store the uploaded web application (WAR) package for application deployment. This parameter is required when the deployType parameter is set as url.
  late final pulumi.Output<String?> warUrl;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_edas_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:edas/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationName = registerOutput<String>('applicationName');
    this.buildPackId = registerOutput<int?>('buildPackId');
    this.clusterId = registerOutput<String>('clusterId');
    this.descriotion = registerOutput<String?>('descriotion');
    this.ecuInfos = registerOutput<List<String>?>('ecuInfos');
    this.groupId = registerOutput<String?>('groupId');
    this.healthCheckUrl = registerOutput<String?>('healthCheckUrl');
    this.logicalRegionId = registerOutput<String?>('logicalRegionId');
    this.packageType = registerOutput<String>('packageType');
    this.packageVersion = registerOutput<String?>('packageVersion');
    this.warUrl = registerOutput<String?>('warUrl');
  }
}
