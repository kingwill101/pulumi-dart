import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_data_response.dart';
import 'registry_data_version_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Registry Data Version Base.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryDataVersion = new AzureNative.MachineLearningServices.RegistryDataVersion("registryDataVersion", new()
///     {
///         DataVersionBaseProperties = new AzureNative.MachineLearningServices.Inputs.MLTableDataArgs
///         {
///             DataType = "mltable",
///             DataUri = "string",
///             Description = "string",
///             IsAnonymous = false,
///             IsArchived = false,
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             ReferencedUris = new[]
///             {
///                 "string",
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         RegistryName = "registryName",
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
/// 		_, err := machinelearningservices.NewRegistryDataVersion(ctx, "registryDataVersion", &machinelearningservices.RegistryDataVersionArgs{
/// 			DataVersionBaseProperties: &machinelearningservices.MLTableDataArgs{
/// 				DataType:    pulumi.String("mltable"),
/// 				DataUri:     pulumi.String("string"),
/// 				Description: pulumi.String("string"),
/// 				IsAnonymous: pulumi.Bool(false),
/// 				IsArchived:  pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				ReferencedUris: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			RegistryName:      pulumi.String("registryName"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryDataVersion;
/// import com.pulumi.azurenative.machinelearningservices.RegistryDataVersionArgs;
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
///         var registryDataVersion = new RegistryDataVersion("registryDataVersion", RegistryDataVersionArgs.builder()
///             .dataVersionBaseProperties(MLTableDataArgs.builder()
///                 .dataType("mltable")
///                 .dataUri("string")
///                 .description("string")
///                 .isAnonymous(false)
///                 .isArchived(false)
///                 .properties(Map.of("string", "string"))
///                 .referencedUris("string")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .registryName("registryName")
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
/// const registryDataVersion = new azure_native.machinelearningservices.RegistryDataVersion("registryDataVersion", {
///     dataVersionBaseProperties: {
///         dataType: "mltable",
///         dataUri: "string",
///         description: "string",
///         isAnonymous: false,
///         isArchived: false,
///         properties: {
///             string: "string",
///         },
///         referencedUris: ["string"],
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     registryName: "registryName",
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
/// registry_data_version = azure_native.machinelearningservices.RegistryDataVersion("registryDataVersion",
///     data_version_base_properties={
///         "data_type": "mltable",
///         "data_uri": "string",
///         "description": "string",
///         "is_anonymous": False,
///         "is_archived": False,
///         "properties": {
///             "string": "string",
///         },
///         "referenced_uris": ["string"],
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     registry_name="registryName",
///     resource_group_name="test-rg",
///     version="string")
///
/// ```
///
/// ```yaml
/// resources:
///   registryDataVersion:
///     type: azure-native:machinelearningservices:RegistryDataVersion
///     properties:
///       dataVersionBaseProperties:
///         dataType: mltable
///         dataUri: string
///         description: string
///         isAnonymous: false
///         isArchived: false
///         properties:
///           string: string
///         referencedUris:
///           - string
///         tags:
///           string: string
///       name: string
///       registryName: registryName
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
/// $ pulumi import azure-native:machinelearningservices:RegistryDataVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/data/{name}/versions/{version}
/// ```
class RegistryDataVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<MLTableDataResponse> dataVersionBaseProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryDataVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryDataVersion]. {@macro pulumi_machinelearningservices_registry_data_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryDataVersion(
    String name, {
    RegistryDataVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:RegistryDataVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataVersionBaseProperties = registerOutput<MLTableDataResponse>(
      'dataVersionBaseProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MLTableDataResponse.fromMap(
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
