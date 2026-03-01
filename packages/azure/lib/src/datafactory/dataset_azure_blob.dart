import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_azure_blob_args.dart';
import 'dataset_azure_blob_schema_column.dart';

/// Manages an Azure Blob Dataset inside an Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const example = azure.storage.getAccountOutput({
///     name: "storageaccountname",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const exampleLinkedServiceAzureBlobStorage = new azure.datafactory.LinkedServiceAzureBlobStorage("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: example.apply(example => example.primaryConnectionString),
/// });
/// const exampleDatasetAzureBlob = new azure.datafactory.DatasetAzureBlob("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceAzureBlobStorage.name,
///     path: "foo",
///     filename: "bar.png",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example = azure.storage.get_account_output(name="storageaccountname",
///     resource_group_name=example_resource_group.name)
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name)
/// example_linked_service_azure_blob_storage = azure.datafactory.LinkedServiceAzureBlobStorage("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string=example.primary_connection_string)
/// example_dataset_azure_blob = azure.datafactory.DatasetAzureBlob("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_azure_blob_storage.name,
///     path="foo",
///     filename="bar.png")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var example = Azure.Storage.GetAccount.Invoke(new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var exampleLinkedServiceAzureBlobStorage = new Azure.DataFactory.LinkedServiceAzureBlobStorage("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = example.Apply(getAccountResult => getAccountResult.PrimaryConnectionString),
///     });
///
///     var exampleDatasetAzureBlob = new Azure.DataFactory.DatasetAzureBlob("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceAzureBlobStorage.Name,
///         Path = "foo",
///         Filename = "bar.png",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := storage.LookupAccountOutput(ctx, storage.GetAccountOutputArgs{
/// 			Name:              pulumi.String("storageaccountname"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkedServiceAzureBlobStorage, err := datafactory.NewLinkedServiceAzureBlobStorage(ctx, "example", &datafactory.LinkedServiceAzureBlobStorageArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			ConnectionString: pulumi.String(example.ApplyT(func(example storage.GetAccountResult) (*string, error) {
/// 				return &example.PrimaryConnectionString, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetAzureBlob(ctx, "example", &datafactory.DatasetAzureBlobArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceAzureBlobStorage.Name,
/// 			Path:              pulumi.String("foo"),
/// 			Filename:          pulumi.String("bar.png"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.StorageFunctions;
/// import com.pulumi.azure.storage.inputs.GetAccountArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureBlobStorage;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureBlobStorageArgs;
/// import com.pulumi.azure.datafactory.DatasetAzureBlob;
/// import com.pulumi.azure.datafactory.DatasetAzureBlobArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         final var example = StorageFunctions.getAccount(GetAccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var exampleLinkedServiceAzureBlobStorage = new LinkedServiceAzureBlobStorage("exampleLinkedServiceAzureBlobStorage", LinkedServiceAzureBlobStorageArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString(example.applyValue(_example -> _example.primaryConnectionString()))
///             .build());
///
///         var exampleDatasetAzureBlob = new DatasetAzureBlob("exampleDatasetAzureBlob", DatasetAzureBlobArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceAzureBlobStorage.name())
///             .path("foo")
///             .filename("bar.png")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///   exampleLinkedServiceAzureBlobStorage:
///     type: azure:datafactory:LinkedServiceAzureBlobStorage
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: ${example.primaryConnectionString}
///   exampleDatasetAzureBlob:
///     type: azure:datafactory:DatasetAzureBlob
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceAzureBlobStorage.name}
///       path: foo
///       filename: bar.png
/// variables:
///   example:
///     fn::invoke:
///       function: azure:storage:getAccount
///       arguments:
///         name: storageaccountname
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetAzureBlob:DatasetAzureBlob example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetAzureBlob extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to Azure Blob Dataset:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  late final pulumi.Output<bool?> dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  late final pulumi.Output<bool?> dynamicPathEnabled;
  /// The filename of the Azure Blob.
  late final pulumi.Output<String?> filename;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The path of the Azure Blob.
  late final pulumi.Output<String?> path;
  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<DatasetAzureBlobSchemaColumn>?> schemaColumns;

  /// Creates a new [DatasetAzureBlob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetAzureBlob]. {@macro pulumi_datafactory_dataset_azure_blob_dataset_azure_blob_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetAzureBlob(
    String name, {
    DatasetAzureBlobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetAzureBlob:DatasetAzureBlob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.dynamicFilenameEnabled = registerOutput<bool?>('dynamicFilenameEnabled');
    this.dynamicPathEnabled = registerOutput<bool?>('dynamicPathEnabled');
    this.filename = registerOutput<String?>('filename');
    this.folder = registerOutput<String?>('folder');
    this.linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.path = registerOutput<String?>('path');
    this.schemaColumns = registerOutput<List<DatasetAzureBlobSchemaColumn>?>('schemaColumns');
  }
}
