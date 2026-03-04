import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_version_response.dart';
import 'registry_model_version_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Registry Model Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryModelVersion = new AzureNative.MachineLearningServices.RegistryModelVersion("registryModelVersion", new()
///     {
///         ModelName = "string",
///         ModelVersionProperties = new AzureNative.MachineLearningServices.Inputs.ModelVersionArgs
///         {
///             Description = "string",
///             Flavors =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.FlavorDataArgs
///                 {
///                     Data =
///                     {
///                         { "string", "string" },
///                     },
///                 } },
///             },
///             IsAnonymous = false,
///             ModelType = "CustomModel",
///             ModelUri = "string",
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         RegistryName = "my-aml-registry",
///         ResourceGroupName = "test-rg",
///         Version = "string",
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
/// 		_, err := machinelearningservices.NewRegistryModelVersion(ctx, "registryModelVersion", &machinelearningservices.RegistryModelVersionArgs{
/// 			ModelName: pulumi.String("string"),
/// 			ModelVersionProperties: &machinelearningservices.ModelVersionTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				Flavors: machinelearningservices.FlavorDataMap{
/// 					"string": &machinelearningservices.FlavorDataArgs{
/// 						Data: pulumi.StringMap{
/// 							"string": pulumi.String("string"),
/// 						},
/// 					},
/// 				},
/// 				IsAnonymous: pulumi.Bool(false),
/// 				ModelType:   pulumi.String("CustomModel"),
/// 				ModelUri:    pulumi.String("string"),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			RegistryName:      pulumi.String("my-aml-registry"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Version:           pulumi.String("string"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryModelVersion;
/// import com.pulumi.azurenative.machinelearningservices.RegistryModelVersionArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.ModelVersionArgs;
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
///         var registryModelVersion = new RegistryModelVersion("registryModelVersion", RegistryModelVersionArgs.builder()
///             .modelName("string")
///             .modelVersionProperties(ModelVersionArgs.builder()
///                 .description("string")
///                 .flavors(Map.of("string", FlavorDataArgs.builder()
///                     .data(Map.of("string", "string"))
///                     .build()))
///                 .isAnonymous(false)
///                 .modelType("CustomModel")
///                 .modelUri("string")
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .registryName("my-aml-registry")
///             .resourceGroupName("test-rg")
///             .version("string")
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
/// const registryModelVersion = new azure_native.machinelearningservices.RegistryModelVersion("registryModelVersion", {
///     modelName: "string",
///     modelVersionProperties: {
///         description: "string",
///         flavors: {
///             string: {
///                 data: {
///                     string: "string",
///                 },
///             },
///         },
///         isAnonymous: false,
///         modelType: "CustomModel",
///         modelUri: "string",
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///     },
///     registryName: "my-aml-registry",
///     resourceGroupName: "test-rg",
///     version: "string",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_model_version = azure_native.machinelearningservices.RegistryModelVersion("registryModelVersion",
///     model_name="string",
///     model_version_properties={
///         "description": "string",
///         "flavors": {
///             "string": {
///                 "data": {
///                     "string": "string",
///                 },
///             },
///         },
///         "is_anonymous": False,
///         "model_type": "CustomModel",
///         "model_uri": "string",
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     registry_name="my-aml-registry",
///     resource_group_name="test-rg",
///     version="string")
///
/// ```
///
/// ```yaml
/// resources:
///   registryModelVersion:
///     type: azure-native:machinelearningservices:RegistryModelVersion
///     properties:
///       modelName: string
///       modelVersionProperties:
///         description: string
///         flavors:
///           string:
///             data:
///               string: string
///         isAnonymous: false
///         modelType: CustomModel
///         modelUri: string
///         properties:
///           string: string
///         tags:
///           string: string
///       registryName: my-aml-registry
///       resourceGroupName: test-rg
///       version: string
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
/// $ pulumi import azure-native:machinelearningservices:RegistryModelVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/models/{modelName}/versions/{version}
/// ```
class RegistryModelVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ModelVersionResponse> modelVersionProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryModelVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryModelVersion]. {@macro pulumi_machinelearningservices_registry_model_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryModelVersion(
    String name, {
    RegistryModelVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:RegistryModelVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    modelVersionProperties = registerOutput<ModelVersionResponse>(
      'modelVersionProperties',
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
