import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_data_explorer_connection_properties_response.dart';
import 'system_data_response.dart';
import 'time_series_database_connection_args.dart';

/// Describes a time series database connection resource.
///
/// Uses Azure REST API version 2023-01-31. In version 2.x of the Azure Native provider, it used API version 2023-01-31.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or replace a time series database connection for a DigitalTwins instance with user assigned identity.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var timeSeriesDatabaseConnection = new AzureNative.DigitalTwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", new()
///     {
///         Properties = new AzureNative.DigitalTwins.Inputs.AzureDataExplorerConnectionPropertiesArgs
///         {
///             AdxDatabaseName = "myDatabase",
///             AdxEndpointUri = "https://mycluster.kusto.windows.net",
///             AdxResourceId = "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///             AdxTableName = "myTable",
///             ConnectionType = "AzureDataExplorer",
///             EventHubEndpointUri = "sb://myeh.servicebus.windows.net/",
///             EventHubEntityPath = "myeh",
///             EventHubNamespaceResourceId = "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///             Identity = new AzureNative.DigitalTwins.Inputs.ManagedIdentityReferenceArgs
///             {
///                 Type = AzureNative.DigitalTwins.IdentityType.UserAssigned,
///                 UserAssignedIdentity = "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///             },
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
///         TimeSeriesDatabaseConnectionName = "myConnection",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewTimeSeriesDatabaseConnection(ctx, "timeSeriesDatabaseConnection", &digitaltwins.TimeSeriesDatabaseConnectionArgs{
/// 			Properties: &digitaltwins.AzureDataExplorerConnectionPropertiesArgs{
/// 				AdxDatabaseName:             pulumi.String("myDatabase"),
/// 				AdxEndpointUri:              pulumi.String("https://mycluster.kusto.windows.net"),
/// 				AdxResourceId:               pulumi.String("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster"),
/// 				AdxTableName:                pulumi.String("myTable"),
/// 				ConnectionType:              pulumi.String("AzureDataExplorer"),
/// 				EventHubEndpointUri:         pulumi.String("sb://myeh.servicebus.windows.net/"),
/// 				EventHubEntityPath:          pulumi.String("myeh"),
/// 				EventHubNamespaceResourceId: pulumi.String("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh"),
/// 				Identity: &digitaltwins.ManagedIdentityReferenceArgs{
/// 					Type:                 pulumi.String(digitaltwins.IdentityTypeUserAssigned),
/// 					UserAssignedIdentity: pulumi.String("/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity"),
/// 				},
/// 			},
/// 			ResourceGroupName:                pulumi.String("resRg"),
/// 			ResourceName:                     pulumi.String("myDigitalTwinsService"),
/// 			TimeSeriesDatabaseConnectionName: pulumi.String("myConnection"),
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
/// import com.pulumi.azurenative.digitaltwins.TimeSeriesDatabaseConnection;
/// import com.pulumi.azurenative.digitaltwins.TimeSeriesDatabaseConnectionArgs;
/// import com.pulumi.azurenative.digitaltwins.inputs.AzureDataExplorerConnectionPropertiesArgs;
/// import com.pulumi.azurenative.digitaltwins.inputs.ManagedIdentityReferenceArgs;
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
///         var timeSeriesDatabaseConnection = new TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", TimeSeriesDatabaseConnectionArgs.builder()
///             .properties(AzureDataExplorerConnectionPropertiesArgs.builder()
///                 .adxDatabaseName("myDatabase")
///                 .adxEndpointUri("https://mycluster.kusto.windows.net")
///                 .adxResourceId("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster")
///                 .adxTableName("myTable")
///                 .connectionType("AzureDataExplorer")
///                 .eventHubEndpointUri("sb://myeh.servicebus.windows.net/")
///                 .eventHubEntityPath("myeh")
///                 .eventHubNamespaceResourceId("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh")
///                 .identity(ManagedIdentityReferenceArgs.builder()
///                     .type("UserAssigned")
///                     .userAssignedIdentity("/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity")
///                     .build())
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
///             .timeSeriesDatabaseConnectionName("myConnection")
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
/// const timeSeriesDatabaseConnection = new azure_native.digitaltwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", {
///     properties: {
///         adxDatabaseName: "myDatabase",
///         adxEndpointUri: "https://mycluster.kusto.windows.net",
///         adxResourceId: "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///         adxTableName: "myTable",
///         connectionType: "AzureDataExplorer",
///         eventHubEndpointUri: "sb://myeh.servicebus.windows.net/",
///         eventHubEntityPath: "myeh",
///         eventHubNamespaceResourceId: "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///         identity: {
///             type: azure_native.digitaltwins.IdentityType.UserAssigned,
///             userAssignedIdentity: "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///         },
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
///     timeSeriesDatabaseConnectionName: "myConnection",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// time_series_database_connection = azure_native.digitaltwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection",
///     properties={
///         "adx_database_name": "myDatabase",
///         "adx_endpoint_uri": "https://mycluster.kusto.windows.net",
///         "adx_resource_id": "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///         "adx_table_name": "myTable",
///         "connection_type": "AzureDataExplorer",
///         "event_hub_endpoint_uri": "sb://myeh.servicebus.windows.net/",
///         "event_hub_entity_path": "myeh",
///         "event_hub_namespace_resource_id": "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///         "identity": {
///             "type": azure_native.digitaltwins.IdentityType.USER_ASSIGNED,
///             "user_assigned_identity": "/subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity",
///         },
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService",
///     time_series_database_connection_name="myConnection")
///
/// ```
///
/// ```yaml
/// resources:
///   timeSeriesDatabaseConnection:
///     type: azure-native:digitaltwins:TimeSeriesDatabaseConnection
///     properties:
///       properties:
///         adxDatabaseName: myDatabase
///         adxEndpointUri: https://mycluster.kusto.windows.net
///         adxResourceId: /subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster
///         adxTableName: myTable
///         connectionType: AzureDataExplorer
///         eventHubEndpointUri: sb://myeh.servicebus.windows.net/
///         eventHubEntityPath: myeh
///         eventHubNamespaceResourceId: /subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh
///         identity:
///           type: UserAssigned
///           userAssignedIdentity: /subscriptions/50016170-c839-41ba-a724-51e9df440b9e/resourceGroups/testrg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testidentity
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
///       timeSeriesDatabaseConnectionName: myConnection
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or replace a time series database connection for a DigitalTwins instance.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var timeSeriesDatabaseConnection = new AzureNative.DigitalTwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", new()
///     {
///         Properties = new AzureNative.DigitalTwins.Inputs.AzureDataExplorerConnectionPropertiesArgs
///         {
///             AdxDatabaseName = "myDatabase",
///             AdxEndpointUri = "https://mycluster.kusto.windows.net",
///             AdxRelationshipLifecycleEventsTableName = "myRelationshipLifecycleEventsTable",
///             AdxResourceId = "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///             AdxTableName = "myPropertyUpdatesTable",
///             AdxTwinLifecycleEventsTableName = "myTwinLifecycleEventsTable",
///             ConnectionType = "AzureDataExplorer",
///             EventHubEndpointUri = "sb://myeh.servicebus.windows.net/",
///             EventHubEntityPath = "myeh",
///             EventHubNamespaceResourceId = "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///             RecordPropertyAndItemRemovals = AzureNative.DigitalTwins.RecordPropertyAndItemRemovals.@True,
///         },
///         ResourceGroupName = "resRg",
///         ResourceName = "myDigitalTwinsService",
///         TimeSeriesDatabaseConnectionName = "myConnection",
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
/// 	digitaltwins "github.com/pulumi/pulumi-azure-native-sdk/digitaltwins/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitaltwins.NewTimeSeriesDatabaseConnection(ctx, "timeSeriesDatabaseConnection", &digitaltwins.TimeSeriesDatabaseConnectionArgs{
/// 			Properties: &digitaltwins.AzureDataExplorerConnectionPropertiesArgs{
/// 				AdxDatabaseName:                         pulumi.String("myDatabase"),
/// 				AdxEndpointUri:                          pulumi.String("https://mycluster.kusto.windows.net"),
/// 				AdxRelationshipLifecycleEventsTableName: pulumi.String("myRelationshipLifecycleEventsTable"),
/// 				AdxResourceId:                           pulumi.String("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster"),
/// 				AdxTableName:                            pulumi.String("myPropertyUpdatesTable"),
/// 				AdxTwinLifecycleEventsTableName:         pulumi.String("myTwinLifecycleEventsTable"),
/// 				ConnectionType:                          pulumi.String("AzureDataExplorer"),
/// 				EventHubEndpointUri:                     pulumi.String("sb://myeh.servicebus.windows.net/"),
/// 				EventHubEntityPath:                      pulumi.String("myeh"),
/// 				EventHubNamespaceResourceId:             pulumi.String("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh"),
/// 				RecordPropertyAndItemRemovals:           pulumi.String(digitaltwins.RecordPropertyAndItemRemovalsTrue),
/// 			},
/// 			ResourceGroupName:                pulumi.String("resRg"),
/// 			ResourceName:                     pulumi.String("myDigitalTwinsService"),
/// 			TimeSeriesDatabaseConnectionName: pulumi.String("myConnection"),
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
/// import com.pulumi.azurenative.digitaltwins.TimeSeriesDatabaseConnection;
/// import com.pulumi.azurenative.digitaltwins.TimeSeriesDatabaseConnectionArgs;
/// import com.pulumi.azurenative.digitaltwins.inputs.AzureDataExplorerConnectionPropertiesArgs;
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
///         var timeSeriesDatabaseConnection = new TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", TimeSeriesDatabaseConnectionArgs.builder()
///             .properties(AzureDataExplorerConnectionPropertiesArgs.builder()
///                 .adxDatabaseName("myDatabase")
///                 .adxEndpointUri("https://mycluster.kusto.windows.net")
///                 .adxRelationshipLifecycleEventsTableName("myRelationshipLifecycleEventsTable")
///                 .adxResourceId("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster")
///                 .adxTableName("myPropertyUpdatesTable")
///                 .adxTwinLifecycleEventsTableName("myTwinLifecycleEventsTable")
///                 .connectionType("AzureDataExplorer")
///                 .eventHubEndpointUri("sb://myeh.servicebus.windows.net/")
///                 .eventHubEntityPath("myeh")
///                 .eventHubNamespaceResourceId("/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh")
///                 .recordPropertyAndItemRemovals("true")
///                 .build())
///             .resourceGroupName("resRg")
///             .resourceName("myDigitalTwinsService")
///             .timeSeriesDatabaseConnectionName("myConnection")
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
/// const timeSeriesDatabaseConnection = new azure_native.digitaltwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection", {
///     properties: {
///         adxDatabaseName: "myDatabase",
///         adxEndpointUri: "https://mycluster.kusto.windows.net",
///         adxRelationshipLifecycleEventsTableName: "myRelationshipLifecycleEventsTable",
///         adxResourceId: "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///         adxTableName: "myPropertyUpdatesTable",
///         adxTwinLifecycleEventsTableName: "myTwinLifecycleEventsTable",
///         connectionType: "AzureDataExplorer",
///         eventHubEndpointUri: "sb://myeh.servicebus.windows.net/",
///         eventHubEntityPath: "myeh",
///         eventHubNamespaceResourceId: "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///         recordPropertyAndItemRemovals: azure_native.digitaltwins.RecordPropertyAndItemRemovals.True,
///     },
///     resourceGroupName: "resRg",
///     resourceName: "myDigitalTwinsService",
///     timeSeriesDatabaseConnectionName: "myConnection",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// time_series_database_connection = azure_native.digitaltwins.TimeSeriesDatabaseConnection("timeSeriesDatabaseConnection",
///     properties={
///         "adx_database_name": "myDatabase",
///         "adx_endpoint_uri": "https://mycluster.kusto.windows.net",
///         "adx_relationship_lifecycle_events_table_name": "myRelationshipLifecycleEventsTable",
///         "adx_resource_id": "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster",
///         "adx_table_name": "myPropertyUpdatesTable",
///         "adx_twin_lifecycle_events_table_name": "myTwinLifecycleEventsTable",
///         "connection_type": "AzureDataExplorer",
///         "event_hub_endpoint_uri": "sb://myeh.servicebus.windows.net/",
///         "event_hub_entity_path": "myeh",
///         "event_hub_namespace_resource_id": "/subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh",
///         "record_property_and_item_removals": azure_native.digitaltwins.RecordPropertyAndItemRemovals.TRUE,
///     },
///     resource_group_name="resRg",
///     resource_name_="myDigitalTwinsService",
///     time_series_database_connection_name="myConnection")
///
/// ```
///
/// ```yaml
/// resources:
///   timeSeriesDatabaseConnection:
///     type: azure-native:digitaltwins:TimeSeriesDatabaseConnection
///     properties:
///       properties:
///         adxDatabaseName: myDatabase
///         adxEndpointUri: https://mycluster.kusto.windows.net
///         adxRelationshipLifecycleEventsTableName: myRelationshipLifecycleEventsTable
///         adxResourceId: /subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.Kusto/clusters/mycluster
///         adxTableName: myPropertyUpdatesTable
///         adxTwinLifecycleEventsTableName: myTwinLifecycleEventsTable
///         connectionType: AzureDataExplorer
///         eventHubEndpointUri: sb://myeh.servicebus.windows.net/
///         eventHubEntityPath: myeh
///         eventHubNamespaceResourceId: /subscriptions/c493073e-2460-45ba-a403-f3e0df1e9feg/resourceGroups/testrg/providers/Microsoft.EventHub/namespaces/myeh
///         recordPropertyAndItemRemovals: 'true'
///       resourceGroupName: resRg
///       resourceName: myDigitalTwinsService
///       timeSeriesDatabaseConnectionName: myConnection
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
/// $ pulumi import azure-native:digitaltwins:TimeSeriesDatabaseConnection myConnection /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DigitalTwins/digitalTwinsInstances/{resourceName}/timeSeriesDatabaseConnections/{timeSeriesDatabaseConnectionName}
/// ```
class TimeSeriesDatabaseConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Extension resource name.
  late final pulumi.Output<String> name;

  /// Properties of a specific time series database connection.
  late final pulumi.Output<AzureDataExplorerConnectionPropertiesResponse>
  properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [TimeSeriesDatabaseConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TimeSeriesDatabaseConnection]. {@macro pulumi_digitaltwins_time_series_database_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TimeSeriesDatabaseConnection(
    String name, {
    TimeSeriesDatabaseConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:digitaltwins:TimeSeriesDatabaseConnection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AzureDataExplorerConnectionPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AzureDataExplorerConnectionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
