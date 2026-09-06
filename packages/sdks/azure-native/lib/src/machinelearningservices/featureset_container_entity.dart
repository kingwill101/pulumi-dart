import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_container_entity_args.dart';
import 'featureset_container_properties_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Featureset Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featuresetContainerEntity = new AzureNative.MachineLearningServices.FeaturesetContainerEntity("featuresetContainerEntity", new()
///     {
///         Name = "string",
///         Properties = new AzureNative.MachineLearningServices.Inputs.FeaturesetContainerPropertiesArgs
///         {
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
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewFeaturesetContainerEntity(ctx, "featuresetContainerEntity", &machinelearningservices.FeaturesetContainerEntityArgs{
/// 			Name: pulumi.String("string"),
/// 			Properties: &machinelearningservices.FeaturesetContainerPropertiesArgs{
/// 				Description: pulumi.String("string"),
/// 				IsArchived:  pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// resource "azure-native_machinelearningservices_featuresetcontainerentity" "featuresetContainerEntity" {
///   name = "string"
///   properties = {
///     description = "string"
///     is_archived = false
///     properties = {
///       "string" = "string"
///     }
///     tags = {
///       "string" = "string"
///     }
///   }
///   resource_group_name = "test-rg"
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
/// import com.pulumi.azurenative.machinelearningservices.FeaturesetContainerEntity;
/// import com.pulumi.azurenative.machinelearningservices.FeaturesetContainerEntityArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.FeaturesetContainerPropertiesArgs;
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
///         var featuresetContainerEntity = new FeaturesetContainerEntity("featuresetContainerEntity", FeaturesetContainerEntityArgs.builder()
///             .name("string")
///             .properties(FeaturesetContainerPropertiesArgs.builder()
///                 .description("string")
///                 .isArchived(false)
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const featuresetContainerEntity = new azure_native.machinelearningservices.FeaturesetContainerEntity("featuresetContainerEntity", {
///     name: "string",
///     properties: {
///         description: "string",
///         isArchived: false,
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// featureset_container_entity = azure_native.machinelearningservices.FeaturesetContainerEntity("featuresetContainerEntity",
///     name="string",
///     properties={
///         "description": "string",
///         "is_archived": False,
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   featuresetContainerEntity:
///     type: azure-native:machinelearningservices:FeaturesetContainerEntity
///     properties:
///       name: string
///       properties:
///         description: string
///         isArchived: false
///         properties:
///           string: string
///         tags:
///           string: string
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:machinelearningservices:FeaturesetContainerEntity string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/featuresets/{name}
/// ```
class FeaturesetContainerEntity extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<FeaturesetContainerPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FeaturesetContainerEntity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeaturesetContainerEntity]. {@macro pulumi_machinelearningservices_featureset_container_entity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeaturesetContainerEntity(
    String name, {
    FeaturesetContainerEntityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:FeaturesetContainerEntity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FeaturesetContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeaturesetContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FeaturesetContainerEntity] resource.
  FeaturesetContainerEntity.reference(String urn)
    : super(
        'azure-native:machinelearningservices:FeaturesetContainerEntity',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FeaturesetContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FeaturesetContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
