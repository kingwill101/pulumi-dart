import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_manager_for_agriculture_resource_args.dart';
import 'identity_response.dart';
import 'sensor_integration_response.dart';
import 'system_data_response.dart';

/// Data Manager For Agriculture ARM Resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DataManagerForAgricultureResources_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataManagerForAgricultureResource = new AzureNative.AgFoodPlatform.DataManagerForAgricultureResource("dataManagerForAgricultureResource", new()
///     {
///         DataManagerForAgricultureResourceName = "examples-farmbeatsResourceName",
///         Location = "eastus2",
///         ResourceGroupName = "examples-rg",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	agfoodplatform "github.com/pulumi/pulumi-azure-native-sdk/agfoodplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := agfoodplatform.NewDataManagerForAgricultureResource(ctx, "dataManagerForAgricultureResource", &agfoodplatform.DataManagerForAgricultureResourceArgs{
/// 			DataManagerForAgricultureResourceName: pulumi.String("examples-farmbeatsResourceName"),
/// 			Location:                              pulumi.String("eastus2"),
/// 			ResourceGroupName:                     pulumi.String("examples-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.agfoodplatform.DataManagerForAgricultureResource;
/// import com.pulumi.azurenative.agfoodplatform.DataManagerForAgricultureResourceArgs;
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
///         var dataManagerForAgricultureResource = new DataManagerForAgricultureResource("dataManagerForAgricultureResource", DataManagerForAgricultureResourceArgs.builder()
///             .dataManagerForAgricultureResourceName("examples-farmbeatsResourceName")
///             .location("eastus2")
///             .resourceGroupName("examples-rg")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
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
/// const dataManagerForAgricultureResource = new azure_native.agfoodplatform.DataManagerForAgricultureResource("dataManagerForAgricultureResource", {
///     dataManagerForAgricultureResourceName: "examples-farmbeatsResourceName",
///     location: "eastus2",
///     resourceGroupName: "examples-rg",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_manager_for_agriculture_resource = azure_native.agfoodplatform.DataManagerForAgricultureResource("dataManagerForAgricultureResource",
///     data_manager_for_agriculture_resource_name="examples-farmbeatsResourceName",
///     location="eastus2",
///     resource_group_name="examples-rg",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   dataManagerForAgricultureResource:
///     type: azure-native:agfoodplatform:DataManagerForAgricultureResource
///     properties:
///       dataManagerForAgricultureResourceName: examples-farmbeatsResourceName
///       location: eastus2
///       resourceGroupName: examples-rg
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:agfoodplatform:DataManagerForAgricultureResource examples-farmbeatsResourceName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AgFoodPlatform/farmBeats/{dataManagerForAgricultureResourceName}
/// ```
class DataManagerForAgricultureResource extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Identity for the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Uri of the Data Manager For Agriculture instance.
  late final pulumi.Output<String> instanceUri;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Private endpoints.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Data Manager For Agriculture instance provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Property to allow or block public traffic for an Azure Data Manager For Agriculture resource.
  late final pulumi.Output<String?> publicNetworkAccess;

  /// Sensor integration request model.
  late final pulumi.Output<SensorIntegrationResponse?> sensorIntegration;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataManagerForAgricultureResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataManagerForAgricultureResource]. {@macro pulumi_agfoodplatform_data_manager_for_agriculture_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataManagerForAgricultureResource(
    String name, {
    DataManagerForAgricultureResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:agfoodplatform:DataManagerForAgricultureResource',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse?>('identity');
    instanceUri = registerOutput<String>('instanceUri');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    sensorIntegration = registerOutput<SensorIntegrationResponse?>(
      'sensorIntegration',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
