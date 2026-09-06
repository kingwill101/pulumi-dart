import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_data_connection_args.dart';

/// Class representing an Event Grid data connection.
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
///     var eventGridDataConnection = new AzureNative.Kusto.EventGridDataConnection("eventGridDataConnection", new()
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
/// 		_, err := kusto.NewEventGridDataConnection(ctx, "eventGridDataConnection", &kusto.EventGridDataConnectionArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_kusto_eventgriddataconnection" "eventGridDataConnection" {
///   cluster_name         = "kustoCluster"
///   data_connection_name = "dataConnectionTest"
///   database_name        = "KustoDatabase1"
///   resource_group_name  = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.EventGridDataConnection;
/// import com.pulumi.azurenative.kusto.EventGridDataConnectionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var eventGridDataConnection = new EventGridDataConnection("eventGridDataConnection", EventGridDataConnectionArgs.builder()
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
/// const eventGridDataConnection = new azure_native.kusto.EventGridDataConnection("eventGridDataConnection", {
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
/// event_grid_data_connection = azure_native.kusto.EventGridDataConnection("eventGridDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase1",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventGridDataConnection:
///     type: azure-native:kusto:EventGridDataConnection
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
///     var eventGridDataConnection = new AzureNative.Kusto.EventGridDataConnection("eventGridDataConnection", new()
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
/// 		_, err := kusto.NewEventGridDataConnection(ctx, "eventGridDataConnection", &kusto.EventGridDataConnectionArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_kusto_eventgriddataconnection" "eventGridDataConnection" {
///   cluster_name         = "kustoCluster"
///   data_connection_name = "dataConnectionTest"
///   database_name        = "KustoDatabase8"
///   resource_group_name  = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.EventGridDataConnection;
/// import com.pulumi.azurenative.kusto.EventGridDataConnectionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var eventGridDataConnection = new EventGridDataConnection("eventGridDataConnection", EventGridDataConnectionArgs.builder()
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
/// const eventGridDataConnection = new azure_native.kusto.EventGridDataConnection("eventGridDataConnection", {
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
/// event_grid_data_connection = azure_native.kusto.EventGridDataConnection("eventGridDataConnection",
///     cluster_name="kustoCluster",
///     data_connection_name="dataConnectionTest",
///     database_name="KustoDatabase8",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventGridDataConnection:
///     type: azure-native:kusto:EventGridDataConnection
///     properties:
///       clusterName: kustoCluster
///       dataConnectionName: dataConnectionTest
///       databaseName: KustoDatabase8
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
///     var eventGridDataConnection = new AzureNative.Kusto.EventGridDataConnection("eventGridDataConnection", new()
///     {
///         BlobStorageEventType = AzureNative.Kusto.BlobStorageEventType.Microsoft_Storage_BlobCreated,
///         ClusterName = "kustoCluster",
///         ConsumerGroup = "$Default",
///         DataConnectionName = "dataConnectionTest",
///         DataFormat = AzureNative.Kusto.EventGridDataFormat.MULTIJSON,
///         DatabaseName = "KustoDatabase8",
///         DatabaseRouting = AzureNative.Kusto.DatabaseRouting.Single,
///         EventGridResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest",
///         EventHubResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2",
///         IgnoreFirstRecord = false,
///         Kind = "EventGrid",
///         Location = "westus",
///         ManagedIdentityResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///         MappingRuleName = "TestMapping",
///         ResourceGroupName = "kustorptest",
///         StorageAccountResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///         TableName = "TestTable",
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
/// 		_, err := kusto.NewEventGridDataConnection(ctx, "eventGridDataConnection", &kusto.EventGridDataConnectionArgs{
/// 			BlobStorageEventType:      pulumi.String(kusto.BlobStorageEventType_Microsoft_Storage_BlobCreated),
/// 			ClusterName:               pulumi.String("kustoCluster"),
/// 			ConsumerGroup:             pulumi.String("$Default"),
/// 			DataConnectionName:        pulumi.String("dataConnectionTest"),
/// 			DataFormat:                pulumi.String(kusto.EventGridDataFormatMULTIJSON),
/// 			DatabaseName:              pulumi.String("KustoDatabase8"),
/// 			DatabaseRouting:           pulumi.String(kusto.DatabaseRoutingSingle),
/// 			EventGridResourceId:       pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest"),
/// 			EventHubResourceId:        pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2"),
/// 			IgnoreFirstRecord:         pulumi.Bool(false),
/// 			Kind:                      pulumi.String("EventGrid"),
/// 			Location:                  pulumi.String("westus"),
/// 			ManagedIdentityResourceId: pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1"),
/// 			MappingRuleName:           pulumi.String("TestMapping"),
/// 			ResourceGroupName:         pulumi.String("kustorptest"),
/// 			StorageAccountResourceId:  pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount"),
/// 			TableName:                 pulumi.String("TestTable"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_kusto_eventgriddataconnection" "eventGridDataConnection" {
///   blob_storage_event_type      = "Microsoft.Storage.BlobCreated"
///   cluster_name                 = "kustoCluster"
///   consumer_group               = "$Default"
///   data_connection_name         = "dataConnectionTest"
///   data_format                  = "MULTIJSON"
///   database_name                = "KustoDatabase8"
///   database_routing             = "Single"
///   event_grid_resource_id       = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest"
///   event_hub_resource_id        = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2"
///   ignore_first_record          = false
///   kind                         = "EventGrid"
///   location                     = "westus"
///   managed_identity_resource_id = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1"
///   mapping_rule_name            = "TestMapping"
///   resource_group_name          = "kustorptest"
///   storage_account_resource_id  = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount"
///   table_name                   = "TestTable"
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
/// import com.pulumi.azurenative.kusto.EventGridDataConnection;
/// import com.pulumi.azurenative.kusto.EventGridDataConnectionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var eventGridDataConnection = new EventGridDataConnection("eventGridDataConnection", EventGridDataConnectionArgs.builder()
///             .blobStorageEventType("Microsoft.Storage.BlobCreated")
///             .clusterName("kustoCluster")
///             .consumerGroup("$Default")
///             .dataConnectionName("dataConnectionTest")
///             .dataFormat("MULTIJSON")
///             .databaseName("KustoDatabase8")
///             .databaseRouting("Single")
///             .eventGridResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest")
///             .eventHubResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2")
///             .ignoreFirstRecord(false)
///             .kind("EventGrid")
///             .location("westus")
///             .managedIdentityResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1")
///             .mappingRuleName("TestMapping")
///             .resourceGroupName("kustorptest")
///             .storageAccountResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount")
///             .tableName("TestTable")
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
/// const eventGridDataConnection = new azure_native.kusto.EventGridDataConnection("eventGridDataConnection", {
///     blobStorageEventType: azure_native.kusto.BlobStorageEventType.Microsoft_Storage_BlobCreated,
///     clusterName: "kustoCluster",
///     consumerGroup: "$Default",
///     dataConnectionName: "dataConnectionTest",
///     dataFormat: azure_native.kusto.EventGridDataFormat.MULTIJSON,
///     databaseName: "KustoDatabase8",
///     databaseRouting: azure_native.kusto.DatabaseRouting.Single,
///     eventGridResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest",
///     eventHubResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2",
///     ignoreFirstRecord: false,
///     kind: "EventGrid",
///     location: "westus",
///     managedIdentityResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     mappingRuleName: "TestMapping",
///     resourceGroupName: "kustorptest",
///     storageAccountResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///     tableName: "TestTable",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_grid_data_connection = azure_native.kusto.EventGridDataConnection("eventGridDataConnection",
///     blob_storage_event_type=azure_native.kusto.BlobStorageEventType.MICROSOFT_STORAGE_BLOB_CREATED,
///     cluster_name="kustoCluster",
///     consumer_group="$Default",
///     data_connection_name="dataConnectionTest",
///     data_format=azure_native.kusto.EventGridDataFormat.MULTIJSON,
///     database_name="KustoDatabase8",
///     database_routing=azure_native.kusto.DatabaseRouting.SINGLE,
///     event_grid_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest",
///     event_hub_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2",
///     ignore_first_record=False,
///     kind="EventGrid",
///     location="westus",
///     managed_identity_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1",
///     mapping_rule_name="TestMapping",
///     resource_group_name="kustorptest",
///     storage_account_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount",
///     table_name="TestTable")
///
/// ```
///
/// ```yaml
/// resources:
///   eventGridDataConnection:
///     type: azure-native:kusto:EventGridDataConnection
///     properties:
///       blobStorageEventType: Microsoft.Storage.BlobCreated
///       clusterName: kustoCluster
///       consumerGroup: $Default
///       dataConnectionName: dataConnectionTest
///       dataFormat: MULTIJSON
///       databaseName: KustoDatabase8
///       databaseRouting: Single
///       eventGridResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount/providers/Microsoft.EventGrid/eventSubscriptions/eventSubscriptionTest
///       eventHubResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest2
///       ignoreFirstRecord: false
///       kind: EventGrid
///       location: westus
///       managedIdentityResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.ManagedIdentity/userAssignedIdentities/managedidentityTest1
///       mappingRuleName: TestMapping
///       resourceGroupName: kustorptest
///       storageAccountResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.Storage/storageAccounts/teststorageaccount
///       tableName: TestTable
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
/// $ pulumi import azure-native:kusto:EventGridDataConnection kustoCluster/KustoDatabase8/dataConnectionTest /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/dataConnections/{dataConnectionName}
/// ```
class EventGridDataConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of blob storage event type to process.
  late final pulumi.Output<String?> blobStorageEventType;
  /// The event hub consumer group.
  late final pulumi.Output<String> consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  late final pulumi.Output<String?> dataFormat;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed
  late final pulumi.Output<String?> databaseRouting;
  /// The resource ID of the event grid that is subscribed to the storage account events.
  late final pulumi.Output<String?> eventGridResourceId;
  /// The resource ID where the event grid is configured to send events.
  late final pulumi.Output<String> eventHubResourceId;
  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  late final pulumi.Output<bool?> ignoreFirstRecord;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The object ID of managedIdentityResourceId
  late final pulumi.Output<String> managedIdentityObjectId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub and storage account.
  late final pulumi.Output<String?> managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource ID of the storage account where the data resides.
  late final pulumi.Output<String> storageAccountResourceId;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EventGridDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventGridDataConnection]. {@macro pulumi_kusto_event_grid_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventGridDataConnection(
    String name, {
    EventGridDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:EventGridDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobStorageEventType = registerOutput<String?>('blobStorageEventType');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseRouting = registerOutput<String?>('databaseRouting');
    eventGridResourceId = registerOutput<String?>('eventGridResourceId');
    eventHubResourceId = registerOutput<String>('eventHubResourceId');
    ignoreFirstRecord = registerOutput<bool?>('ignoreFirstRecord');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    managedIdentityObjectId = registerOutput<String>('managedIdentityObjectId');
    managedIdentityResourceId = registerOutput<String?>('managedIdentityResourceId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageAccountResourceId = registerOutput<String>('storageAccountResourceId');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EventGridDataConnection] resource.
  EventGridDataConnection.reference(String urn)
    : super(
        'azure-native:kusto:EventGridDataConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blobStorageEventType = registerOutput<String?>('blobStorageEventType');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    databaseRouting = registerOutput<String?>('databaseRouting');
    eventGridResourceId = registerOutput<String?>('eventGridResourceId');
    eventHubResourceId = registerOutput<String>('eventHubResourceId');
    ignoreFirstRecord = registerOutput<bool?>('ignoreFirstRecord');
    kind = registerOutput<String>('kind');
    location = registerOutput<String?>('location');
    managedIdentityObjectId = registerOutput<String>('managedIdentityObjectId');
    managedIdentityResourceId = registerOutput<String?>('managedIdentityResourceId');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    storageAccountResourceId = registerOutput<String>('storageAccountResourceId');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }
}
