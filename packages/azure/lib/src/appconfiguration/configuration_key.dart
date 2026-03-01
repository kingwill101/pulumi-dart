import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_key_args.dart';

/// Manages an Azure App Configuration Key.
///
/// > **Note:** App Configuration Keys are provisioned using a Data Plane API which requires the role `App Configuration Data Owner` on either the App Configuration or a parent scope (such as the Resource Group/Subscription). [More information can be found in the Azure Documentation for App Configuration](https://docs.microsoft.com/azure/azure-app-configuration/concept-enable-rbac#azure-built-in-roles-for-azure-app-configuration).
///
/// ## Example Usage
///
/// ### `Kv` Type
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
/// const appconf = new azure.appconfiguration.ConfigurationStore("appconf", {
///     name: "appConf1",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const current = azure.core.getClientConfig({});
/// const appconfDataowner = new azure.authorization.Assignment("appconf_dataowner", {
///     scope: appconf.id,
///     roleDefinitionName: "App Configuration Data Owner",
///     principalId: current.then(current => current.objectId),
/// });
/// const test = new azure.appconfiguration.ConfigurationKey("test", {
///     configurationStoreId: appconf.id,
///     key: "appConfKey1",
///     label: "somelabel",
///     value: "a test",
/// }, {
///     dependsOn: [appconfDataowner],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// appconf = azure.appconfiguration.ConfigurationStore("appconf",
///     name="appConf1",
///     resource_group_name=example.name,
///     location=example.location)
/// current = azure.core.get_client_config()
/// appconf_dataowner = azure.authorization.Assignment("appconf_dataowner",
///     scope=appconf.id,
///     role_definition_name="App Configuration Data Owner",
///     principal_id=current.object_id)
/// test = azure.appconfiguration.ConfigurationKey("test",
///     configuration_store_id=appconf.id,
///     key="appConfKey1",
///     label="somelabel",
///     value="a test",
///     opts = pulumi.ResourceOptions(depends_on=[appconf_dataowner]))
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
///     var appconf = new Azure.AppConfiguration.ConfigurationStore("appconf", new()
///     {
///         Name = "appConf1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var appconfDataowner = new Azure.Authorization.Assignment("appconf_dataowner", new()
///     {
///         Scope = appconf.Id,
///         RoleDefinitionName = "App Configuration Data Owner",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var test = new Azure.AppConfiguration.ConfigurationKey("test", new()
///     {
///         ConfigurationStoreId = appconf.Id,
///         Key = "appConfKey1",
///         Label = "somelabel",
///         Value = "a test",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             appconfDataowner,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		appconf, err := appconfiguration.NewConfigurationStore(ctx, "appconf", &appconfiguration.ConfigurationStoreArgs{
/// 			Name:              pulumi.String("appConf1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appconfDataowner, err := authorization.NewAssignment(ctx, "appconf_dataowner", &authorization.AssignmentArgs{
/// 			Scope:              appconf.ID(),
/// 			RoleDefinitionName: pulumi.String("App Configuration Data Owner"),
/// 			PrincipalId:        pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewConfigurationKey(ctx, "test", &appconfiguration.ConfigurationKeyArgs{
/// 			ConfigurationStoreId: appconf.ID(),
/// 			Key:                  pulumi.String("appConfKey1"),
/// 			Label:                pulumi.String("somelabel"),
/// 			Value:                pulumi.String("a test"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			appconfDataowner,
/// 		}))
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
/// import com.pulumi.azure.appconfiguration.ConfigurationStore;
/// import com.pulumi.azure.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.appconfiguration.ConfigurationKey;
/// import com.pulumi.azure.appconfiguration.ConfigurationKeyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var appconf = new ConfigurationStore("appconf", ConfigurationStoreArgs.builder()
///             .name("appConf1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var appconfDataowner = new Assignment("appconfDataowner", AssignmentArgs.builder()
///             .scope(appconf.id())
///             .roleDefinitionName("App Configuration Data Owner")
///             .principalId(current.objectId())
///             .build());
///
///         var test = new ConfigurationKey("test", ConfigurationKeyArgs.builder()
///             .configurationStoreId(appconf.id())
///             .key("appConfKey1")
///             .label("somelabel")
///             .value("a test")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(appconfDataowner)
///                 .build());
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
///   appconf:
///     type: azure:appconfiguration:ConfigurationStore
///     properties:
///       name: appConf1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   appconfDataowner:
///     type: azure:authorization:Assignment
///     name: appconf_dataowner
///     properties:
///       scope: ${appconf.id}
///       roleDefinitionName: App Configuration Data Owner
///       principalId: ${current.objectId}
///   test:
///     type: azure:appconfiguration:ConfigurationKey
///     properties:
///       configurationStoreId: ${appconf.id}
///       key: appConfKey1
///       label: somelabel
///       value: a test
///     options:
///       dependsOn:
///         - ${appconfDataowner}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
///
/// ### `Vault` Type
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
/// const appconf = new azure.appconfiguration.ConfigurationStore("appconf", {
///     name: "appConf1",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const current = azure.core.getClientConfig({});
/// const kv = new azure.keyvault.KeyVault("kv", {
///     name: "kv",
///     location: testAzurermResourceGroup.location,
///     resourceGroupName: testAzurermResourceGroup.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [{
///         tenantId: current.then(current => current.tenantId),
///         objectId: current.then(current => current.objectId),
///         keyPermissions: [
///             "Create",
///             "Get",
///         ],
///         secretPermissions: [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }],
/// });
/// const kvs = new azure.keyvault.Secret("kvs", {
///     name: "kvs",
///     value: "szechuan",
///     keyVaultId: kv.id,
/// });
/// const appconfDataowner = new azure.authorization.Assignment("appconf_dataowner", {
///     scope: appconf.id,
///     roleDefinitionName: "App Configuration Data Owner",
///     principalId: current.then(current => current.objectId),
/// });
/// const test = new azure.appconfiguration.ConfigurationKey("test", {
///     configurationStoreId: testAzurermAppConfiguration.id,
///     key: "key1",
///     type: "vault",
///     label: "label1",
///     vaultKeyReference: kvs.versionlessId,
/// }, {
///     dependsOn: [appconfDataowner],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// appconf = azure.appconfiguration.ConfigurationStore("appconf",
///     name="appConf1",
///     resource_group_name=example.name,
///     location=example.location)
/// current = azure.core.get_client_config()
/// kv = azure.keyvault.KeyVault("kv",
///     name="kv",
///     location=test_azurerm_resource_group["location"],
///     resource_group_name=test_azurerm_resource_group["name"],
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     soft_delete_retention_days=7,
///     access_policies=[{
///         "tenant_id": current.tenant_id,
///         "object_id": current.object_id,
///         "key_permissions": [
///             "Create",
///             "Get",
///         ],
///         "secret_permissions": [
///             "Set",
///             "Get",
///             "Delete",
///             "Purge",
///             "Recover",
///         ],
///     }])
/// kvs = azure.keyvault.Secret("kvs",
///     name="kvs",
///     value="szechuan",
///     key_vault_id=kv.id)
/// appconf_dataowner = azure.authorization.Assignment("appconf_dataowner",
///     scope=appconf.id,
///     role_definition_name="App Configuration Data Owner",
///     principal_id=current.object_id)
/// test = azure.appconfiguration.ConfigurationKey("test",
///     configuration_store_id=test_azurerm_app_configuration["id"],
///     key="key1",
///     type="vault",
///     label="label1",
///     vault_key_reference=kvs.versionless_id,
///     opts = pulumi.ResourceOptions(depends_on=[appconf_dataowner]))
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
///     var appconf = new Azure.AppConfiguration.ConfigurationStore("appconf", new()
///     {
///         Name = "appConf1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var kv = new Azure.KeyVault.KeyVault("kv", new()
///     {
///         Name = "kv",
///         Location = testAzurermResourceGroup.Location,
///         ResourceGroupName = testAzurermResourceGroup.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         SoftDeleteRetentionDays = 7,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Get",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover",
///                 },
///             },
///         },
///     });
///
///     var kvs = new Azure.KeyVault.Secret("kvs", new()
///     {
///         Name = "kvs",
///         Value = "szechuan",
///         KeyVaultId = kv.Id,
///     });
///
///     var appconfDataowner = new Azure.Authorization.Assignment("appconf_dataowner", new()
///     {
///         Scope = appconf.Id,
///         RoleDefinitionName = "App Configuration Data Owner",
///         PrincipalId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///     });
///
///     var test = new Azure.AppConfiguration.ConfigurationKey("test", new()
///     {
///         ConfigurationStoreId = testAzurermAppConfiguration.Id,
///         Key = "key1",
///         Type = "vault",
///         Label = "label1",
///         VaultKeyReference = kvs.VersionlessId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             appconfDataowner,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
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
/// 		appconf, err := appconfiguration.NewConfigurationStore(ctx, "appconf", &appconfiguration.ConfigurationStoreArgs{
/// 			Name:              pulumi.String("appConf1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kv, err := keyvault.NewKeyVault(ctx, "kv", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("kv"),
/// 			Location:                pulumi.Any(testAzurermResourceGroup.Location),
/// 			ResourceGroupName:       pulumi.Any(testAzurermResourceGroup.Name),
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("premium"),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Get"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Recover"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kvs, err := keyvault.NewSecret(ctx, "kvs", &keyvault.SecretArgs{
/// 			Name:       pulumi.String("kvs"),
/// 			Value:      pulumi.String("szechuan"),
/// 			KeyVaultId: kv.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		appconfDataowner, err := authorization.NewAssignment(ctx, "appconf_dataowner", &authorization.AssignmentArgs{
/// 			Scope:              appconf.ID(),
/// 			RoleDefinitionName: pulumi.String("App Configuration Data Owner"),
/// 			PrincipalId:        pulumi.String(current.ObjectId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appconfiguration.NewConfigurationKey(ctx, "test", &appconfiguration.ConfigurationKeyArgs{
/// 			ConfigurationStoreId: pulumi.Any(testAzurermAppConfiguration.Id),
/// 			Key:                  pulumi.String("key1"),
/// 			Type:                 pulumi.String("vault"),
/// 			Label:                pulumi.String("label1"),
/// 			VaultKeyReference:    kvs.VersionlessId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			appconfDataowner,
/// 		}))
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
/// import com.pulumi.azure.appconfiguration.ConfigurationStore;
/// import com.pulumi.azure.appconfiguration.ConfigurationStoreArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Secret;
/// import com.pulumi.azure.keyvault.SecretArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.appconfiguration.ConfigurationKey;
/// import com.pulumi.azure.appconfiguration.ConfigurationKeyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var appconf = new ConfigurationStore("appconf", ConfigurationStoreArgs.builder()
///             .name("appConf1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var kv = new KeyVault("kv", KeyVaultArgs.builder()
///             .name("kv")
///             .location(testAzurermResourceGroup.location())
///             .resourceGroupName(testAzurermResourceGroup.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(KeyVaultAccessPolicyArgs.builder()
///                 .tenantId(current.tenantId())
///                 .objectId(current.objectId())
///                 .keyPermissions(
///                     "Create",
///                     "Get")
///                 .secretPermissions(
///                     "Set",
///                     "Get",
///                     "Delete",
///                     "Purge",
///                     "Recover")
///                 .build())
///             .build());
///
///         var kvs = new Secret("kvs", SecretArgs.builder()
///             .name("kvs")
///             .value("szechuan")
///             .keyVaultId(kv.id())
///             .build());
///
///         var appconfDataowner = new Assignment("appconfDataowner", AssignmentArgs.builder()
///             .scope(appconf.id())
///             .roleDefinitionName("App Configuration Data Owner")
///             .principalId(current.objectId())
///             .build());
///
///         var test = new ConfigurationKey("test", ConfigurationKeyArgs.builder()
///             .configurationStoreId(testAzurermAppConfiguration.id())
///             .key("key1")
///             .type("vault")
///             .label("label1")
///             .vaultKeyReference(kvs.versionlessId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(appconfDataowner)
///                 .build());
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
///   appconf:
///     type: azure:appconfiguration:ConfigurationStore
///     properties:
///       name: appConf1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   kv:
///     type: azure:keyvault:KeyVault
///     properties:
///       name: kv
///       location: ${testAzurermResourceGroup.location}
///       resourceGroupName: ${testAzurermResourceGroup.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       softDeleteRetentionDays: 7
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Get
///           secretPermissions:
///             - Set
///             - Get
///             - Delete
///             - Purge
///             - Recover
///   kvs:
///     type: azure:keyvault:Secret
///     properties:
///       name: kvs
///       value: szechuan
///       keyVaultId: ${kv.id}
///   appconfDataowner:
///     type: azure:authorization:Assignment
///     name: appconf_dataowner
///     properties:
///       scope: ${appconf.id}
///       roleDefinitionName: App Configuration Data Owner
///       principalId: ${current.objectId}
///   test:
///     type: azure:appconfiguration:ConfigurationKey
///     properties:
///       configurationStoreId: ${testAzurermAppConfiguration.id}
///       key: key1
///       type: vault
///       label: label1
///       vaultKeyReference: ${kvs.versionlessId}
///     options:
///       dependsOn:
///         - ${appconfDataowner}
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
/// App Configuration Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/configurationKey:ConfigurationKey test https://appconfname1.azconfig.io/kv/keyName?label=labelName
/// ```
///
/// If you wish to import a key with an empty label then simply leave label's name blank:
///
/// ```sh
/// $ pulumi import azure:appconfiguration/configurationKey:ConfigurationKey test https://appconfname1.azconfig.io/kv/keyName?label=
/// ```
class ConfigurationKey extends pulumi.CustomResource {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> configurationStoreId;
  /// The content type of the App Configuration Key. This should only be set when type is set to `kv`.
  late final pulumi.Output<String> contentType;
  /// (Optional) The ETag of the key.
  late final pulumi.Output<String> etag;
  /// The name of the App Configuration Key to create. Changing this forces a new resource to be created.
  late final pulumi.Output<String> key;
  /// The label of the App Configuration Key. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> label;
  /// Should this App Configuration Key be Locked to prevent changes?
  late final pulumi.Output<bool?> locked;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the App Configuration Key. It can either be `kv` (simple [key/value](https://docs.microsoft.com/azure/azure-app-configuration/concept-key-value)) or `vault` (where the value is a reference to a [Key Vault Secret](https://azure.microsoft.com/en-gb/services/key-vault/). Defaults to `kv`.
  late final pulumi.Output<String?> type;
  /// The value of the App Configuration Key. This should only be set when type is set to `kv`.
  ///
  /// > **Note:** `value` and `vault_key_reference` are mutually exclusive.
  late final pulumi.Output<String?> value;
  /// The ID of the vault secret this App Configuration Key refers to. This should only be set when `type` is set to `vault`.
  ///
  /// > **Note:** `vault_key_reference` and `value` are mutually exclusive.
  ///
  /// > **Note:** When setting the `vault_key_reference` using the `id` will pin the value to specific version of the secret, to reference latest secret value use `versionless_id`
  late final pulumi.Output<String?> vaultKeyReference;

  /// Creates a new [ConfigurationKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationKey]. {@macro pulumi_appconfiguration_configuration_key_configuration_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationKey(
    String name, {
    ConfigurationKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/configurationKey:ConfigurationKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configurationStoreId = registerOutput<String>('configurationStoreId');
    this.contentType = registerOutput<String>('contentType');
    this.etag = registerOutput<String>('etag');
    this.key = registerOutput<String>('key');
    this.label = registerOutput<String?>('label');
    this.locked = registerOutput<bool?>('locked');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String?>('type');
    this.value = registerOutput<String?>('value');
    this.vaultKeyReference = registerOutput<String?>('vaultKeyReference');
  }
}
