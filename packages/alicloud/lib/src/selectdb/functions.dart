import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_args.dart';
import 'get_db_clusters_result.dart';
import 'get_db_instances_args.dart';
import 'get_db_instances_result.dart';

/// This data source provides the SelectDB DBCluster of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.229.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultDbInstance = new alicloud.selectdb.DbInstance("default", {
///     dbInstanceClass: "selectdb.xlarge",
///     dbInstanceDescription: name,
///     cacheSize: 200,
///     paymentType: "PayAsYouGo",
///     engineMinorVersion: "3.0.12",
///     vpcId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.vpcId),
///     zoneId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.id),
/// });
/// const defaultDbCluster = new alicloud.selectdb.DbCluster("default", {
///     dbInstanceId: defaultDbInstance.id,
///     dbClusterDescription: name,
///     dbClusterClass: "selectdb.2xlarge",
///     cacheSize: 400,
///     paymentType: "PayAsYouGo",
/// });
/// const defaultGetDbClusters = alicloud.selectdb.getDbClustersOutput({
///     ids: [defaultDbCluster.id],
/// });
/// export const dbCluster = defaultGetDbClusters.apply(defaultGetDbClusters => defaultGetDbClusters.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_db_instance = alicloud.selectdb.DbInstance("default",
///     db_instance_class="selectdb.xlarge",
///     db_instance_description=name,
///     cache_size=200,
///     payment_type="PayAsYouGo",
///     engine_minor_version="3.0.12",
///     vpc_id=default_get_switches.vswitches[0].vpc_id,
///     zone_id=default_get_switches.vswitches[0].zone_id,
///     vswitch_id=default_get_switches.vswitches[0].id)
/// default_db_cluster = alicloud.selectdb.DbCluster("default",
///     db_instance_id=default_db_instance.id,
///     db_cluster_description=name,
///     db_cluster_class="selectdb.2xlarge",
///     cache_size=400,
///     payment_type="PayAsYouGo")
/// default_get_db_clusters = alicloud.selectdb.get_db_clusters_output(ids=[default_db_cluster.id])
/// pulumi.export("dbCluster", default_get_db_clusters.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultDbInstance = new AliCloud.SelectDB.DbInstance("default", new()
///     {
///         DbInstanceClass = "selectdb.xlarge",
///         DbInstanceDescription = name,
///         CacheSize = 200,
///         PaymentType = "PayAsYouGo",
///         EngineMinorVersion = "3.0.12",
///         VpcId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.VpcId),
///         ZoneId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///     });
///
///     var defaultDbCluster = new AliCloud.SelectDB.DbCluster("default", new()
///     {
///         DbInstanceId = defaultDbInstance.Id,
///         DbClusterDescription = name,
///         DbClusterClass = "selectdb.2xlarge",
///         CacheSize = 400,
///         PaymentType = "PayAsYouGo",
///     });
///
///     var defaultGetDbClusters = AliCloud.SelectDB.GetDbClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDbCluster.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbCluster"] = defaultGetDbClusters.Apply(getDbClustersResult => getDbClustersResult.Ids[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/selectdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbInstance, err := selectdb.NewDbInstance(ctx, "default", &selectdb.DbInstanceArgs{
/// 			DbInstanceClass:       pulumi.String("selectdb.xlarge"),
/// 			DbInstanceDescription: pulumi.String(name),
/// 			CacheSize:             pulumi.Int(200),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			EngineMinorVersion:    pulumi.String("3.0.12"),
/// 			VpcId:                 pulumi.String(defaultGetSwitches.Vswitches[0].VpcId),
/// 			ZoneId:                pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 			VswitchId:             pulumi.String(defaultGetSwitches.Vswitches[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbCluster, err := selectdb.NewDbCluster(ctx, "default", &selectdb.DbClusterArgs{
/// 			DbInstanceId:         defaultDbInstance.ID(),
/// 			DbClusterDescription: pulumi.String(name),
/// 			DbClusterClass:       pulumi.String("selectdb.2xlarge"),
/// 			CacheSize:            pulumi.Int(400),
/// 			PaymentType:          pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetDbClusters := selectdb.GetDbClustersOutput(ctx, selectdb.GetDbClustersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDbCluster.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("dbCluster", defaultGetDbClusters.ApplyT(func(defaultGetDbClusters selectdb.GetDbClustersResult) (*string, error) {
/// 			return &defaultGetDbClusters.Ids[0], nil
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.selectdb.DbInstance;
/// import com.pulumi.alicloud.selectdb.DbInstanceArgs;
/// import com.pulumi.alicloud.selectdb.DbCluster;
/// import com.pulumi.alicloud.selectdb.DbClusterArgs;
/// import com.pulumi.alicloud.selectdb.SelectdbFunctions;
/// import com.pulumi.alicloud.selectdb.inputs.GetDbClustersArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var name = config.get("name").orElse("terraform_example");
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultDbInstance = new DbInstance("defaultDbInstance", DbInstanceArgs.builder()
///             .dbInstanceClass("selectdb.xlarge")
///             .dbInstanceDescription(name)
///             .cacheSize(200)
///             .paymentType("PayAsYouGo")
///             .engineMinorVersion("3.0.12")
///             .vpcId(defaultGetSwitches.vswitches()[0].vpcId())
///             .zoneId(defaultGetSwitches.vswitches()[0].zoneId())
///             .vswitchId(defaultGetSwitches.vswitches()[0].id())
///             .build());
///
///         var defaultDbCluster = new DbCluster("defaultDbCluster", DbClusterArgs.builder()
///             .dbInstanceId(defaultDbInstance.id())
///             .dbClusterDescription(name)
///             .dbClusterClass("selectdb.2xlarge")
///             .cacheSize(400)
///             .paymentType("PayAsYouGo")
///             .build());
///
///         final var defaultGetDbClusters = SelectdbFunctions.getDbClusters(GetDbClustersArgs.builder()
///             .ids(defaultDbCluster.id())
///             .build());
///
///         ctx.export("dbCluster", defaultGetDbClusters.applyValue(_defaultGetDbClusters -> _defaultGetDbClusters.ids()[0]));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultDbInstance:
///     type: alicloud:selectdb:DbInstance
///     name: default
///     properties:
///       dbInstanceClass: selectdb.xlarge
///       dbInstanceDescription: ${name}
///       cacheSize: 200
///       paymentType: PayAsYouGo
///       engineMinorVersion: 3.0.12
///       vpcId: ${defaultGetSwitches.vswitches[0].vpcId}
///       zoneId: ${defaultGetSwitches.vswitches[0].zoneId}
///       vswitchId: ${defaultGetSwitches.vswitches[0].id}
///   defaultDbCluster:
///     type: alicloud:selectdb:DbCluster
///     name: default
///     properties:
///       dbInstanceId: ${defaultDbInstance.id}
///       dbClusterDescription: ${name}
///       dbClusterClass: selectdb.2xlarge
///       cacheSize: 400
///       paymentType: PayAsYouGo
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
///   defaultGetDbClusters:
///     fn::invoke:
///       function: alicloud:selectdb:getDbClusters
///       arguments:
///         ids:
///           - ${defaultDbCluster.id}
/// outputs:
///   dbCluster: ${defaultGetDbClusters.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_selectdb_get_db_clusters_get_db_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbClustersResult> getDbClusters(
  GetDbClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:selectdb/getDbClusters:getDbClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbClustersResult.fromMap(result);
}

