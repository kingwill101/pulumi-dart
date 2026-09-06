import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_args.dart';
import 'environment_container_properties_response.dart';
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
///         Name = "testEnvironment",
///         Properties = new AzureNative.MachineLearningServices.Inputs.EnvironmentContainerPropertiesArgs
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
/// 			Name: pulumi.String("testEnvironment"),
/// 			Properties: &machinelearningservices.EnvironmentContainerPropertiesArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_environmentcontainer" "environmentContainer" {
///   name = "testEnvironment"
///   properties = {
///     description = "string"
///     properties = {
///       "additionalProp1" = "string"
///       "additionalProp2" = "string"
///       "additionalProp3" = "string"
///     }
///     tags = {
///       "additionalProp1" = "string"
///       "additionalProp2" = "string"
///       "additionalProp3" = "string"
///     }
///   }
///   resource_group_name = "testrg123"
///   workspace_name      = "testworkspace"
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
/// import com.pulumi.azurenative.machinelearningservices.EnvironmentContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.EnvironmentContainerPropertiesArgs;
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
///         var environmentContainer = new EnvironmentContainer("environmentContainer", EnvironmentContainerArgs.builder()
///             .name("testEnvironment")
///             .properties(EnvironmentContainerPropertiesArgs.builder()
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
///     name: "testEnvironment",
///     properties: {
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
///     name="testEnvironment",
///     properties={
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
///       name: testEnvironment
///       properties:
///         description: string
///         properties:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///         tags:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
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
class EnvironmentContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentContainerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentContainer]. {@macro pulumi_machinelearningservices_environment_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentContainer(
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
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnvironmentContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EnvironmentContainer] resource.
  EnvironmentContainer.reference(String urn)
    : super(
        'azure-native:machinelearningservices:EnvironmentContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnvironmentContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
