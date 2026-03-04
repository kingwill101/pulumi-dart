import 'package:pulumi/pulumi.dart' as pulumi;
import 'featurestore_entity_version_args.dart';
import 'featurestore_entity_version_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Featurestore Entity Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featurestoreEntityVersion = new AzureNative.MachineLearningServices.FeaturestoreEntityVersion("featurestoreEntityVersion", new()
///     {
///         FeaturestoreEntityVersionProperties = new AzureNative.MachineLearningServices.Inputs.FeaturestoreEntityVersionArgs
///         {
///             Description = "string",
///             IndexColumns = new[]
///             {
///                 new AzureNative.MachineLearningServices.Inputs.IndexColumnArgs
///                 {
///                     ColumnName = "string",
///                     DataType = AzureNative.MachineLearningServices.FeatureDataType.Datetime,
///                 },
///             },
///             IsAnonymous = false,
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
/// 		_, err := machinelearningservices.NewFeaturestoreEntityVersion(ctx, "featurestoreEntityVersion", &machinelearningservices.FeaturestoreEntityVersionArgs{
/// 			FeaturestoreEntityVersionProperties: &machinelearningservices.FeaturestoreEntityVersionTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				IndexColumns: machinelearningservices.IndexColumnArray{
/// 					&machinelearningservices.IndexColumnArgs{
/// 						ColumnName: pulumi.String("string"),
/// 						DataType:   pulumi.String(machinelearningservices.FeatureDataTypeDatetime),
/// 					},
/// 				},
/// 				IsAnonymous: pulumi.Bool(false),
/// 				IsArchived:  pulumi.Bool(false),
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
/// import com.pulumi.azurenative.machinelearningservices.FeaturestoreEntityVersion;
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
///         var featurestoreEntityVersion = new FeaturestoreEntityVersion("featurestoreEntityVersion", FeaturestoreEntityVersionArgs.builder()
///             .featurestoreEntityVersionProperties(FeaturestoreEntityVersionArgs.builder()
///                 .description("string")
///                 .indexColumns(IndexColumnArgs.builder()
///                     .columnName("string")
///                     .dataType("Datetime")
///                     .build())
///                 .isAnonymous(false)
///                 .isArchived(false)
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
/// const featurestoreEntityVersion = new azure_native.machinelearningservices.FeaturestoreEntityVersion("featurestoreEntityVersion", {
///     featurestoreEntityVersionProperties: {
///         description: "string",
///         indexColumns: [{
///             columnName: "string",
///             dataType: azure_native.machinelearningservices.FeatureDataType.Datetime,
///         }],
///         isAnonymous: false,
///         isArchived: false,
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
/// featurestore_entity_version = azure_native.machinelearningservices.FeaturestoreEntityVersion("featurestoreEntityVersion",
///     featurestore_entity_version_properties={
///         "description": "string",
///         "index_columns": [{
///             "column_name": "string",
///             "data_type": azure_native.machinelearningservices.FeatureDataType.DATETIME,
///         }],
///         "is_anonymous": False,
///         "is_archived": False,
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
///   featurestoreEntityVersion:
///     type: azure-native:machinelearningservices:FeaturestoreEntityVersion
///     properties:
///       featurestoreEntityVersionProperties:
///         description: string
///         indexColumns:
///           - columnName: string
///             dataType: Datetime
///         isAnonymous: false
///         isArchived: false
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
/// $ pulumi import azure-native:machinelearningservices:FeaturestoreEntityVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/featurestoreEntities/{name}/versions/{version}
/// ```
class FeaturestoreEntityVersionMachinelearningservices
    extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<FeaturestoreEntityVersionResponse>
  featurestoreEntityVersionProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FeaturestoreEntityVersionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeaturestoreEntityVersionMachinelearningservices]. {@macro pulumi_machinelearningservices_featurestore_entity_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeaturestoreEntityVersionMachinelearningservices(
    String name, {
    FeaturestoreEntityVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:FeaturestoreEntityVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    featurestoreEntityVersionProperties =
        registerOutput<FeaturestoreEntityVersionResponse>(
          'featurestoreEntityVersionProperties',
        );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
