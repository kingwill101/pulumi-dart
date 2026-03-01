import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_grid_data_connection_args.dart';
import 'system_data_response.dart';

/// Class representing an Event Grid data connection.
///
/// Uses Azure REST API version 2021-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoPoolDataConnectionsCreateOrUpdate.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventGridDataConnection = new AzureNative.Synapse.EventGridDataConnection("eventGridDataConnection", new()
///     {
///         DataConnectionName = "DataConnections8",
///         DatabaseName = "KustoDatabase8",
///         KustoPoolName = "kustoclusterrptest4",
///         ResourceGroupName = "kustorptest",
///         WorkspaceName = "synapseWorkspaceName",
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
/// 	synapse "github.com/pulumi/pulumi-azure-native-sdk/synapse/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synapse.NewEventGridDataConnection(ctx, "eventGridDataConnection", &synapse.EventGridDataConnectionArgs{
/// 			DataConnectionName: pulumi.String("DataConnections8"),
/// 			DatabaseName:       pulumi.String("KustoDatabase8"),
/// 			KustoPoolName:      pulumi.String("kustoclusterrptest4"),
/// 			ResourceGroupName:  pulumi.String("kustorptest"),
/// 			WorkspaceName:      pulumi.String("synapseWorkspaceName"),
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
/// import com.pulumi.azurenative.synapse.EventGridDataConnection;
/// import com.pulumi.azurenative.synapse.EventGridDataConnectionArgs;
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
///         var eventGridDataConnection = new EventGridDataConnection("eventGridDataConnection", EventGridDataConnectionArgs.builder()
///             .dataConnectionName("DataConnections8")
///             .databaseName("KustoDatabase8")
///             .kustoPoolName("kustoclusterrptest4")
///             .resourceGroupName("kustorptest")
///             .workspaceName("synapseWorkspaceName")
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
/// const eventGridDataConnection = new azure_native.synapse.EventGridDataConnection("eventGridDataConnection", {
///     dataConnectionName: "DataConnections8",
///     databaseName: "KustoDatabase8",
///     kustoPoolName: "kustoclusterrptest4",
///     resourceGroupName: "kustorptest",
///     workspaceName: "synapseWorkspaceName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_grid_data_connection = azure_native.synapse.EventGridDataConnection("eventGridDataConnection",
///     data_connection_name="DataConnections8",
///     database_name="KustoDatabase8",
///     kusto_pool_name="kustoclusterrptest4",
///     resource_group_name="kustorptest",
///     workspace_name="synapseWorkspaceName")
///
/// ```
///
/// ```yaml
/// resources:
///   eventGridDataConnection:
///     type: azure-native:synapse:EventGridDataConnection
///     properties:
///       dataConnectionName: DataConnections8
///       databaseName: KustoDatabase8
///       kustoPoolName: kustoclusterrptest4
///       resourceGroupName: kustorptest
///       workspaceName: synapseWorkspaceName
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
/// $ pulumi import azure-native:synapse:EventGridDataConnection KustoClusterRPTest4/KustoDatabase8/DataConnections8 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Synapse/workspaces/{workspaceName}/kustoPools/{kustoPoolName}/databases/{databaseName}/dataConnections/{dataConnectionName}
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
  /// The resource ID where the event grid is configured to send events.
  late final pulumi.Output<String> eventHubResourceId;
  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  late final pulumi.Output<bool?> ignoreFirstRecord;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  late final pulumi.Output<String> kind;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  late final pulumi.Output<String?> mappingRuleName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The resource ID of the storage account where the data resides.
  late final pulumi.Output<String> storageAccountResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  late final pulumi.Output<String?> tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EventGridDataConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventGridDataConnection]. {@macro pulumi_synapse_event_grid_data_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventGridDataConnection(
    String name, {
    EventGridDataConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:synapse:EventGridDataConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.blobStorageEventType = registerOutput<String?>('blobStorageEventType');
    this.consumerGroup = registerOutput<String>('consumerGroup');
    this.dataFormat = registerOutput<String?>('dataFormat');
    this.eventHubResourceId = registerOutput<String>('eventHubResourceId');
    this.ignoreFirstRecord = registerOutput<bool?>('ignoreFirstRecord');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String?>('location');
    this.mappingRuleName = registerOutput<String?>('mappingRuleName');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.storageAccountResourceId = registerOutput<String>('storageAccountResourceId');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tableName = registerOutput<String?>('tableName');
    this.type = registerOutput<String>('type');
  }
}
