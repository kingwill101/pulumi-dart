import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_version_args.dart';
import 'model_version_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Model Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var modelVersion = new AzureNative.MachineLearningServices.ModelVersion("modelVersion", new()
///     {
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
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         Version = "string",
///         WorkspaceName = "my-aml-workspace",
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
/// 		_, err := machinelearningservices.NewModelVersion(ctx, "modelVersion", &machinelearningservices.ModelVersionArgs{
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
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Version:           pulumi.String("string"),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.ModelVersion;
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
///         var modelVersion = new ModelVersion("modelVersion", ModelVersionArgs.builder()
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
///             .name("string")
///             .resourceGroupName("test-rg")
///             .version("string")
///             .workspaceName("my-aml-workspace")
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
/// const modelVersion = new azure_native.machinelearningservices.ModelVersion("modelVersion", {
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
///     name: "string",
///     resourceGroupName: "test-rg",
///     version: "string",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// model_version = azure_native.machinelearningservices.ModelVersion("modelVersion",
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
///     name="string",
///     resource_group_name="test-rg",
///     version="string",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   modelVersion:
///     type: azure-native:machinelearningservices:ModelVersion
///     properties:
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
///       name: string
///       resourceGroupName: test-rg
///       version: string
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:ModelVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/models/{name}/versions/{version}
/// ```
class ModelVersionMachinelearningservices extends pulumi.CustomResource {
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

  /// Creates a new [ModelVersionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelVersionMachinelearningservices]. {@macro pulumi_machinelearningservices_model_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelVersionMachinelearningservices(
    String name, {
    ModelVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:ModelVersion',
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
