import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_data_lake_storage_gen2_args.dart';

/// Manages a Linked Service (connection) between Data Lake Storage Gen2 and Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleLinkedServiceDataLakeStorageGen2 = new azure.datafactory.LinkedServiceDataLakeStorageGen2("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     servicePrincipalId: current.then(current => current.clientId),
///     servicePrincipalKey: "exampleKey",
///     tenant: "11111111-1111-1111-1111-111111111111",
///     url: "https://datalakestoragegen2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// current = azure.core.get_client_config()
/// example_linked_service_data_lake_storage_gen2 = azure.datafactory.LinkedServiceDataLakeStorageGen2("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     service_principal_id=current.client_id,
///     service_principal_key="exampleKey",
///     tenant="11111111-1111-1111-1111-111111111111",
///     url="https://datalakestoragegen2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleLinkedServiceDataLakeStorageGen2 = new Azure.DataFactory.LinkedServiceDataLakeStorageGen2("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ServicePrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ClientId),
///         ServicePrincipalKey = "exampleKey",
///         Tenant = "11111111-1111-1111-1111-111111111111",
///         Url = "https://datalakestoragegen2",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceDataLakeStorageGen2(ctx, "example", &datafactory.LinkedServiceDataLakeStorageGen2Args{
/// 			Name:                pulumi.String("example"),
/// 			DataFactoryId:       exampleFactory.ID(),
/// 			ServicePrincipalId:  pulumi.String(current.ClientId),
/// 			ServicePrincipalKey: pulumi.String("exampleKey"),
/// 			Tenant:              pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 			Url:                 pulumi.String("https://datalakestoragegen2"),
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
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.datafactory.LinkedServiceDataLakeStorageGen2;
/// import com.pulumi.azure.datafactory.LinkedServiceDataLakeStorageGen2Args;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleLinkedServiceDataLakeStorageGen2 = new LinkedServiceDataLakeStorageGen2("exampleLinkedServiceDataLakeStorageGen2", LinkedServiceDataLakeStorageGen2Args.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .servicePrincipalId(current.clientId())
///             .servicePrincipalKey("exampleKey")
///             .tenant("11111111-1111-1111-1111-111111111111")
///             .url("https://datalakestoragegen2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceDataLakeStorageGen2:
///     type: azure:datafactory:LinkedServiceDataLakeStorageGen2
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       servicePrincipalId: ${current.clientId}
///       servicePrincipalKey: exampleKey
///       tenant: 11111111-1111-1111-1111-111111111111
///       url: https://datalakestoragegen2
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Data Factory Data Lake Storage Gen2 Linked Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceDataLakeStorageGen2:LinkedServiceDataLakeStorageGen2 example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceDataLakeStorageGen2 extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to Data Lake Storage Gen2 Linked Service:
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The service principal id with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `storage_account_key` and `use_managed_identity`.
  late final pulumi.Output<String?> servicePrincipalId;
  /// The service principal key with which to authenticate against the Azure Data Lake Storage Gen2 account.
  late final pulumi.Output<String?> servicePrincipalKey;
  /// The Storage Account Key with which to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `use_managed_identity`.
  late final pulumi.Output<String?> storageAccountKey;
  /// The tenant id or name in which the service principal exists to authenticate against the Azure Data Lake Storage Gen2 account.
  ///
  /// > **Note:** If `service_principal_id` is used, `service_principal_key` and `tenant` are also required.
  late final pulumi.Output<String?> tenant;
  /// The endpoint for the Azure Data Lake Storage Gen2 service.
  ///
  /// > **Note:** Users should specify only one of the following three authentication strategies: storage account key, managed identity, service principal.
  late final pulumi.Output<String> url;
  /// Whether to use the Data Factory's managed identity to authenticate against the Azure Data Lake Storage Gen2 account. Incompatible with `service_principal_id`, `service_principal_key`, `tenant` and `storage_account_key`.
  late final pulumi.Output<bool?> useManagedIdentity;

  /// Creates a new [LinkedServiceDataLakeStorageGen2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceDataLakeStorageGen2]. {@macro pulumi_datafactory_linked_service_data_lake_storage_gen2_linked_service_data_lake_storage_gen2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceDataLakeStorageGen2(
    String name, {
    LinkedServiceDataLakeStorageGen2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceDataLakeStorageGen2:LinkedServiceDataLakeStorageGen2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.servicePrincipalId = registerOutput<String?>('servicePrincipalId');
    this.servicePrincipalKey = registerOutput<String?>('servicePrincipalKey');
    this.storageAccountKey = registerOutput<String?>('storageAccountKey');
    this.tenant = registerOutput<String?>('tenant');
    this.url = registerOutput<String>('url');
    this.useManagedIdentity = registerOutput<bool?>('useManagedIdentity');
  }
}
