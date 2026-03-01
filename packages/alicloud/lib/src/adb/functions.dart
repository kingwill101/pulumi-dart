import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_dbcluster_lake_versions_args.dart';
import 'get_dbcluster_lake_versions_result.dart';
import 'get_dbclusters_args.dart';
import 'get_dbclusters_result.dart';
import 'get_resource_groups_args.dart';
import 'get_resource_groups_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// The `alicloud.adb.getClusters` data source provides a collection of ADB clusters available in Alibaba Cloud account.
/// Filters support regular expression for the cluster description, searches by tags, and other filters which are listed below.
///
/// > **DEPRECATED:**  This resource  has been deprecated from version `1.121.0`. Please use new datasource alicloud_adb_db_clusters.
///
/// > **NOTE:** Available in v1.71.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const adbClustersDs = alicloud.adb.getClusters({
///     descriptionRegex: "am-\\w+",
///     status: "Running",
/// });
/// export const firstAdbClusterId = adbClustersDs.then(adbClustersDs => adbClustersDs.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// adb_clusters_ds = alicloud.adb.get_clusters(description_regex="am-\\w+",
///     status="Running")
/// pulumi.export("firstAdbClusterId", adb_clusters_ds.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var adbClustersDs = AliCloud.Adb.GetClusters.Invoke(new()
///     {
///         DescriptionRegex = "am-\\w+",
///         Status = "Running",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAdbClusterId"] = adbClustersDs.Apply(getClustersResult => getClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		adbClustersDs, err := adb.GetClusters(ctx, &adb.GetClustersArgs{
/// 			DescriptionRegex: pulumi.StringRef("am-\\w+"),
/// 			Status:           pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAdbClusterId", adbClustersDs.Clusters[0].Id)
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetClustersArgs;
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
///         final var adbClustersDs = AdbFunctions.getClusters(GetClustersArgs.builder()
///             .descriptionRegex("am-\\w+")
///             .status("Running")
///             .build());
///
///         ctx.export("firstAdbClusterId", adbClustersDs.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   adbClustersDs:
///     fn::invoke:
///       function: alicloud:adb:getClusters
///       arguments:
///         descriptionRegex: am-\w+
///         status: Running
/// outputs:
///   firstAdbClusterId: ${adbClustersDs.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_adb_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:adb/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// This data source provides the Adb DBCluster Lake Versions of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.190.0.
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
/// const _default = alicloud.adb.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const defaultDBClusterLakeVersion = new alicloud.adb.DBClusterLakeVersion("default", {
///     dbClusterVersion: "5.0",
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     computeResource: "16ACU",
///     storageResource: "0ACU",
///     paymentType: "PayAsYouGo",
///     enableDefaultResourceGroup: false,
/// });
/// const ids = alicloud.adb.getDBClusterLakeVersionsOutput({
///     ids: [defaultDBClusterLakeVersion.id],
/// });
/// export const adbDbClusterLakeVersionId1 = ids.apply(ids => ids.versions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.adb.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default_db_cluster_lake_version = alicloud.adb.DBClusterLakeVersion("default",
///     db_cluster_version="5.0",
///     vpc_id=default_get_networks.ids[0],
///     vswitch_id=default_get_switches.ids[0],
///     zone_id=default.ids[0],
///     compute_resource="16ACU",
///     storage_resource="0ACU",
///     payment_type="PayAsYouGo",
///     enable_default_resource_group=False)
/// ids = alicloud.adb.get_db_cluster_lake_versions_output(ids=[default_db_cluster_lake_version.id])
/// pulumi.export("adbDbClusterLakeVersionId1", ids.versions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Adb.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultDBClusterLakeVersion = new AliCloud.Adb.DBClusterLakeVersion("default", new()
///     {
///         DbClusterVersion = "5.0",
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         ComputeResource = "16ACU",
///         StorageResource = "0ACU",
///         PaymentType = "PayAsYouGo",
///         EnableDefaultResourceGroup = false,
///     });
///
///     var ids = AliCloud.Adb.GetDBClusterLakeVersions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultDBClusterLakeVersion.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["adbDbClusterLakeVersionId1"] = ids.Apply(getDBClusterLakeVersionsResult => getDBClusterLakeVersionsResult.Versions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDBClusterLakeVersion, err := adb.NewDBClusterLakeVersion(ctx, "default", &adb.DBClusterLakeVersionArgs{
/// 			DbClusterVersion:           pulumi.String("5.0"),
/// 			VpcId:                      pulumi.String(defaultGetNetworks.Ids[0]),
/// 			VswitchId:                  pulumi.String(defaultGetSwitches.Ids[0]),
/// 			ZoneId:                     pulumi.String(_default.Ids[0]),
/// 			ComputeResource:            pulumi.String("16ACU"),
/// 			StorageResource:            pulumi.String("0ACU"),
/// 			PaymentType:                pulumi.String("PayAsYouGo"),
/// 			EnableDefaultResourceGroup: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := adb.GetDBClusterLakeVersionsOutput(ctx, adb.GetDBClusterLakeVersionsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultDBClusterLakeVersion.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("adbDbClusterLakeVersionId1", ids.ApplyT(func(ids adb.GetDBClusterLakeVersionsResult) (*string, error) {
/// 			return &ids.Versions[0].Id, nil
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersion;
/// import com.pulumi.alicloud.adb.DBClusterLakeVersionArgs;
/// import com.pulumi.alicloud.adb.inputs.GetDBClusterLakeVersionsArgs;
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
///         final var default = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var defaultDBClusterLakeVersion = new DBClusterLakeVersion("defaultDBClusterLakeVersion", DBClusterLakeVersionArgs.builder()
///             .dbClusterVersion("5.0")
///             .vpcId(defaultGetNetworks.ids()[0])
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .zoneId(default_.ids()[0])
///             .computeResource("16ACU")
///             .storageResource("0ACU")
///             .paymentType("PayAsYouGo")
///             .enableDefaultResourceGroup(false)
///             .build());
///
///         final var ids = AdbFunctions.getDBClusterLakeVersions(GetDBClusterLakeVersionsArgs.builder()
///             .ids(defaultDBClusterLakeVersion.id())
///             .build());
///
///         ctx.export("adbDbClusterLakeVersionId1", ids.applyValue(_ids -> _ids.versions()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultDBClusterLakeVersion:
///     type: alicloud:adb:DBClusterLakeVersion
///     name: default
///     properties:
///       dbClusterVersion: '5.0'
///       vpcId: ${defaultGetNetworks.ids[0]}
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       zoneId: ${default.ids[0]}
///       computeResource: 16ACU
///       storageResource: 0ACU
///       paymentType: PayAsYouGo
///       enableDefaultResourceGroup: false
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getZones
///       arguments: {}
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
///         zoneId: ${default.ids[0]}
///   ids:
///     fn::invoke:
///       function: alicloud:adb:getDBClusterLakeVersions
///       arguments:
///         ids:
///           - ${defaultDBClusterLakeVersion.id}
/// outputs:
///   adbDbClusterLakeVersionId1: ${ids.versions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_adb_get_dbcluster_lake_versions_get_dbcluster_lake_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDBClusterLakeVersionsResult> getDBClusterLakeVersions(
  GetDBClusterLakeVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:adb/getDBClusterLakeVersions:getDBClusterLakeVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDBClusterLakeVersionsResult.fromMap(result);
}

