import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_args.dart';
import 'model_container_response.dart';
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
/// ### CreateOrUpdate Workspace Model Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var modelContainer = new AzureNative.MachineLearningServices.ModelContainer("modelContainer", new()
///     {
///         ModelContainerProperties = new AzureNative.MachineLearningServices.Inputs.ModelContainerArgs
///         {
///             Description = "Model container description",
///             Tags =
///             {
///                 { "tag1", "value1" },
///                 { "tag2", "value2" },
///             },
///         },
///         Name = "testContainer",
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
/// 		_, err := machinelearningservices.NewModelContainer(ctx, "modelContainer", &machinelearningservices.ModelContainerArgs{
/// 			ModelContainerProperties: &machinelearningservices.ModelContainerTypeArgs{
/// 				Description: pulumi.String("Model container description"),
/// 				Tags: pulumi.StringMap{
/// 					"tag1": pulumi.String("value1"),
/// 					"tag2": pulumi.String("value2"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("testContainer"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.ModelContainer;
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
///         var modelContainer = new ModelContainer("modelContainer", ModelContainerArgs.builder()
///             .modelContainerProperties(ModelContainerArgs.builder()
///                 .description("Model container description")
///                 .tags(Map.ofEntries(
///                     Map.entry("tag1", "value1"),
///                     Map.entry("tag2", "value2")
///                 ))
///                 .build())
///             .name("testContainer")
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
/// const modelContainer = new azure_native.machinelearningservices.ModelContainer("modelContainer", {
///     modelContainerProperties: {
///         description: "Model container description",
///         tags: {
///             tag1: "value1",
///             tag2: "value2",
///         },
///     },
///     name: "testContainer",
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
/// model_container = azure_native.machinelearningservices.ModelContainer("modelContainer",
///     model_container_properties={
///         "description": "Model container description",
///         "tags": {
///             "tag1": "value1",
///             "tag2": "value2",
///         },
///     },
///     name="testContainer",
///     resource_group_name="testrg123",
///     workspace_name="workspace123")
///
/// ```
///
/// ```yaml
/// resources:
///   modelContainer:
///     type: azure-native:machinelearningservices:ModelContainer
///     properties:
///       modelContainerProperties:
///         description: Model container description
///         tags:
///           tag1: value1
///           tag2: value2
///       name: testContainer
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
/// $ pulumi import azure-native:machinelearningservices:ModelContainer testContainer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/models/{name}
/// ```
class ModelContainerMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ModelContainerResponse> modelContainerProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ModelContainerMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelContainerMachinelearningservices]. {@macro pulumi_machinelearningservices_model_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelContainerMachinelearningservices(
    String name, {
    ModelContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ModelContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    modelContainerProperties = registerOutput<ModelContainerResponse>('modelContainerProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModelContainerResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