/// This data source provides the SelectDB DBInstance of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.229.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultDbInstance = new alicloud.selectdb.DbInstance("default", {
///     dbInstanceClass: "selectdb.xlarge",
///     dbInstanceDescription: name,
///     cacheSize: 200,
///     paymentType: "PayAsYouGo",
///     engineMinorVersion: "3.0.12",
///     vpcId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.vpcId),
///     zoneId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.id),
/// });
/// const defaultGetDbInstances = alicloud.selectdb.getDbInstancesOutput({
///     ids: [defaultDbInstance.id],
/// });
/// export const dbInstance = defaultGetDbInstances.apply(defaultGetDbInstances => defaultGetDbInstances.ids?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_db_instance = alicloud.selectdb.DbInstance("default",
///     db_instance_class="selectdb.xlarge",
///     db_instance_description=name,
///     cache_size=200,
///     payment_type="PayAsYouGo",
///     engine_minor_version="3.0.12",
///     vpc_id=default_get_switches.vswitches[0].vpc_id,
///     zone_id=default_get_switches.vswitches[0].zone_id,
///     vswitch_id=default_get_switches.vswitches[0].id)
/// default_get_db_instances = alicloud.selectdb.get_db_instances_output(ids=[default_db_instance.id])
/// pulumi.export("dbInstance", default_get_db_instances.ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultDbInstance = new AliCloud.SelectDB.DbInstance("default", new()
///     {
///         DbInstanceClass = "selectdb.xlarge",
///         DbInstanceDescription = name,
///         CacheSize = 200,
///         PaymentType = "PayAsYouGo",
///         EngineMinorVersion = "3.0.12",
///         VpcId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.VpcId),
///         ZoneId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///     });
///
///     var defaultGetDbInstances = AliCloud.SelectDB.GetDbInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDbInstance.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbInstance"] = defaultGetDbInstances.Apply(getDbInstancesResult => getDbInstancesResult.Ids[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/selectdb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDbInstance, err := selectdb.NewDbInstance(ctx, "default", &selectdb.DbInstanceArgs{
/// 			DbInstanceClass:       pulumi.String("selectdb.xlarge"),
/// 			DbInstanceDescription: pulumi.String(name),
/// 			CacheSize:             pulumi.Int(200),
/// 			PaymentType:           pulumi.String("PayAsYouGo"),
/// 			EngineMinorVersion:    pulumi.String("3.0.12"),
/// 			VpcId:                 pulumi.String(defaultGetSwitches.Vswitches[0].VpcId),
/// 			ZoneId:                pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 			VswitchId:             pulumi.String(defaultGetSwitches.Vswitches[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetDbInstances := selectdb.GetDbInstancesOutput(ctx, selectdb.GetDbInstancesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDbInstance.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("dbInstance", defaultGetDbInstances.ApplyT(func(defaultGetDbInstances selectdb.GetDbInstancesResult) (*string, error) {
/// 			return &defaultGetDbInstances.Ids[0], nil
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.selectdb.DbInstance;
/// import com.pulumi.alicloud.selectdb.DbInstanceArgs;
/// import com.pulumi.alicloud.selectdb.SelectdbFunctions;
/// import com.pulumi.alicloud.selectdb.inputs.GetDbInstancesArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var name = config.get("name").orElse("terraform_example");
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultDbInstance = new DbInstance("defaultDbInstance", DbInstanceArgs.builder()
///             .dbInstanceClass("selectdb.xlarge")
///             .dbInstanceDescription(name)
///             .cacheSize(200)
///             .paymentType("PayAsYouGo")
///             .engineMinorVersion("3.0.12")
///             .vpcId(defaultGetSwitches.vswitches()[0].vpcId())
///             .zoneId(defaultGetSwitches.vswitches()[0].zoneId())
///             .vswitchId(defaultGetSwitches.vswitches()[0].id())
///             .build());
///
///         final var defaultGetDbInstances = SelectdbFunctions.getDbInstances(GetDbInstancesArgs.builder()
///             .ids(defaultDbInstance.id())
///             .build());
///
///         ctx.export("dbInstance", defaultGetDbInstances.applyValue(_defaultGetDbInstances -> _defaultGetDbInstances.ids()[0]));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultDbInstance:
///     type: alicloud:selectdb:DbInstance
///     name: default
///     properties:
///       dbInstanceClass: selectdb.xlarge
///       dbInstanceDescription: ${name}
///       cacheSize: 200
///       paymentType: PayAsYouGo
///       engineMinorVersion: 3.0.12
///       vpcId: ${defaultGetSwitches.vswitches[0].vpcId}
///       zoneId: ${defaultGetSwitches.vswitches[0].zoneId}
///       vswitchId: ${defaultGetSwitches.vswitches[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
///   defaultGetDbInstances:
///     fn::invoke:
///       function: alicloud:selectdb:getDbInstances
///       arguments:
///         ids:
///           - ${defaultDbInstance.id}
/// outputs:
///   dbInstance: ${defaultGetDbInstances.ids[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_selectdb_get_db_instances_get_db_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDbInstancesResult> getDbInstances(
  GetDbInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:selectdb/getDbInstances:getDbInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDbInstancesResult.fromMap(result);
}