/// This data source provides the Adb DBClusters of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.121.0.
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
/// const example = alicloud.adb.getDBClusters({
///     descriptionRegex: "example",
/// });
/// export const firstAdbDbClusterId = example.then(example => example.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.adb.get_db_clusters(description_regex="example")
/// pulumi.export("firstAdbDbClusterId", example.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Adb.GetDBClusters.Invoke(new()
///     {
///         DescriptionRegex = "example",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAdbDbClusterId"] = example.Apply(getDBClustersResult => getDBClustersResult.Clusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := adb.GetDBClusters(ctx, &adb.GetDBClustersArgs{
/// 			DescriptionRegex: pulumi.StringRef("example"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAdbDbClusterId", example.Clusters[0].Id)
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetDBClustersArgs;
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
///         final var example = AdbFunctions.getDBClusters(GetDBClustersArgs.builder()
///             .descriptionRegex("example")
///             .build());
///
///         ctx.export("firstAdbDbClusterId", example.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:adb:getDBClusters
///       arguments:
///         descriptionRegex: example
/// outputs:
///   firstAdbDbClusterId: ${example.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_adb_get_dbclusters_get_dbclusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDBClustersResult> getDBClusters(
  GetDBClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:adb/getDBClusters:getDBClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDBClustersResult.fromMap(result);
}

/// This data source provides Adb Resource Group available to the user.[What is Resource Group](https://www.alibabacloud.com/help/en/analyticdb-for-mysql/developer-reference/api-adb-2019-03-15-describedbresourcegroup)
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.adb.getResourceGroups({
///     dbClusterId: "am-bp1a16357gty69185",
///     groupName: "TESTOPENAPI",
/// });
/// export const alicloudAdbResourceGroupExampleId = _default.then(_default => _default.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.adb.get_resource_groups(db_cluster_id="am-bp1a16357gty69185",
///     group_name="TESTOPENAPI")
/// pulumi.export("alicloudAdbResourceGroupExampleId", default.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Adb.GetResourceGroups.Invoke(new()
///     {
///         DbClusterId = "am-bp1a16357gty69185",
///         GroupName = "TESTOPENAPI",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudAdbResourceGroupExampleId"] = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := adb.GetResourceGroups(ctx, &adb.GetResourceGroupsArgs{
/// 			DbClusterId: "am-bp1a16357gty69185",
/// 			GroupName:   pulumi.StringRef("TESTOPENAPI"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudAdbResourceGroupExampleId", _default.Groups[0].Id)
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetResourceGroupsArgs;
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
///         final var default = AdbFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .dbClusterId("am-bp1a16357gty69185")
///             .groupName("TESTOPENAPI")
///             .build());
///
///         ctx.export("alicloudAdbResourceGroupExampleId", default_.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:adb:getResourceGroups
///       arguments:
///         dbClusterId: am-bp1a16357gty69185
///         groupName: TESTOPENAPI
/// outputs:
///   alicloudAdbResourceGroupExampleId: ${default.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_adb_get_resource_groups_get_resource_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGroupsResult> getResourceGroups(
  GetResourceGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:adb/getResourceGroups:getResourceGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGroupsResult.fromMap(result);
}

/// This data source provides availability zones for ADB that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// > **NOTE:** Available in v1.73.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.adb.getZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.adb.get_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesIds = AliCloud.Adb.GetZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/adb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := adb.GetZones(ctx, &adb.GetZonesArgs{}, nil)
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
/// import com.pulumi.alicloud.adb.AdbFunctions;
/// import com.pulumi.alicloud.adb.inputs.GetZonesArgs;
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
///         // Declare the data source
///         final var zonesIds = AdbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:adb:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_adb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:adb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
