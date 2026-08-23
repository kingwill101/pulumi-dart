import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_version_args.dart';
import 'component_version_properties_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Component Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var componentVersion = new AzureNative.MachineLearningServices.ComponentVersion("componentVersion", new()
///     {
///         Name = "string",
///         Properties = new AzureNative.MachineLearningServices.Inputs.ComponentVersionPropertiesArgs
///         {
///             ComponentSpec = new Dictionary<string, object?>
///             {
///                 ["8ced901b-d826-477d-bfef-329da9672513"] = null,
///             },
///             Description = "string",
///             IsAnonymous = false,
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
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
/// 		_, err := machinelearningservices.NewComponentVersion(ctx, "componentVersion", &machinelearningservices.ComponentVersionArgs{
/// 			Name: pulumi.String("string"),
/// 			Properties: &machinelearningservices.ComponentVersionPropertiesArgs{
/// 				ComponentSpec: pulumi.Any(map[string]interface{}{
/// 					"8ced901b-d826-477d-bfef-329da9672513": nil,
/// 				}),
/// 				Description: pulumi.String("string"),
/// 				IsAnonymous: pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_componentversion" "componentVersion" {
///   name = "string"
///   properties = {
///     component_spec = {
///       "8ced901b-d826-477d-bfef-329da9672513" = null
///     }
///     description  = "string"
///     is_anonymous = false
///     properties = {
///       "string" = "string"
///     }
///     tags = {
///       "string" = "string"
///     }
///   }
///   resource_group_name = "test-rg"
///   version             = "string"
///   workspace_name      = "my-aml-workspace"
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
/// import com.pulumi.azurenative.machinelearningservices.ComponentVersion;
/// import com.pulumi.azurenative.machinelearningservices.ComponentVersionArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.ComponentVersionPropertiesArgs;
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
///         var componentVersion = new ComponentVersion("componentVersion", ComponentVersionArgs.builder()
///             .name("string")
///             .properties(ComponentVersionPropertiesArgs.builder()
///                 .componentSpec(Map.of("8ced901b-d826-477d-bfef-329da9672513", null))
///                 .description("string")
///                 .isAnonymous(false)
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .build())
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
/// const componentVersion = new azure_native.machinelearningservices.ComponentVersion("componentVersion", {
///     name: "string",
///     properties: {
///         componentSpec: {
///             "8ced901b-d826-477d-bfef-329da9672513": null,
///         },
///         description: "string",
///         isAnonymous: false,
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///     },
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
/// component_version = azure_native.machinelearningservices.ComponentVersion("componentVersion",
///     name="string",
///     properties={
///         "component_spec": {
///             "8ced901b-d826-477d-bfef-329da9672513": None,
///         },
///         "description": "string",
///         "is_anonymous": False,
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     resource_group_name="test-rg",
///     version="string",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   componentVersion:
///     type: azure-native:machinelearningservices:ComponentVersion
///     properties:
///       name: string
///       properties:
///         componentSpec:
///           8ced901b-d826-477d-bfef-329da9672513: null
///         description: string
///         isAnonymous: false
///         properties:
///           string: string
///         tags:
///           string: string
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
/// $ pulumi import azure-native:machinelearningservices:ComponentVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/components/{name}/versions/{version}
/// ```
class ComponentVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ComponentVersionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ComponentVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComponentVersion]. {@macro pulumi_machinelearningservices_component_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComponentVersion(
    String name, {
    ComponentVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:ComponentVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ComponentVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComponentVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
