import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_container_properties_response.dart';
import 'registry_data_container_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Registry Data Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryDataContainer = new AzureNative.MachineLearningServices.RegistryDataContainer("registryDataContainer", new()
///     {
///         Name = "string",
///         Properties = new AzureNative.MachineLearningServices.Inputs.DataContainerPropertiesArgs
///         {
///             DataType = AzureNative.MachineLearningServices.DataType.Uri_folder,
///             Description = "string",
///             IsArchived = false,
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         RegistryName = "registryName",
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewRegistryDataContainer(ctx, "registryDataContainer", &machinelearningservices.RegistryDataContainerArgs{
/// 			Name: pulumi.String("string"),
/// 			Properties: &machinelearningservices.DataContainerPropertiesArgs{
/// 				DataType:    pulumi.String(machinelearningservices.DataType_Uri_folder),
/// 				Description: pulumi.String("string"),
/// 				IsArchived:  pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			RegistryName:      pulumi.String("registryName"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_machinelearningservices_registrydatacontainer" "registryDataContainer" {
///   name = "string"
///   properties = {
///     data_type   = "uri_folder"
///     description = "string"
///     is_archived = false
///     properties = {
///       "string" = "string"
///     }
///     tags = {
///       "string" = "string"
///     }
///   }
///   registry_name       = "registryName"
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryDataContainer;
/// import com.pulumi.azurenative.machinelearningservices.RegistryDataContainerArgs;
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
///         var registryDataContainer = new RegistryDataContainer("registryDataContainer", RegistryDataContainerArgs.builder()
///             .name("string")
///             .properties(DataContainerPropertiesArgs.builder()
///                 .dataType("uri_folder")
///                 .description("string")
///                 .isArchived(false)
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .registryName("registryName")
///             .resourceGroupName("test-rg")
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
/// const registryDataContainer = new azure_native.machinelearningservices.RegistryDataContainer("registryDataContainer", {
///     name: "string",
///     properties: {
///         dataType: azure_native.machinelearningservices.DataType.Uri_folder,
///         description: "string",
///         isArchived: false,
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///     },
///     registryName: "registryName",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_data_container = azure_native.machinelearningservices.RegistryDataContainer("registryDataContainer",
///     name="string",
///     properties={
///         "data_type": azure_native.machinelearningservices.DataType.URI_FOLDER,
///         "description": "string",
///         "is_archived": False,
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     registry_name="registryName",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   registryDataContainer:
///     type: azure-native:machinelearningservices:RegistryDataContainer
///     properties:
///       name: string
///       properties:
///         dataType: uri_folder
///         description: string
///         isArchived: false
///         properties:
///           string: string
///         tags:
///           string: string
///       registryName: registryName
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:machinelearningservices:RegistryDataContainer string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/data/{name}
/// ```
class RegistryDataContainer extends pulumi.CustomResource {
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

  /// Creates a new [RegistryDataContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryDataContainer]. {@macro pulumi_machinelearningservices_registry_data_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryDataContainer(
    String name, {
    RegistryDataContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryDataContainer',
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
}
