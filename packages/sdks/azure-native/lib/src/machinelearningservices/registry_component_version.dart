import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_version_properties_response.dart';
import 'registry_component_version_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Registry Component Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryComponentVersion = new AzureNative.MachineLearningServices.RegistryComponentVersion("registryComponentVersion", new()
///     {
///         ComponentName = "string",
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
/// 		_, err := machinelearningservices.NewRegistryComponentVersion(ctx, "registryComponentVersion", &machinelearningservices.RegistryComponentVersionArgs{
/// 			ComponentName: pulumi.String("string"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_registrycomponentversion" "registryComponentVersion" {
///   component_name = "string"
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
///   registry_name       = "my-aml-registry"
///   resource_group_name = "test-rg"
///   version             = "string"
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryComponentVersion;
/// import com.pulumi.azurenative.machinelearningservices.RegistryComponentVersionArgs;
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
///         var registryComponentVersion = new RegistryComponentVersion("registryComponentVersion", RegistryComponentVersionArgs.builder()
///             .componentName("string")
///             .properties(ComponentVersionPropertiesArgs.builder()
///                 .componentSpec(Map.of("8ced901b-d826-477d-bfef-329da9672513", null))
///                 .description("string")
///                 .isAnonymous(false)
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
/// const registryComponentVersion = new azure_native.machinelearningservices.RegistryComponentVersion("registryComponentVersion", {
///     componentName: "string",
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
/// registry_component_version = azure_native.machinelearningservices.RegistryComponentVersion("registryComponentVersion",
///     component_name="string",
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
///     registry_name="my-aml-registry",
///     resource_group_name="test-rg",
///     version="string")
///
/// ```
///
/// ```yaml
/// resources:
///   registryComponentVersion:
///     type: azure-native:machinelearningservices:RegistryComponentVersion
///     properties:
///       componentName: string
///       properties:
///         componentSpec:
///           8ced901b-d826-477d-bfef-329da9672513: null
///         description: string
///         isAnonymous: false
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
/// $ pulumi import azure-native:machinelearningservices:RegistryComponentVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/components/{componentName}/versions/{version}
/// ```
class RegistryComponentVersion extends pulumi.CustomResource {
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

  /// Creates a new [RegistryComponentVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryComponentVersion]. {@macro pulumi_machinelearningservices_registry_component_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryComponentVersion(
    String name, {
    RegistryComponentVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryComponentVersion',
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

  /// Creates a typed reference to an existing [RegistryComponentVersion] resource.
  RegistryComponentVersion.reference(String urn)
    : super(
        'azure-native:machinelearningservices:RegistryComponentVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ComponentVersionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComponentVersionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
