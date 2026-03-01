import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_azure_file_storage_args.dart';
import 'linked_service_azure_file_storage_key_vault_password.dart';

/// Manages a Linked Service (connection) between a SFTP Server and Azure Data Factory.
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
/// const exampleLinkedServiceAzureFileStorage = new azure.datafactory.LinkedServiceAzureFileStorage("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: example.apply(example => example.primaryConnectionString),
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
/// example_linked_service_azure_file_storage = azure.datafactory.LinkedServiceAzureFileStorage("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string=example.primary_connection_string)
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
///     var exampleLinkedServiceAzureFileStorage = new Azure.DataFactory.LinkedServiceAzureFileStorage("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = example.Apply(getAccountResult => getAccountResult.PrimaryConnectionString),
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
/// 		_, err = datafactory.NewLinkedServiceAzureFileStorage(ctx, "example", &datafactory.LinkedServiceAzureFileStorageArgs{
/// 			Name:          pulumi.String("example"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			ConnectionString: pulumi.String(example.ApplyT(func(example storage.GetAccountResult) (*string, error) {
/// 				return &example.PrimaryConnectionString, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.azure.datafactory.LinkedServiceAzureFileStorage;
/// import com.pulumi.azure.datafactory.LinkedServiceAzureFileStorageArgs;
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
///         var exampleLinkedServiceAzureFileStorage = new LinkedServiceAzureFileStorage("exampleLinkedServiceAzureFileStorage", LinkedServiceAzureFileStorageArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString(example.applyValue(_example -> _example.primaryConnectionString()))
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
///   exampleLinkedServiceAzureFileStorage:
///     type: azure:datafactory:LinkedServiceAzureFileStorage
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: ${example.primaryConnectionString}
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
/// Data Factory Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceAzureFileStorage:LinkedServiceAzureFileStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceAzureFileStorage extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Azure File Storage Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The connection string.
  late final pulumi.Output<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The name of the file share.
  late final pulumi.Output<String?> fileShare;
  /// The Host name of the server.
  late final pulumi.Output<String?> host;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// A `key_vault_password` block as defined below. Use this argument to store Azure File Storage password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  late final pulumi.Output<LinkedServiceAzureFileStorageKeyVaultPassword?> keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The password to log in the server.
  late final pulumi.Output<String?> password;
  /// The user ID to log in the server.
  late final pulumi.Output<String?> userId;

  /// Creates a new [LinkedServiceAzureFileStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceAzureFileStorage]. {@macro pulumi_datafactory_linked_service_azure_file_storage_linked_service_azure_file_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceAzureFileStorage(
    String name, {
    LinkedServiceAzureFileStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceAzureFileStorage:LinkedServiceAzureFileStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.connectionString = registerOutput<String>('connectionString');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.fileShare = registerOutput<String?>('fileShare');
    this.host = registerOutput<String?>('host');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultPassword = registerOutput<LinkedServiceAzureFileStorageKeyVaultPassword?>('keyVaultPassword');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.password = registerOutput<String?>('password');
    this.userId = registerOutput<String?>('userId');
  }
}
