import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_data_connection_args.dart';

/// Class representing an event hub data connection.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2022-12-29.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoDataConnectionsCosmosDbCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubDataConnection = new AzureNative.Kusto.EventHubDataConnection("eventHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase1",
///         ResourceGroupName = "kustorptest",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewEventHubDataConnection(ctx, "eventHubDataConnection", &kusto.EventHubDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase1"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.kusto.EventHubDataConnection;
/// import com.pulumi.azurenative.kusto.EventHubDataConnectionArgs;
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
///         var eventHubDataConnection = new EventHubDataConnection("eventHubDataConnection", EventHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase1")
///             .resourceGroupName("kustorptest")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const eventHubDataConnection = new azure_native.kusto.EventHubDataConnection("eventHubDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase1",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_data_connection = azure_native.kusto.EventHubDataConnection("eventHubDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase1",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubDataConnection:
///     type: azure-native:kusto:EventHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase1
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubDataConnection = new AzureNative.Kusto.EventHubDataConnection("eventHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         ConsumerGroup = "testConsumerGroup1",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         EventHubResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///         Kind = "EventHub",
///         Location = "westus",
///         ManagedIdentityResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///         ResourceGroupName = "kustorptest",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewEventHubDataConnection(ctx, "eventHubDataConnection", &kusto.EventHubDataConnectionArgs{
/// 			ClusterName:               pulumi.String("kustoCluster"),
/// 			ConsumerGroup:             pulumi.String("testConsumerGroup1"),
/// 			DataConnectionName:        pulumi.String("dataConnectionTest"),
/// 			DatabaseName:              pulumi.String("KustoDatabase8"),
/// 			EventHubResourceId:        pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1"),
/// 			Kind:                      pulumi.String("EventHub"),
/// 			Location:                  pulumi.String("westus"),
/// 			ManagedIdentityResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1"),
/// 			ResourceGroupName:         pulumi.String("kustorptest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.kusto.EventHubDataConnection;
/// import com.pulumi.azurenative.kusto.EventHubDataConnectionArgs;
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
///         var eventHubDataConnection = new EventHubDataConnection("eventHubDataConnection", EventHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .consumerGroup("testConsumerGroup1")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .eventHubResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1")
///             .kind("EventHub")
///             .location("westus")
///             .managedIdentityResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1")
///             .resourceGroupName("kustorptest")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const eventHubDataConnection = new azure_native.kusto.EventHubDataConnection("eventHubDataConnection", {
///     clusterName: "kustoCluster",
///     consumerGroup: "testConsumerGroup1",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     eventHubResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     kind: "EventHub",
///     location: "westus",
///     managedIdentityResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_data_connection = azure_native.kusto.EventHubDataConnection("eventHubDataConnection",
///     cluster_name="kustoCluster",
///     consumer_group="testConsumerGroup1",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     event_hub_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     kind="EventHub",
///     location="westus",
///     managed_identity_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubDataConnection:
///     type: azure-native:kusto:EventHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       consumerGroup: testConsumerGroup1
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       eventHubResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1
///       kind: EventHub
///       location: westus
///       managedIdentityResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoDataConnectionsEventGridCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubDataConnection = new AzureNative.Kusto.EventHubDataConnection("eventHubDataConnection", new()
///     {
///         ClusterName = "kustoCluster",
///         DataConnectionName = "dataConnectionTest",
///         DatabaseName = "KustoDatabase8",
///         ResourceGroupName = "kustorptest",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewEventHubDataConnection(ctx, "eventHubDataConnection", &kusto.EventHubDataConnectionArgs{
/// 			ClusterName:        pulumi.String("kustoCluster"),
/// 			DataConnectionName: pulumi.String("dataConnectionTest"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.kusto.EventHubDataConnection;
/// import com.pulumi.azurenative.kusto.EventHubDataConnectionArgs;
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
///         var eventHubDataConnection = new EventHubDataConnection("eventHubDataConnection", EventHubDataConnectionArgs.builder()
///             .clusterName("kustoCluster")
///             .dataConnectionName("dataConnectionTest")
///             .databaseName("KustoDatabase8")
///             .resourceGroupName("kustorptest")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const eventHubDataConnection = new azure_native.kusto.EventHubDataConnection("eventHubDataConnection", {
///     clusterName: "kustoCluster",
///     dataConnectionName: "dataConnectionTest",
///     databaseName: "KustoDatabase8",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_data_connection = azure_native.kusto.EventHubDataConnection("eventHubDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubDataConnection:
///     type: azure-native:kusto:EventHubDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
///       resourceGroupName: kustorptest
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:kusto:EventHubDataConnection kustoCluster/KustoDatabase8/dataConnectionTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/dataConnections/{dataConnectionName}
/// ```
class EventHubDataConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The event hub messages compression type
  late final pulumi.Output<String?> compression;
  /// The event hub consumer group.
  late final pulumi.Output<String> consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  late final pulumi.Output<String?> dataFormat;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  late final pulumi.Output<String?> databaseRouting;
  /// The resource ID of the event hub to be used to create a data connection.
  late final pulumi.Output<String> eventHubResourceId;
  /// System properties of the event hub
  late final pulumi.Output<List<String>?> eventSystemProperties;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventHub'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The object ID of the managedIdentityResourceId
  late final pulumi.Output<String> managedIdentityObjectId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  late final pulumi.Output<String?> managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// When defined, the data connection retrieves existing Event hub events created since the Retrieval start date. It can only retrieve events retained by the Event hub, based on its retention period.
  late final pulumi.Output<String?> retrievalStartDate;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EventHubDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubDataConnection]. {@macro pulumi_kusto_event_hub_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubDataConnection(
    String name, {
    EventHubDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:EventHubDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.compression = registerOutput<String?>('compression');
    this.consumerGroup = registerOutput<String>('consumerGroup');
    this.dataFormat = registerOutput<String?>('dataFormat');
    this.databaseRouting = registerOutput<String?>('databaseRouting');
    this.eventHubResourceId = registerOutput<String>('eventHubResourceId');
    this.eventSystemProperties = registerOutput<List<String>?>('eventSystemProperties');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String?>('location');
    this.managedIdentityObjectId = registerOutput<String>('managedIdentityObjectId');
    this.managedIdentityResourceId = registerOutput<String?>('managedIdentityResourceId');
    this.mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.retrievalStartDate = registerOutput<String?>('retrievalStartDate');
    this.tableName = registerOutput<String?>('tableName');
    this.type = registerOutput<String>('type');
  }
}
