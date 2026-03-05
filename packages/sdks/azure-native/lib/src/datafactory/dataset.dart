import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_mwsobject_dataset_response.dart';
import 'dataset_args.dart';

/// Dataset resource type.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Datasets_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new AzureNative.DataFactory.Dataset("dataset", new()
///     {
///         DatasetName = "exampleDataset",
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.AzureBlobDatasetArgs
///         {
///             FileName = new Dictionary<string, object?>
///             {
///                 ["type"] = "Expression",
///                 ["value"] = "@dataset().MyFileName",
///             },
///             FolderPath = new Dictionary<string, object?>
///             {
///                 ["type"] = "Expression",
///                 ["value"] = "@dataset().MyFolderPath",
///             },
///             Format = new AzureNative.DataFactory.Inputs.TextFormatArgs
///             {
///                 Type = "TextFormat",
///             },
///             LinkedServiceName = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///             {
///                 ReferenceName = "exampleLinkedService",
///                 Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///             },
///             Parameters =
///             {
///                 { "MyFileName", new AzureNative.DataFactory.Inputs.ParameterSpecificationArgs
///                 {
///                     Type = AzureNative.DataFactory.ParameterType.String,
///                 } },
///                 { "MyFolderPath", new AzureNative.DataFactory.Inputs.ParameterSpecificationArgs
///                 {
///                     Type = AzureNative.DataFactory.ParameterType.String,
///                 } },
///             },
///             Type = "AzureBlob",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewDataset(ctx, "dataset", &datafactory.DatasetArgs{
/// 			DatasetName: pulumi.String("exampleDataset"),
/// 			FactoryName: pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.AzureBlobDatasetArgs{
/// 				FileName: pulumi.Any(map[string]interface{}{
/// 					"type":  "Expression",
/// 					"value": "@dataset().MyFileName",
/// 				}),
/// 				FolderPath: pulumi.Any(map[string]interface{}{
/// 					"type":  "Expression",
/// 					"value": "@dataset().MyFolderPath",
/// 				}),
/// 				Format: datafactory.TextFormat{
/// 					Type: "TextFormat",
/// 				},
/// 				LinkedServiceName: &datafactory.LinkedServiceReferenceArgs{
/// 					ReferenceName: pulumi.String("exampleLinkedService"),
/// 					Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 				},
/// 				Parameters: datafactory.ParameterSpecificationMap{
/// 					"MyFileName": &datafactory.ParameterSpecificationArgs{
/// 						Type: pulumi.String(datafactory.ParameterTypeString),
/// 					},
/// 					"MyFolderPath": &datafactory.ParameterSpecificationArgs{
/// 						Type: pulumi.String(datafactory.ParameterTypeString),
/// 					},
/// 				},
/// 				Type: pulumi.String("AzureBlob"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.Dataset;
/// import com.pulumi.azurenative.datafactory.DatasetArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetName("exampleDataset")
///             .factoryName("exampleFactoryName")
///             .properties(AzureBlobDatasetArgs.builder()
///                 .fileName(Map.ofEntries(
///                     Map.entry("type", "Expression"),
///                     Map.entry("value", "@dataset().MyFileName")
///                 ))
///                 .folderPath(Map.ofEntries(
///                     Map.entry("type", "Expression"),
///                     Map.entry("value", "@dataset().MyFolderPath")
///                 ))
///                 .format(TextFormatArgs.builder()
///                     .type("TextFormat")
///                     .build())
///                 .linkedServiceName(LinkedServiceReferenceArgs.builder()
///                     .referenceName("exampleLinkedService")
///                     .type("LinkedServiceReference")
///                     .build())
///                 .parameters(Map.ofEntries(
///                     Map.entry("MyFileName", ParameterSpecificationArgs.builder()
///                         .type("String")
///                         .build()),
///                     Map.entry("MyFolderPath", ParameterSpecificationArgs.builder()
///                         .type("String")
///                         .build())
///                 ))
///                 .type("AzureBlob")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const dataset = new azure_native.datafactory.Dataset("dataset", {
///     datasetName: "exampleDataset",
///     factoryName: "exampleFactoryName",
///     properties: {
///         fileName: {
///             type: "Expression",
///             value: "@dataset().MyFileName",
///         },
///         folderPath: {
///             type: "Expression",
///             value: "@dataset().MyFolderPath",
///         },
///         format: {
///             type: "TextFormat",
///         },
///         linkedServiceName: {
///             referenceName: "exampleLinkedService",
///             type: azure_native.datafactory.Type.LinkedServiceReference,
///         },
///         parameters: {
///             MyFileName: {
///                 type: azure_native.datafactory.ParameterType.String,
///             },
///             MyFolderPath: {
///                 type: azure_native.datafactory.ParameterType.String,
///             },
///         },
///         type: "AzureBlob",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataset = azure_native.datafactory.Dataset("dataset",
///     dataset_name="exampleDataset",
///     factory_name="exampleFactoryName",
///     properties={
///         "file_name": {
///             "type": "Expression",
///             "value": "@dataset().MyFileName",
///         },
///         "folder_path": {
///             "type": "Expression",
///             "value": "@dataset().MyFolderPath",
///         },
///         "format": {
///             "type": "TextFormat",
///         },
///         "linked_service_name": {
///             "reference_name": "exampleLinkedService",
///             "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///         },
///         "parameters": {
///             "MyFileName": {
///                 "type": azure_native.datafactory.ParameterType.STRING,
///             },
///             "MyFolderPath": {
///                 "type": azure_native.datafactory.ParameterType.STRING,
///             },
///         },
///         "type": "AzureBlob",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataset:
///     type: azure-native:datafactory:Dataset
///     properties:
///       datasetName: exampleDataset
///       factoryName: exampleFactoryName
///       properties:
///         fileName:
///           type: Expression
///           value: '@dataset().MyFileName'
///         folderPath:
///           type: Expression
///           value: '@dataset().MyFolderPath'
///         format:
///           type: TextFormat
///         linkedServiceName:
///           referenceName: exampleLinkedService
///           type: LinkedServiceReference
///         parameters:
///           MyFileName:
///             type: String
///           MyFolderPath:
///             type: String
///         type: AzureBlob
///       resourceGroupName: exampleResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Datasets_Update
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataset = new AzureNative.DataFactory.Dataset("dataset", new()
///     {
///         DatasetName = "exampleDataset",
///         FactoryName = "exampleFactoryName",
///         Properties = new AzureNative.DataFactory.Inputs.AzureBlobDatasetArgs
///         {
///             Description = "Example description",
///             FileName = new Dictionary<string, object?>
///             {
///                 ["type"] = "Expression",
///                 ["value"] = "@dataset().MyFileName",
///             },
///             FolderPath = new Dictionary<string, object?>
///             {
///                 ["type"] = "Expression",
///                 ["value"] = "@dataset().MyFolderPath",
///             },
///             Format = new AzureNative.DataFactory.Inputs.TextFormatArgs
///             {
///                 Type = "TextFormat",
///             },
///             LinkedServiceName = new AzureNative.DataFactory.Inputs.LinkedServiceReferenceArgs
///             {
///                 ReferenceName = "exampleLinkedService",
///                 Type = AzureNative.DataFactory.Type.LinkedServiceReference,
///             },
///             Parameters =
///             {
///                 { "MyFileName", new AzureNative.DataFactory.Inputs.ParameterSpecificationArgs
///                 {
///                     Type = AzureNative.DataFactory.ParameterType.String,
///                 } },
///                 { "MyFolderPath", new AzureNative.DataFactory.Inputs.ParameterSpecificationArgs
///                 {
///                     Type = AzureNative.DataFactory.ParameterType.String,
///                 } },
///             },
///             Type = "AzureBlob",
///         },
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	datafactory "github.com/pulumi/pulumi-azure-native-sdk/datafactory/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datafactory.NewDataset(ctx, "dataset", &datafactory.DatasetArgs{
/// 			DatasetName: pulumi.String("exampleDataset"),
/// 			FactoryName: pulumi.String("exampleFactoryName"),
/// 			Properties: &datafactory.AzureBlobDatasetArgs{
/// 				Description: pulumi.String("Example description"),
/// 				FileName: pulumi.Any(map[string]interface{}{
/// 					"type":  "Expression",
/// 					"value": "@dataset().MyFileName",
/// 				}),
/// 				FolderPath: pulumi.Any(map[string]interface{}{
/// 					"type":  "Expression",
/// 					"value": "@dataset().MyFolderPath",
/// 				}),
/// 				Format: datafactory.TextFormat{
/// 					Type: "TextFormat",
/// 				},
/// 				LinkedServiceName: &datafactory.LinkedServiceReferenceArgs{
/// 					ReferenceName: pulumi.String("exampleLinkedService"),
/// 					Type:          pulumi.String(datafactory.TypeLinkedServiceReference),
/// 				},
/// 				Parameters: datafactory.ParameterSpecificationMap{
/// 					"MyFileName": &datafactory.ParameterSpecificationArgs{
/// 						Type: pulumi.String(datafactory.ParameterTypeString),
/// 					},
/// 					"MyFolderPath": &datafactory.ParameterSpecificationArgs{
/// 						Type: pulumi.String(datafactory.ParameterTypeString),
/// 					},
/// 				},
/// 				Type: pulumi.String("AzureBlob"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// import com.pulumi.azurenative.datafactory.Dataset;
/// import com.pulumi.azurenative.datafactory.DatasetArgs;
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
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .datasetName("exampleDataset")
///             .factoryName("exampleFactoryName")
///             .properties(AzureBlobDatasetArgs.builder()
///                 .description("Example description")
///                 .fileName(Map.ofEntries(
///                     Map.entry("type", "Expression"),
///                     Map.entry("value", "@dataset().MyFileName")
///                 ))
///                 .folderPath(Map.ofEntries(
///                     Map.entry("type", "Expression"),
///                     Map.entry("value", "@dataset().MyFolderPath")
///                 ))
///                 .format(TextFormatArgs.builder()
///                     .type("TextFormat")
///                     .build())
///                 .linkedServiceName(LinkedServiceReferenceArgs.builder()
///                     .referenceName("exampleLinkedService")
///                     .type("LinkedServiceReference")
///                     .build())
///                 .parameters(Map.ofEntries(
///                     Map.entry("MyFileName", ParameterSpecificationArgs.builder()
///                         .type("String")
///                         .build()),
///                     Map.entry("MyFolderPath", ParameterSpecificationArgs.builder()
///                         .type("String")
///                         .build())
///                 ))
///                 .type("AzureBlob")
///                 .build())
///             .resourceGroupName("exampleResourceGroup")
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
/// const dataset = new azure_native.datafactory.Dataset("dataset", {
///     datasetName: "exampleDataset",
///     factoryName: "exampleFactoryName",
///     properties: {
///         description: "Example description",
///         fileName: {
///             type: "Expression",
///             value: "@dataset().MyFileName",
///         },
///         folderPath: {
///             type: "Expression",
///             value: "@dataset().MyFolderPath",
///         },
///         format: {
///             type: "TextFormat",
///         },
///         linkedServiceName: {
///             referenceName: "exampleLinkedService",
///             type: azure_native.datafactory.Type.LinkedServiceReference,
///         },
///         parameters: {
///             MyFileName: {
///                 type: azure_native.datafactory.ParameterType.String,
///             },
///             MyFolderPath: {
///                 type: azure_native.datafactory.ParameterType.String,
///             },
///         },
///         type: "AzureBlob",
///     },
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dataset = azure_native.datafactory.Dataset("dataset",
///     dataset_name="exampleDataset",
///     factory_name="exampleFactoryName",
///     properties={
///         "description": "Example description",
///         "file_name": {
///             "type": "Expression",
///             "value": "@dataset().MyFileName",
///         },
///         "folder_path": {
///             "type": "Expression",
///             "value": "@dataset().MyFolderPath",
///         },
///         "format": {
///             "type": "TextFormat",
///         },
///         "linked_service_name": {
///             "reference_name": "exampleLinkedService",
///             "type": azure_native.datafactory.Type.LINKED_SERVICE_REFERENCE,
///         },
///         "parameters": {
///             "MyFileName": {
///                 "type": azure_native.datafactory.ParameterType.STRING,
///             },
///             "MyFolderPath": {
///                 "type": azure_native.datafactory.ParameterType.STRING,
///             },
///         },
///         "type": "AzureBlob",
///     },
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   dataset:
///     type: azure-native:datafactory:Dataset
///     properties:
///       datasetName: exampleDataset
///       factoryName: exampleFactoryName
///       properties:
///         description: Example description
///         fileName:
///           type: Expression
///           value: '@dataset().MyFileName'
///         folderPath:
///           type: Expression
///           value: '@dataset().MyFolderPath'
///         format:
///           type: TextFormat
///         linkedServiceName:
///           referenceName: exampleLinkedService
///           type: LinkedServiceReference
///         parameters:
///           MyFileName:
///             type: String
///           MyFolderPath:
///             type: String
///         type: AzureBlob
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:datafactory:Dataset exampleDataset /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataFactory/factories/{factoryName}/datasets/{datasetName}
/// ```
class Dataset extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Etag identifies change in the resource.
  late final pulumi.Output<String> etag;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// Dataset properties.
  late final pulumi.Output<AmazonMWSObjectDatasetResponse> properties;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_datafactory_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datafactory:Dataset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AmazonMWSObjectDatasetResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AmazonMWSObjectDatasetResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
