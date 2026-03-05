import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_version_response.dart';
import 'registry_code_version_args.dart';
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
/// ### CreateOrUpdate Registry Code Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryCodeVersion = new AzureNative.MachineLearningServices.RegistryCodeVersion("registryCodeVersion", new()
///     {
///         CodeName = "string",
///         CodeVersionProperties = new AzureNative.MachineLearningServices.Inputs.CodeVersionArgs
///         {
///             CodeUri = "https://blobStorage/folderName",
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
/// 		_, err := machinelearningservices.NewRegistryCodeVersion(ctx, "registryCodeVersion", &machinelearningservices.RegistryCodeVersionArgs{
/// 			CodeName: pulumi.String("string"),
/// 			CodeVersionProperties: &machinelearningservices.CodeVersionTypeArgs{
/// 				CodeUri:     pulumi.String("https://blobStorage/folderName"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.machinelearningservices.RegistryCodeVersion;
/// import com.pulumi.azurenative.machinelearningservices.RegistryCodeVersionArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.CodeVersionArgs;
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
///         var registryCodeVersion = new RegistryCodeVersion("registryCodeVersion", RegistryCodeVersionArgs.builder()
///             .codeName("string")
///             .codeVersionProperties(CodeVersionArgs.builder()
///                 .codeUri("https://blobStorage/folderName")
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
/// const registryCodeVersion = new azure_native.machinelearningservices.RegistryCodeVersion("registryCodeVersion", {
///     codeName: "string",
///     codeVersionProperties: {
///         codeUri: "https://blobStorage/folderName",
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
/// registry_code_version = azure_native.machinelearningservices.RegistryCodeVersion("registryCodeVersion",
///     code_name="string",
///     code_version_properties={
///         "code_uri": "https://blobStorage/folderName",
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
///   registryCodeVersion:
///     type: azure-native:machinelearningservices:RegistryCodeVersion
///     properties:
///       codeName: string
///       codeVersionProperties:
///         codeUri: https://blobStorage/folderName
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
/// $ pulumi import azure-native:machinelearningservices:RegistryCodeVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/codes/{codeName}/versions/{version}
/// ```
class RegistryCodeVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<CodeVersionResponse> codeVersionProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryCodeVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryCodeVersion]. {@macro pulumi_machinelearningservices_registry_code_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryCodeVersion(
    String name, {
    RegistryCodeVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:RegistryCodeVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    codeVersionProperties = registerOutput<CodeVersionResponse>(
      'codeVersionProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CodeVersionResponse.fromMap(
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
