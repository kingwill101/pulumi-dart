import 'package:pulumi/pulumi.dart' as pulumi;
import 'eventhub_data_connection_args.dart';

/// Manages a Kusto (also known as Azure Data Explorer) EventHub Data Connection
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
/// const eventhubNs = new azure.eventhub.EventHubNamespace("eventhub_ns", {
///     name: "my-eventhub-ns",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const eventhub = new azure.eventhub.EventHub("eventhub", {
///     name: "my-eventhub",
///     namespaceName: eventhubNs.name,
///     resourceGroupName: example.name,
///     partitionCount: 1,
///     messageRetention: 1,
/// });
/// const consumerGroup = new azure.eventhub.ConsumerGroup("consumer_group", {
///     name: "my-eventhub-consumergroup",
///     namespaceName: eventhubNs.name,
///     eventhubName: eventhub.name,
///     resourceGroupName: example.name,
/// });
/// const eventhubConnection = new azure.kusto.EventhubDataConnection("eventhub_connection", {
///     name: "my-kusto-eventhub-data-connection",
///     resourceGroupName: example.name,
///     location: example.location,
///     clusterName: cluster.name,
///     databaseName: database.name,
///     eventhubId: eventhub.id,
///     consumerGroup: consumerGroup.name,
///     tableName: "my-table",
///     mappingRuleName: "my-table-mapping",
///     dataFormat: "JSON",
///     retrievalStartDate: "2023-06-26T12:00:00Z",
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
/// eventhub_ns = azure.eventhub.EventHubNamespace("eventhub_ns",
///     name="my-eventhub-ns",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// eventhub = azure.eventhub.EventHub("eventhub",
///     name="my-eventhub",
///     namespace_name=eventhub_ns.name,
///     resource_group_name=example.name,
///     partition_count=1,
///     message_retention=1)
/// consumer_group = azure.eventhub.ConsumerGroup("consumer_group",
///     name="my-eventhub-consumergroup",
///     namespace_name=eventhub_ns.name,
///     eventhub_name=eventhub.name,
///     resource_group_name=example.name)
/// eventhub_connection = azure.kusto.EventhubDataConnection("eventhub_connection",
///     name="my-kusto-eventhub-data-connection",
///     resource_group_name=example.name,
///     location=example.location,
///     cluster_name=cluster.name,
///     database_name=database.name,
///     eventhub_id=eventhub.id,
///     consumer_group=consumer_group.name,
///     table_name="my-table",
///     mapping_rule_name="my-table-mapping",
///     data_format="JSON",
///     retrieval_start_date="2023-06-26T12:00:00Z")
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
///     var eventhubNs = new Azure.EventHub.EventHubNamespace("eventhub_ns", new()
///     {
///         Name = "my-eventhub-ns",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var eventhub = new Azure.EventHub.EventHub("eventhub", new()
///     {
///         Name = "my-eventhub",
///         NamespaceName = eventhubNs.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 1,
///         MessageRetention = 1,
///     });
///
///     var consumerGroup = new Azure.EventHub.ConsumerGroup("consumer_group", new()
///     {
///         Name = "my-eventhub-consumergroup",
///         NamespaceName = eventhubNs.Name,
///         EventhubName = eventhub.Name,
///         ResourceGroupName = example.Name,
///     });
///
///     var eventhubConnection = new Azure.Kusto.EventhubDataConnection("eventhub_connection", new()
///     {
///         Name = "my-kusto-eventhub-data-connection",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ClusterName = cluster.Name,
///         DatabaseName = database.Name,
///         EventhubId = eventhub.Id,
///         ConsumerGroup = consumerGroup.Name,
///         TableName = "my-table",
///         MappingRuleName = "my-table-mapping",
///         DataFormat = "JSON",
///         RetrievalStartDate = "2023-06-26T12:00:00Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
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
/// 		database, err := kusto.NewDatabase(ctx, "database", &kusto.DatabaseArgs{
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
/// 		eventhubNs, err := eventhub.NewEventHubNamespace(ctx, "eventhub_ns", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("my-eventhub-ns"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eventhub, err := eventhub.NewEventHub(ctx, "eventhub", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("my-eventhub"),
/// 			NamespaceName:     eventhubNs.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(1),
/// 			MessageRetention:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumerGroup, err := eventhub.NewConsumerGroup(ctx, "consumer_group", &eventhub.ConsumerGroupArgs{
/// 			Name:              pulumi.String("my-eventhub-consumergroup"),
/// 			NamespaceName:     eventhubNs.Name,
/// 			EventhubName:      eventhub.Name,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kusto.NewEventhubDataConnection(ctx, "eventhub_connection", &kusto.EventhubDataConnectionArgs{
/// 			Name:               pulumi.String("my-kusto-eventhub-data-connection"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			ClusterName:        cluster.Name,
/// 			DatabaseName:       database.Name,
/// 			EventhubId:         eventhub.ID(),
/// 			ConsumerGroup:      consumerGroup.Name,
/// 			TableName:          pulumi.String("my-table"),
/// 			MappingRuleName:    pulumi.String("my-table-mapping"),
/// 			DataFormat:         pulumi.String("JSON"),
/// 			RetrievalStartDate: pulumi.String("2023-06-26T12:00:00Z"),
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
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.ConsumerGroup;
/// import com.pulumi.azure.eventhub.ConsumerGroupArgs;
/// import com.pulumi.azure.kusto.EventhubDataConnection;
/// import com.pulumi.azure.kusto.EventhubDataConnectionArgs;
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
///         var eventhubNs = new EventHubNamespace("eventhubNs", EventHubNamespaceArgs.builder()
///             .name("my-eventhub-ns")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var eventhub = new EventHub("eventhub", EventHubArgs.builder()
///             .name("my-eventhub")
///             .namespaceName(eventhubNs.name())
///             .resourceGroupName(example.name())
///             .partitionCount(1)
///             .messageRetention(1)
///             .build());
///
///         var consumerGroup = new ConsumerGroup("consumerGroup", ConsumerGroupArgs.builder()
///             .name("my-eventhub-consumergroup")
///             .namespaceName(eventhubNs.name())
///             .eventhubName(eventhub.name())
///             .resourceGroupName(example.name())
///             .build());
///
///         var eventhubConnection = new EventhubDataConnection("eventhubConnection", EventhubDataConnectionArgs.builder()
///             .name("my-kusto-eventhub-data-connection")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .clusterName(cluster.name())
///             .databaseName(database.name())
///             .eventhubId(eventhub.id())
///             .consumerGroup(consumerGroup.name())
///             .tableName("my-table")
///             .mappingRuleName("my-table-mapping")
///             .dataFormat("JSON")
///             .retrievalStartDate("2023-06-26T12:00:00Z")
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
///   eventhubNs:
///     type: azure:eventhub:EventHubNamespace
///     name: eventhub_ns
///     properties:
///       name: my-eventhub-ns
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   eventhub:
///     type: azure:eventhub:EventHub
///     properties:
///       name: my-eventhub
///       namespaceName: ${eventhubNs.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 1
///       messageRetention: 1
///   consumerGroup:
///     type: azure:eventhub:ConsumerGroup
///     name: consumer_group
///     properties:
///       name: my-eventhub-consumergroup
///       namespaceName: ${eventhubNs.name}
///       eventhubName: ${eventhub.name}
///       resourceGroupName: ${example.name}
///   eventhubConnection:
///     type: azure:kusto:EventhubDataConnection
///     name: eventhub_connection
///     properties:
///       name: my-kusto-eventhub-data-connection
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       clusterName: ${cluster.name}
///       databaseName: ${database.name}
///       eventhubId: ${eventhub.id}
///       consumerGroup: ${consumerGroup.name}
///       tableName: my-table
///       mappingRuleName: my-table-mapping
///       dataFormat: JSON
///       retrievalStartDate: 2023-06-26T12:00:00Z
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
/// Kusto EventHub Data Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:kusto/eventhubDataConnection:EventhubDataConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Kusto/clusters/cluster1/databases/database1/dataConnections/eventHubConnection1
/// ```
class EventhubDataConnection extends pulumi.CustomResource {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> clusterName;
  /// Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> compression;
  /// Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> consumerGroup;
  /// Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`.
  late final pulumi.Output<String?> dataFormat;
  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  late final pulumi.Output<String?> databaseRoutingType;
  /// Specifies a list of system properties for the Event Hub.
  late final pulumi.Output<List<String>> eventSystemProperties;
  /// Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  late final pulumi.Output<String?> identityId;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the date after which data should be retrieved from Event Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the Event Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  late final pulumi.Output<String> retrievalStartDate;
  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  late final pulumi.Output<String?> tableName;

  /// Creates a new [EventhubDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventhubDataConnection]. {@macro pulumi_kusto_eventhub_data_connection_eventhub_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventhubDataConnection(
    String name, {
    EventhubDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:kusto/eventhubDataConnection:EventhubDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterName = registerOutput<String>('clusterName');
    this.compression = registerOutput<String?>('compression');
    this.consumerGroup = registerOutput<String>('consumerGroup');
    this.dataFormat = registerOutput<String?>('dataFormat');
    this.databaseName = registerOutput<String>('databaseName');
    this.databaseRoutingType = registerOutput<String?>('databaseRoutingType');
    this.eventSystemProperties = registerOutput<List<String>>('eventSystemProperties');
    this.eventhubId = registerOutput<String>('eventhubId');
    this.identityId = registerOutput<String?>('identityId');
    this.location = registerOutput<String>('location');
    this.mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retrievalStartDate = registerOutput<String>('retrievalStartDate');
    this.tableName = registerOutput<String?>('tableName');
  }
}
