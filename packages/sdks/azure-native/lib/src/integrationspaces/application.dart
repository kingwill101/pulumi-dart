import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'system_data_response.dart';
import 'tracking_data_store_response.dart';

/// An integration application under space.
///
/// Uses Azure REST API version 2023-11-14-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-14-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateApplication
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.IntegrationSpaces.Application("application", new()
///     {
///         ApplicationName = "Application1",
///         Description = "This is the user provided description of the application.",
///         Location = "CentralUS",
///         ResourceGroupName = "testrg",
///         SpaceName = "Space1",
///         Tags =
///         {
///             { "key1", "Value1" },
///         },
///         TrackingDataStores =
///         {
///             { "dataStoreName1", new AzureNative.IntegrationSpaces.Inputs.TrackingDataStoreArgs
///             {
///                 DataStoreIngestionUri = "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///                 DataStoreResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///                 DataStoreUri = "https://someClusterName.someRegionName.kusto.windows.net",
///                 DatabaseName = "testDatabase1",
///             } },
///             { "dataStoreName2", new AzureNative.IntegrationSpaces.Inputs.TrackingDataStoreArgs
///             {
///                 DataStoreIngestionUri = "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///                 DataStoreResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///                 DataStoreUri = "https://someClusterName.someRegionName.kusto.windows.net",
///                 DatabaseName = "testDatabase1",
///             } },
///         },
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
/// 	integrationspaces "github.com/pulumi/pulumi-azure-native-sdk/integrationspaces/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := integrationspaces.NewApplication(ctx, "application", &integrationspaces.ApplicationArgs{
/// 			ApplicationName:   pulumi.String("Application1"),
/// 			Description:       pulumi.String("This is the user provided description of the application."),
/// 			Location:          pulumi.String("CentralUS"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			SpaceName:         pulumi.String("Space1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("Value1"),
/// 			},
/// 			TrackingDataStores: integrationspaces.TrackingDataStoreMap{
/// 				"dataStoreName1": &integrationspaces.TrackingDataStoreArgs{
/// 					DataStoreIngestionUri: pulumi.String("https://ingest-someClusterName.someRegionName.kusto.windows.net"),
/// 					DataStoreResourceId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1"),
/// 					DataStoreUri:          pulumi.String("https://someClusterName.someRegionName.kusto.windows.net"),
/// 					DatabaseName:          pulumi.String("testDatabase1"),
/// 				},
/// 				"dataStoreName2": &integrationspaces.TrackingDataStoreArgs{
/// 					DataStoreIngestionUri: pulumi.String("https://ingest-someClusterName.someRegionName.kusto.windows.net"),
/// 					DataStoreResourceId:   pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1"),
/// 					DataStoreUri:          pulumi.String("https://someClusterName.someRegionName.kusto.windows.net"),
/// 					DatabaseName:          pulumi.String("testDatabase1"),
/// 				},
/// 			},
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
/// import com.pulumi.azurenative.integrationspaces.Application;
/// import com.pulumi.azurenative.integrationspaces.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationName("Application1")
///             .description("This is the user provided description of the application.")
///             .location("CentralUS")
///             .resourceGroupName("testrg")
///             .spaceName("Space1")
///             .tags(Map.of("key1", "Value1"))
///             .trackingDataStores(Map.ofEntries(
///                 Map.entry("dataStoreName1", TrackingDataStoreArgs.builder()
///                     .dataStoreIngestionUri("https://ingest-someClusterName.someRegionName.kusto.windows.net")
///                     .dataStoreResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1")
///                     .dataStoreUri("https://someClusterName.someRegionName.kusto.windows.net")
///                     .databaseName("testDatabase1")
///                     .build()),
///                 Map.entry("dataStoreName2", TrackingDataStoreArgs.builder()
///                     .dataStoreIngestionUri("https://ingest-someClusterName.someRegionName.kusto.windows.net")
///                     .dataStoreResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1")
///                     .dataStoreUri("https://someClusterName.someRegionName.kusto.windows.net")
///                     .databaseName("testDatabase1")
///                     .build())
///             ))
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
/// const application = new azure_native.integrationspaces.Application("application", {
///     applicationName: "Application1",
///     description: "This is the user provided description of the application.",
///     location: "CentralUS",
///     resourceGroupName: "testrg",
///     spaceName: "Space1",
///     tags: {
///         key1: "Value1",
///     },
///     trackingDataStores: {
///         dataStoreName1: {
///             dataStoreIngestionUri: "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///             dataStoreResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///             dataStoreUri: "https://someClusterName.someRegionName.kusto.windows.net",
///             databaseName: "testDatabase1",
///         },
///         dataStoreName2: {
///             dataStoreIngestionUri: "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///             dataStoreResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///             dataStoreUri: "https://someClusterName.someRegionName.kusto.windows.net",
///             databaseName: "testDatabase1",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.integrationspaces.Application("application",
///     application_name="Application1",
///     description="This is the user provided description of the application.",
///     location="CentralUS",
///     resource_group_name="testrg",
///     space_name="Space1",
///     tags={
///         "key1": "Value1",
///     },
///     tracking_data_stores={
///         "dataStoreName1": {
///             "data_store_ingestion_uri": "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///             "data_store_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///             "data_store_uri": "https://someClusterName.someRegionName.kusto.windows.net",
///             "database_name": "testDatabase1",
///         },
///         "dataStoreName2": {
///             "data_store_ingestion_uri": "https://ingest-someClusterName.someRegionName.kusto.windows.net",
///             "data_store_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1",
///             "data_store_uri": "https://someClusterName.someRegionName.kusto.windows.net",
///             "database_name": "testDatabase1",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:integrationspaces:Application
///     properties:
///       applicationName: Application1
///       description: This is the user provided description of the application.
///       location: CentralUS
///       resourceGroupName: testrg
///       spaceName: Space1
///       tags:
///         key1: Value1
///       trackingDataStores:
///         dataStoreName1:
///           dataStoreIngestionUri: https://ingest-someClusterName.someRegionName.kusto.windows.net
///           dataStoreResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1
///           dataStoreUri: https://someClusterName.someRegionName.kusto.windows.net
///           databaseName: testDatabase1
///         dataStoreName2:
///           dataStoreIngestionUri: https://ingest-someClusterName.someRegionName.kusto.windows.net
///           dataStoreResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/testrg/providers/Microsoft.Kusto/Clusters/cluster1
///           dataStoreUri: https://someClusterName.someRegionName.kusto.windows.net
///           databaseName: testDatabase1
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
/// $ pulumi import azure-native:integrationspaces:Application Application1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.IntegrationSpaces/spaces/{spaceName}/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The description of the resource.
  late final pulumi.Output<String?> description;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The tracking data stores.
  late final pulumi.Output<Map<String, TrackingDataStoreResponse>?> trackingDataStores;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_integrationspaces_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:integrationspaces:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    trackingDataStores = registerOutput<Map<String, TrackingDataStoreResponse>?>('trackingDataStores', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<TrackingDataStoreResponse>(guardedValue, (value) => TrackingDataStoreResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
