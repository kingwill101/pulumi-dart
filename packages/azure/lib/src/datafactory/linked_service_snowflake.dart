import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_snowflake_args.dart';
import 'linked_service_snowflake_key_vault_password.dart';

/// Manages a Linked Service (connection) between Snowflake and Azure Data Factory.
///
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
/// const exampleLinkedServiceSnowflake = new azure.datafactory.LinkedServiceSnowflake("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
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
/// example_linked_service_snowflake = azure.datafactory.LinkedServiceSnowflake("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh")
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
///     var exampleLinkedServiceSnowflake = new Azure.DataFactory.LinkedServiceSnowflake("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
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
/// 		_, err = datafactory.NewLinkedServiceSnowflake(ctx, "example", &datafactory.LinkedServiceSnowflakeArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh"),
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
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflake;
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflakeArgs;
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
///         var exampleLinkedServiceSnowflake = new LinkedServiceSnowflake("exampleLinkedServiceSnowflake", LinkedServiceSnowflakeArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh")
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
///   exampleLinkedServiceSnowflake:
///     type: azure:datafactory:LinkedServiceSnowflake
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh
/// ```
///
///
///
/// ### With Password In Key Vault
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getClientConfig({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceKeyVault = new azure.datafactory.LinkedServiceKeyVault("example", {
///     name: "kvlink",
///     dataFactoryId: exampleFactory.id,
///     keyVaultId: exampleKeyVault.id,
/// });
/// const exampleLinkedServiceSnowflake = new azure.datafactory.LinkedServiceSnowflake("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     connectionString: "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
///     keyVaultPassword: {
///         linkedServiceName: exampleLinkedServiceKeyVault.name,
///         secretName: "secret",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_key_vault = azure.datafactory.LinkedServiceKeyVault("example",
///     name="kvlink",
///     data_factory_id=example_factory.id,
///     key_vault_id=example_key_vault.id)
/// example_linked_service_snowflake = azure.datafactory.LinkedServiceSnowflake("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     connection_string="jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
///     key_vault_password={
///         "linked_service_name": example_linked_service_key_vault.name,
///         "secret_name": "secret",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceKeyVault = new Azure.DataFactory.LinkedServiceKeyVault("example", new()
///     {
///         Name = "kvlink",
///         DataFactoryId = exampleFactory.Id,
///         KeyVaultId = exampleKeyVault.Id,
///     });
///
///     var exampleLinkedServiceSnowflake = new Azure.DataFactory.LinkedServiceSnowflake("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         ConnectionString = "jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh",
///         KeyVaultPassword = new Azure.DataFactory.Inputs.LinkedServiceSnowflakeKeyVaultPasswordArgs
///         {
///             LinkedServiceName = exampleLinkedServiceKeyVault.Name,
///             SecretName = "secret",
///         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			TenantId:          pulumi.String(current.TenantId),
/// 			SkuName:           pulumi.String("standard"),
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
/// 		exampleLinkedServiceKeyVault, err := datafactory.NewLinkedServiceKeyVault(ctx, "example", &datafactory.LinkedServiceKeyVaultArgs{
/// 			Name:          pulumi.String("kvlink"),
/// 			DataFactoryId: exampleFactory.ID(),
/// 			KeyVaultId:    exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewLinkedServiceSnowflake(ctx, "example", &datafactory.LinkedServiceSnowflakeArgs{
/// 			Name:             pulumi.String("example"),
/// 			DataFactoryId:    exampleFactory.ID(),
/// 			ConnectionString: pulumi.String("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh"),
/// 			KeyVaultPassword: &datafactory.LinkedServiceSnowflakeKeyVaultPasswordArgs{
/// 				LinkedServiceName: exampleLinkedServiceKeyVault.Name,
/// 				SecretName:        pulumi.String("secret"),
/// 			},
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVault;
/// import com.pulumi.azure.datafactory.LinkedServiceKeyVaultArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflake;
/// import com.pulumi.azure.datafactory.LinkedServiceSnowflakeArgs;
/// import com.pulumi.azure.datafactory.inputs.LinkedServiceSnowflakeKeyVaultPasswordArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceKeyVault = new LinkedServiceKeyVault("exampleLinkedServiceKeyVault", LinkedServiceKeyVaultArgs.builder()
///             .name("kvlink")
///             .dataFactoryId(exampleFactory.id())
///             .keyVaultId(exampleKeyVault.id())
///             .build());
///
///         var exampleLinkedServiceSnowflake = new LinkedServiceSnowflake("exampleLinkedServiceSnowflake", LinkedServiceSnowflakeArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .connectionString("jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh")
///             .keyVaultPassword(LinkedServiceSnowflakeKeyVaultPasswordArgs.builder()
///                 .linkedServiceName(exampleLinkedServiceKeyVault.name())
///                 .secretName("secret")
///                 .build())
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceKeyVault:
///     type: azure:datafactory:LinkedServiceKeyVault
///     name: example
///     properties:
///       name: kvlink
///       dataFactoryId: ${exampleFactory.id}
///       keyVaultId: ${exampleKeyVault.id}
///   exampleLinkedServiceSnowflake:
///     type: azure:datafactory:LinkedServiceSnowflake
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       connectionString: jdbc:snowflake://account.region.snowflakecomputing.com/?user=user&db=db&warehouse=wh
///       keyVaultPassword:
///         linkedServiceName: ${exampleLinkedServiceKeyVault.name}
///         secretName: secret
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
/// Data Factory Snowflake Linked Service's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/linkedServiceSnowflake:LinkedServiceSnowflake example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/linkedservices/example
/// ```
class LinkedServiceSnowflake extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  late final pulumi.Output<List<String>?> annotations;
  /// The connection string in which to authenticate with Snowflake.
  late final pulumi.Output<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Linked Service.
  late final pulumi.Output<String?> description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  late final pulumi.Output<String?> integrationRuntimeName;
  /// A `key_vault_password` block as defined below. Use this argument to store Snowflake password in an existing Key Vault. It needs an existing Key Vault Data Factory Linked Service.
  late final pulumi.Output<LinkedServiceSnowflakeKeyVaultPassword?> keyVaultPassword;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Creates a new [LinkedServiceSnowflake].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinkedServiceSnowflake]. {@macro pulumi_datafactory_linked_service_snowflake_linked_service_snowflake_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinkedServiceSnowflake(
    String name, {
    LinkedServiceSnowflakeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/linkedServiceSnowflake:LinkedServiceSnowflake',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.connectionString = registerOutput<String>('connectionString');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.integrationRuntimeName = registerOutput<String?>('integrationRuntimeName');
    this.keyVaultPassword = registerOutput<LinkedServiceSnowflakeKeyVaultPassword?>('keyVaultPassword');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
  }
}
