import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plans_args.dart';
import 'get_backup_plans_result.dart';
import 'get_clusters_args.dart';
import 'get_clusters_result.dart';
import 'get_data_centers_args.dart';
import 'get_data_centers_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Cassandra Backup Plans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.128.0+.
///
/// > **DEPRECATED:**  This data source has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
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
/// const example = alicloud.cassandra.getBackupPlans({
///     clusterId: "example_value",
/// });
/// export const firstCassandraBackupPlanId = example.then(example => example.plans?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cassandra.get_backup_plans(cluster_id="example_value")
/// pulumi.export("firstCassandraBackupPlanId", example.plans[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cassandra.GetBackupPlans.Invoke(new()
///     {
///         ClusterId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCassandraBackupPlanId"] = example.Apply(getBackupPlansResult => getBackupPlansResult.Plans[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cassandra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cassandra.GetBackupPlans(ctx, &cassandra.GetBackupPlansArgs{
/// 			ClusterId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCassandraBackupPlanId", example.Plans[0].Id)
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
/// import com.pulumi.alicloud.cassandra.CassandraFunctions;
/// import com.pulumi.alicloud.cassandra.inputs.GetBackupPlansArgs;
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
///         final var example = CassandraFunctions.getBackupPlans(GetBackupPlansArgs.builder()
///             .clusterId("example_value")
///             .build());
///
///         ctx.export("firstCassandraBackupPlanId", example.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cassandra:getBackupPlans
///       arguments:
///         clusterId: example_value
/// outputs:
///   firstCassandraBackupPlanId: ${example.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cassandra_get_backup_plans_get_backup_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPlansResult> getBackupPlans(
  GetBackupPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cassandra/getBackupPlans:getBackupPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPlansResult.fromMap(result);
}

/// The `alicloud.cassandra.getClusters` data source provides a collection of Cassandra clusters available in Alicloud account.
/// Filters support regular expression for the cluster name, ids or tags.
///
/// > **NOTE:**  Available in 1.88.0+.
///
/// > **DEPRECATED:**  This data source has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const cassandra = alicloud.cassandra.getClusters({
///     nameRegex: "tf_testAccCassandra",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// cassandra = alicloud.cassandra.get_clusters(name_regex="tf_testAccCassandra")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandra = AliCloud.Cassandra.GetClusters.Invoke(new()
///     {
///         NameRegex = "tf_testAccCassandra",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cassandra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cassandra.GetClusters(ctx, &cassandra.GetClustersArgs{
/// 			NameRegex: pulumi.StringRef("tf_testAccCassandra"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.cassandra.CassandraFunctions;
/// import com.pulumi.alicloud.cassandra.inputs.GetClustersArgs;
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
///         final var cassandra = CassandraFunctions.getClusters(GetClustersArgs.builder()
///             .nameRegex("tf_testAccCassandra")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cassandra:
///     fn::invoke:
///       function: alicloud:cassandra:getClusters
///       arguments:
///         nameRegex: tf_testAccCassandra
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cassandra_get_clusters_get_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClustersResult> getClusters(
  GetClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cassandra/getClusters:getClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClustersResult.fromMap(result);
}

/// The `alicloud.cassandra.getDataCenters` data source provides a collection of Cassandra Data Centers available in Alicloud account.
/// Filters support regular expression for the cluster name or ids.
///
/// > **NOTE:**  Available in 1.88.0+.
///
/// > **DEPRECATED:**  This data source has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const cassandra = alicloud.cassandra.getDataCenters({
///     nameRegex: "tf_testAccCassandra_dc",
///     clusterId: "cds-xxxxx",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// cassandra = alicloud.cassandra.get_data_centers(name_regex="tf_testAccCassandra_dc",
///     cluster_id="cds-xxxxx")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandra = AliCloud.Cassandra.GetDataCenters.Invoke(new()
///     {
///         NameRegex = "tf_testAccCassandra_dc",
///         ClusterId = "cds-xxxxx",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cassandra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cassandra.GetDataCenters(ctx, &cassandra.GetDataCentersArgs{
/// 			NameRegex: pulumi.StringRef("tf_testAccCassandra_dc"),
/// 			ClusterId: "cds-xxxxx",
/// 		}, nil)
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
/// import com.pulumi.alicloud.cassandra.CassandraFunctions;
/// import com.pulumi.alicloud.cassandra.inputs.GetDataCentersArgs;
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
///         final var cassandra = CassandraFunctions.getDataCenters(GetDataCentersArgs.builder()
///             .nameRegex("tf_testAccCassandra_dc")
///             .clusterId("cds-xxxxx")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cassandra:
///     fn::invoke:
///       function: alicloud:cassandra:getDataCenters
///       arguments:
///         nameRegex: tf_testAccCassandra_dc
///         clusterId: cds-xxxxx
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cassandra_get_data_centers_get_data_centers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCentersResult> getDataCenters(
  GetDataCentersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cassandra/getDataCenters:getDataCenters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCentersResult.fromMap(result);
}

/// This data source provides availability zones for Cassandra that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// > **NOTE:** Available in v1.88.0+.
///
/// > **DEPRECATED:**  This data source has been [deprecated](https://www.alibabacloud.com/help/en/apsaradb-for-cassandra/latest/cassandra-delisting-notice) from version `1.220.0`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesIds = alicloud.cassandra.getZones({});
/// // Create an Cassandra cluster with the first matched zone
/// const cassandra = new alicloud.cassandra.Cluster("cassandra", {zoneId: zonesIds.then(zonesIds => zonesIds.zones?.[0]?.id)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ids = alicloud.cassandra.get_zones()
/// # Create an Cassandra cluster with the first matched zone
/// cassandra = alicloud.cassandra.Cluster("cassandra", zone_id=zones_ids.zones[0].id)
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
///     var zonesIds = AliCloud.Cassandra.GetZones.Invoke();
///
///     // Create an Cassandra cluster with the first matched zone
///     var cassandra = new AliCloud.Cassandra.Cluster("cassandra", new()
///     {
///         ZoneId = zonesIds.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cassandra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		zonesIds, err := cassandra.GetZones(ctx, &cassandra.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create an Cassandra cluster with the first matched zone
/// 		_, err = cassandra.NewCluster(ctx, "cassandra", &cassandra.ClusterArgs{
/// 			ZoneId: pulumi.String(zonesIds.Zones[0].Id),
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
/// import com.pulumi.alicloud.cassandra.CassandraFunctions;
/// import com.pulumi.alicloud.cassandra.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.cassandra.Cluster;
/// import com.pulumi.alicloud.cassandra.ClusterArgs;
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
///         final var zonesIds = CassandraFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         // Create an Cassandra cluster with the first matched zone
///         var cassandra = new Cluster("cassandra", ClusterArgs.builder()
///             .zoneId(zonesIds.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create an Cassandra cluster with the first matched zone
///   cassandra:
///     type: alicloud:cassandra:Cluster
///     properties:
///       zoneId: ${zonesIds.zones[0].id}
/// variables:
///   # Declare the data source
///   zonesIds:
///     fn::invoke:
///       function: alicloud:cassandra:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cassandra_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cassandra/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
