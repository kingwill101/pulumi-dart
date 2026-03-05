import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_args.dart';
import 'environment_container_response.dart';
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
/// ### CreateOrUpdate Workspace Environment Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environmentContainer = new AzureNative.MachineLearningServices.EnvironmentContainer("environmentContainer", new()
///     {
///         EnvironmentContainerProperties = new AzureNative.MachineLearningServices.Inputs.EnvironmentContainerArgs
///         {
///             Description = "string",
///             Properties =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///             Tags =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///         },
///         Name = "testEnvironment",
///         ResourceGroupName = "testrg123",
///         WorkspaceName = "testworkspace",
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
/// 		_, err := machinelearningservices.NewEnvironmentContainer(ctx, "environmentContainer", &machinelearningservices.EnvironmentContainerArgs{
/// 			EnvironmentContainerProperties: &machinelearningservices.EnvironmentContainerTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				Properties: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("testEnvironment"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			WorkspaceName:     pulumi.String("testworkspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.EnvironmentContainer;
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
///         var environmentContainer = new EnvironmentContainer("environmentContainer", EnvironmentContainerArgs.builder()
///             .environmentContainerProperties(EnvironmentContainerArgs.builder()
///                 .description("string")
///                 .properties(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .tags(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .build())
///             .name("testEnvironment")
///             .resourceGroupName("testrg123")
///             .workspaceName("testworkspace")
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
/// const environmentContainer = new azure_native.machinelearningservices.EnvironmentContainer("environmentContainer", {
///     environmentContainerProperties: {
///         description: "string",
///         properties: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///         tags: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///     },
///     name: "testEnvironment",
///     resourceGroupName: "testrg123",
///     workspaceName: "testworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// environment_container = azure_native.machinelearningservices.EnvironmentContainer("environmentContainer",
///     environment_container_properties={
///         "description": "string",
///         "properties": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///         "tags": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///     },
///     name="testEnvironment",
///     resource_group_name="testrg123",
///     workspace_name="testworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   environmentContainer:
///     type: azure-native:machinelearningservices:EnvironmentContainer
///     properties:
///       environmentContainerProperties:
///         description: string
///         properties:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///         tags:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///       name: testEnvironment
///       resourceGroupName: testrg123
///       workspaceName: testworkspace
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
/// $ pulumi import azure-native:machinelearningservices:EnvironmentContainer testEnvironment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/environments/{name}
/// ```
class EnvironmentContainerMachinelearningservices
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentContainerResponse>
  environmentContainerProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentContainerMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentContainerMachinelearningservices]. {@macro pulumi_machinelearningservices_environment_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentContainerMachinelearningservices(
    String name, {
    EnvironmentContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:EnvironmentContainer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    environmentContainerProperties =
        registerOutput<EnvironmentContainerResponse>(
          'environmentContainerProperties',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EnvironmentContainerResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
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
