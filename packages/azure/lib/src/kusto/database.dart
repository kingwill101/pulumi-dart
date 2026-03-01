import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';

/// Manages a Kusto (also known as Azure Data Explorer) Database
///
/// !> **Note:** To mitigate the possibility of accidental data loss it is highly recommended that you use the `prevent_destroy` lifecycle argument in your configuration file for this resource. For more information on the `prevent_destroy` lifecycle argument please see the terraform documentation.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-kusto-rg",
///     location: "West Europe",
/// });
/// const cluster = new azure.kusto.Cluster("cluster", {
///     name: "kustocluster",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_D13_v2",
///         capacity: 2,
///     },
/// });
/// const database = new azure.kusto.Database("database", {
///     name: "my-kusto-database",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: cluster.name,
///     hotCachePeriod: "P7D",
///     softDeletePeriod: "P31D",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-kusto-rg",
///     location="West Europe")
/// cluster = azure.kusto.Cluster("cluster",
///     name="kustocluster",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_D13_v2",
///         "capacity": 2,
///     })
/// database = azure.kusto.Database("database",
///     name="my-kusto-database",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=cluster.name,
///     hot_cache_period="P7D",
///     soft_delete_period="P31D")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "my-kusto-rg",
///         Location = "West Europe",
///     });
///
///     var cluster = new Azure.Kusto.Cluster("cluster", new()
///     {
///         Name = "kustocluster",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.Kusto.Inputs.ClusterSkuArgs
///         {
///             Name = "Standard_D13_v2",
///             Capacity = 2,
///         },
///     });
///
///     var database = new Azure.Kusto.Database("database", new()
///     {
///         Name = "my-kusto-database",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = cluster.Name,
///         HotCachePeriod = "P7D",
///         SoftDeletePeriod = "P31D",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-kusto-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster, err := kusto.NewCluster(ctx, "cluster", &kusto.ClusterArgs{
/// 			Name:              pulumi.String("kustocluster"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &kusto.ClusterSkuArgs{
/// 				Name:     pulumi.String("Standard_D13_v2"),
/// 				Capacity: pulumi.Int(2),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewDatabase(ctx, "database", &kusto.DatabaseArgs{
/// 			Name:              pulumi.String("my-kusto-database"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			ClusterName:       cluster.Name,
/// 			HotCachePeriod:    pulumi.String("P7D"),
/// 			SoftDeletePeriod:  pulumi.String("P31D"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.kusto.Cluster;
/// import com.pulumi.azure.kusto.ClusterArgs;
/// import com.pulumi.azure.kusto.inputs.ClusterSkuArgs;
/// import com.pulumi.azure.kusto.Database;
/// import com.pulumi.azure.kusto.DatabaseArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("my-kusto-rg")
///             .location("West Europe")
///             .build());
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .name("kustocluster")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ClusterSkuArgs.builder()
///                 .name("Standard_D13_v2")
///                 .capacity(2)
///                 .build())
///             .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .name("my-kusto-database")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(cluster.name())
///             .hotCachePeriod("P7D")
///             .softDeletePeriod("P31D")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: my-kusto-rg
///       location: West Europe
///   cluster:
///     type: azure:kusto:Cluster
///     properties:
///       name: kustocluster
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_D13_v2
///         capacity: 2
///   database:
///     type: azure:kusto:Database
///     properties:
///       name: my-kusto-database
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${cluster.name}
///       hotCachePeriod: P7D
///       softDeletePeriod: P31D
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
///
/// ## Import
///
/// Kusto Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/database:Database example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1
/// ```
class Database extends pulumi.CustomResource {
  /// Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  /// The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  late final pulumi.Output<String?> hotCachePeriod;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Kusto Database to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The size of the database in bytes.
  late final pulumi.Output<double> size;
  /// The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations)
  late final pulumi.Output<String?> softDeletePeriod;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_kusto_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.hotCachePeriod = registerOutput<String?>('hotCachePeriod');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.size = registerOutput<double>('size');
    this.softDeletePeriod = registerOutput<String?>('softDeletePeriod');
  }
}
