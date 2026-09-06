import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_connection_args.dart';

/// Class representing an event hub connection.
///
/// Uses Azure REST API version 2018-09-07-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-07-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoEventHubConnectionsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventHubConnection = new AzureNative.Kusto.EventHubConnection("eventHubConnection", new()
///     {
///         ClusterName = "KustoClusterRPTest4",
///         ConsumerGroup = "testConsumerGroup1",
///         DatabaseName = "KustoDatabase8",
///         EventHubConnectionName = "kustoeventhubconnection1",
///         EventHubResourceId = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///         Location = "westus",
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
/// 		_, err := kusto.NewEventHubConnection(ctx, "eventHubConnection", &kusto.EventHubConnectionArgs{
/// 			ClusterName:            pulumi.String("KustoClusterRPTest4"),
/// 			ConsumerGroup:          pulumi.String("testConsumerGroup1"),
/// 			DatabaseName:           pulumi.String("KustoDatabase8"),
/// 			EventHubConnectionName: pulumi.String("kustoeventhubconnection1"),
/// 			EventHubResourceId:     pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1"),
/// 			Location:               pulumi.String("westus"),
/// 			ResourceGroupName:      pulumi.String("kustorptest"),
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
/// resource "azure-native_kusto_eventhubconnection" "eventHubConnection" {
///   cluster_name              = "KustoClusterRPTest4"
///   consumer_group            = "testConsumerGroup1"
///   database_name             = "KustoDatabase8"
///   event_hub_connection_name = "kustoeventhubconnection1"
///   event_hub_resource_id     = "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1"
///   location                  = "westus"
///   resource_group_name       = "kustorptest"
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
/// import com.pulumi.azurenative.kusto.EventHubConnection;
/// import com.pulumi.azurenative.kusto.EventHubConnectionArgs;
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
///         var eventHubConnection = new EventHubConnection("eventHubConnection", EventHubConnectionArgs.builder()
///             .clusterName("KustoClusterRPTest4")
///             .consumerGroup("testConsumerGroup1")
///             .databaseName("KustoDatabase8")
///             .eventHubConnectionName("kustoeventhubconnection1")
///             .eventHubResourceId("/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1")
///             .location("westus")
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
/// const eventHubConnection = new azure_native.kusto.EventHubConnection("eventHubConnection", {
///     clusterName: "KustoClusterRPTest4",
///     consumerGroup: "testConsumerGroup1",
///     databaseName: "KustoDatabase8",
///     eventHubConnectionName: "kustoeventhubconnection1",
///     eventHubResourceId: "/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     location: "westus",
///     resourceGroupName: "kustorptest",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_hub_connection = azure_native.kusto.EventHubConnection("eventHubConnection",
///     cluster_name="KustoClusterRPTest4",
///     consumer_group="testConsumerGroup1",
///     database_name="KustoDatabase8",
///     event_hub_connection_name="kustoeventhubconnection1",
///     event_hub_resource_id="/subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1",
///     location="westus",
///     resource_group_name="kustorptest")
///
/// ```
///
/// ```yaml
/// resources:
///   eventHubConnection:
///     type: azure-native:kusto:EventHubConnection
///     properties:
///       clusterName: KustoClusterRPTest4
///       consumerGroup: testConsumerGroup1
///       databaseName: KustoDatabase8
///       eventHubConnectionName: kustoeventhubconnection1
///       eventHubResourceId: /subscriptions/12345678-1234-1234-1234-123456789098/resourceGroups/kustorptest/providers/Microsoft.EventHub/namespaces/eventhubTestns1/eventhubs/eventhubTest1
///       location: westus
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
/// $ pulumi import azure-native:kusto:EventHubConnection KustoClusterRPTest4/KustoDatabase8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/databases/{databaseName}/eventhubconnections/{eventHubConnectionName}
/// ```
class EventHubConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The event hub consumer group.
  late final pulumi.Output<String> consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  late final pulumi.Output<String?> dataFormat;
  /// The resource ID of the event hub to be used to create a data connection.
  late final pulumi.Output<String> eventHubResourceId;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EventHubConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubConnection]. {@macro pulumi_kusto_event_hub_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubConnection(
    String name, {
    EventHubConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:EventHubConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    eventHubResourceId = registerOutput<String>('eventHubResourceId');
    location = registerOutput<String?>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EventHubConnection] resource.
  EventHubConnection.reference(String urn)
    : super(
        'azure-native:kusto:EventHubConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    consumerGroup = registerOutput<String>('consumerGroup');
    dataFormat = registerOutput<String?>('dataFormat');
    eventHubResourceId = registerOutput<String>('eventHubResourceId');
    location = registerOutput<String?>('location');
    mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    tableName = registerOutput<String?>('tableName');
    type = registerOutput<String>('type');
  }
}
