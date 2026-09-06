import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_container_args.dart';
import 'data_container_properties_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Data Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataContainer = new AzureNative.MachineLearningServices.DataContainer("dataContainer", new()
///     {
///         Name = "datacontainer123",
///         Properties = new AzureNative.MachineLearningServices.Inputs.DataContainerPropertiesArgs
///         {
///             DataType = "UriFile",
///             Description = "string",
///             Properties =
///             {
///                 { "properties1", "value1" },
///                 { "properties2", "value2" },
///             },
///             Tags =
///             {
///                 { "tag1", "value1" },
///                 { "tag2", "value2" },
///             },
///         },
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "workspace123",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewDataContainer(ctx, "dataContainer", &machinelearningservices.DataContainerArgs{
/// 			Name: pulumi.String("datacontainer123"),
/// 			Properties: &machinelearningservices.DataContainerPropertiesArgs{
/// 				DataType:    pulumi.String("UriFile"),
/// 				Description: pulumi.String("string"),
/// 				Properties: pulumi.StringMap{
/// 					"properties1": pulumi.String("value1"),
/// 					"properties2": pulumi.String("value2"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"tag1": pulumi.String("value1"),
/// 					"tag2": pulumi.String("value2"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("workspace123"),
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
/// resource "azure-native_machinelearningservices_datacontainer" "dataContainer" {
///   name = "datacontainer123"
///   properties = {
///     data_type   = "UriFile"
///     description = "string"
///     properties = {
///       "properties1" = "value1"
///       "properties2" = "value2"
///     }
///     tags = {
///       "tag1" = "value1"
///       "tag2" = "value2"
///     }
///   }
///   resource_group_name = "testrg123"
///   workspace_name      = "workspace123"
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
/// import com.pulumi.azurenative.machinelearningservices.DataContainer;
/// import com.pulumi.azurenative.machinelearningservices.DataContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.DataContainerPropertiesArgs;
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
///         var dataContainer = new DataContainer("dataContainer", DataContainerArgs.builder()
///             .name("datacontainer123")
///             .properties(DataContainerPropertiesArgs.builder()
///                 .dataType("UriFile")
///                 .description("string")
///                 .properties(Map.ofEntries(
///                     Map.entry("properties1", "value1"),
///                     Map.entry("properties2", "value2")
///                 ))
///                 .tags(Map.ofEntries(
///                     Map.entry("tag1", "value1"),
///                     Map.entry("tag2", "value2")
///                 ))
///                 .build())
///             .resourceGroupName("testrg123")
///             .workspaceName("workspace123")
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
/// const dataContainer = new azure_native.machinelearningservices.DataContainer("dataContainer", {
///     name: "datacontainer123",
///     properties: {
///         dataType: "UriFile",
///         description: "string",
///         properties: {
///             properties1: "value1",
///             properties2: "value2",
///         },
///         tags: {
///             tag1: "value1",
///             tag2: "value2",
///         },
///     },
///     resourceGroupName: "testrg123",
///     workspaceName: "workspace123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_container = azure_native.machinelearningservices.DataContainer("dataContainer",
///     name="datacontainer123",
///     properties={
///         "data_type": "UriFile",
///         "description": "string",
///         "properties": {
///             "properties1": "value1",
///             "properties2": "value2",
///         },
///         "tags": {
///             "tag1": "value1",
///             "tag2": "value2",
///         },
///     },
///     resource_group_name="testrg123",
///     workspace_name="workspace123")
///
/// ```
///
/// ```yaml
/// resources:
///   dataContainer:
///     type: azure-native:machinelearningservices:DataContainer
///     properties:
///       name: datacontainer123
///       properties:
///         dataType: UriFile
///         description: string
///         properties:
///           properties1: value1
///           properties2: value2
///         tags:
///           tag1: value1
///           tag2: value2
///       resourceGroupName: testrg123
///       workspaceName: workspace123
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
/// $ pulumi import azure-native:machinelearningservices:DataContainer datacontainer123 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/data/{name}
/// ```
class DataContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<DataContainerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DataContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataContainer]. {@macro pulumi_machinelearningservices_data_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataContainer(
    String name, {
    DataContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:DataContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DataContainer] resource.
  DataContainer.reference(String urn)
    : super(
        'azure-native:machinelearningservices:DataContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DataContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
