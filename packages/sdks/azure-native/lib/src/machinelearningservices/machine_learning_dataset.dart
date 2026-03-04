import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response.dart';
import 'identity_response.dart';
import 'machine_learning_dataset_args.dart';
import 'sku_response.dart';

/// Machine Learning dataset object wrapped into ARM resource envelope.
///
/// Uses Azure REST API version 2020-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2020-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Dataset
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineLearningDataset = new AzureNative.MachineLearningServices.MachineLearningDataset("machineLearningDataset", new()
///     {
///         DatasetName = "datasetName123",
///         DatasetType = AzureNative.MachineLearningServices.DatasetType.File,
///         Parameters = new AzureNative.MachineLearningServices.Inputs.DatasetCreateRequestParametersArgs
///         {
///             Path = new AzureNative.MachineLearningServices.Inputs.DatasetCreateRequestPathArgs
///             {
///                 DataPath = new AzureNative.MachineLearningServices.Inputs.DatasetCreateRequestDataPathArgs
///                 {
///                     DatastoreName = "testblobfromarm",
///                     RelativePath = "UI/03-26-2020_083359_UTC/latin1encoding.csv",
///                 },
///             },
///         },
///         Registration = new AzureNative.MachineLearningServices.Inputs.DatasetCreateRequestRegistrationArgs
///         {
///             Description = "test description",
///             Name = "datasetName123",
///         },
///         ResourceGroupName = "acjain-mleastUS2",
///         SkipValidation = false,
///         WorkspaceName = "acjain-mleastUS2",
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
/// 		_, err := machinelearningservices.NewMachineLearningDataset(ctx, "machineLearningDataset", &machinelearningservices.MachineLearningDatasetArgs{
/// 			DatasetName: pulumi.String("datasetName123"),
/// 			DatasetType: pulumi.String(machinelearningservices.DatasetTypeFile),
/// 			Parameters: &machinelearningservices.DatasetCreateRequestParametersArgs{
/// 				Path: &machinelearningservices.DatasetCreateRequestPathArgs{
/// 					DataPath: &machinelearningservices.DatasetCreateRequestDataPathArgs{
/// 						DatastoreName: pulumi.String("testblobfromarm"),
/// 						RelativePath:  pulumi.String("UI/03-26-2020_083359_UTC/latin1encoding.csv"),
/// 					},
/// 				},
/// 			},
/// 			Registration: &machinelearningservices.DatasetCreateRequestRegistrationArgs{
/// 				Description: pulumi.String("test description"),
/// 				Name:        pulumi.String("datasetName123"),
/// 			},
/// 			ResourceGroupName: pulumi.String("acjain-mleastUS2"),
/// 			SkipValidation:    pulumi.Bool(false),
/// 			WorkspaceName:     pulumi.String("acjain-mleastUS2"),
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
/// import com.pulumi.azurenative.machinelearningservices.MachineLearningDataset;
/// import com.pulumi.azurenative.machinelearningservices.MachineLearningDatasetArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.DatasetCreateRequestParametersArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.DatasetCreateRequestPathArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.DatasetCreateRequestDataPathArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.DatasetCreateRequestRegistrationArgs;
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
///         var machineLearningDataset = new MachineLearningDataset("machineLearningDataset", MachineLearningDatasetArgs.builder()
///             .datasetName("datasetName123")
///             .datasetType("file")
///             .parameters(DatasetCreateRequestParametersArgs.builder()
///                 .path(DatasetCreateRequestPathArgs.builder()
///                     .dataPath(DatasetCreateRequestDataPathArgs.builder()
///                         .datastoreName("testblobfromarm")
///                         .relativePath("UI/03-26-2020_083359_UTC/latin1encoding.csv")
///                         .build())
///                     .build())
///                 .build())
///             .registration(DatasetCreateRequestRegistrationArgs.builder()
///                 .description("test description")
///                 .name("datasetName123")
///                 .build())
///             .resourceGroupName("acjain-mleastUS2")
///             .skipValidation(false)
///             .workspaceName("acjain-mleastUS2")
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
/// const machineLearningDataset = new azure_native.machinelearningservices.MachineLearningDataset("machineLearningDataset", {
///     datasetName: "datasetName123",
///     datasetType: azure_native.machinelearningservices.DatasetType.File,
///     parameters: {
///         path: {
///             dataPath: {
///                 datastoreName: "testblobfromarm",
///                 relativePath: "UI/03-26-2020_083359_UTC/latin1encoding.csv",
///             },
///         },
///     },
///     registration: {
///         description: "test description",
///         name: "datasetName123",
///     },
///     resourceGroupName: "acjain-mleastUS2",
///     skipValidation: false,
///     workspaceName: "acjain-mleastUS2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_learning_dataset = azure_native.machinelearningservices.MachineLearningDataset("machineLearningDataset",
///     dataset_name="datasetName123",
///     dataset_type=azure_native.machinelearningservices.DatasetType.FILE,
///     parameters={
///         "path": {
///             "data_path": {
///                 "datastore_name": "testblobfromarm",
///                 "relative_path": "UI/03-26-2020_083359_UTC/latin1encoding.csv",
///             },
///         },
///     },
///     registration={
///         "description": "test description",
///         "name": "datasetName123",
///     },
///     resource_group_name="acjain-mleastUS2",
///     skip_validation=False,
///     workspace_name="acjain-mleastUS2")
///
/// ```
///
/// ```yaml
/// resources:
///   machineLearningDataset:
///     type: azure-native:machinelearningservices:MachineLearningDataset
///     properties:
///       datasetName: datasetName123
///       datasetType: file
///       parameters:
///         path:
///           dataPath:
///             datastoreName: testblobfromarm
///             relativePath: UI/03-26-2020_083359_UTC/latin1encoding.csv
///       registration:
///         description: test description
///         name: datasetName123
///       resourceGroupName: acjain-mleastUS2
///       skipValidation: false
///       workspaceName: acjain-mleastUS2
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
/// $ pulumi import azure-native:machinelearningservices:MachineLearningDataset datasetName123 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/datasets/{datasetName}
/// ```
class MachineLearningDataset extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;

  /// Specifies the name of the resource.
  late final pulumi.Output<String> name;

  /// Dataset properties
  late final pulumi.Output<DatasetResponse> properties;

  /// The sku of the workspace.
  late final pulumi.Output<SkuResponse?> sku;

  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MachineLearningDataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineLearningDataset]. {@macro pulumi_machinelearningservices_machine_learning_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineLearningDataset(
    String name, {
    MachineLearningDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:MachineLearningDataset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityResponse?>('identity');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DatasetResponse>('properties');
    sku = registerOutput<SkuResponse?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
