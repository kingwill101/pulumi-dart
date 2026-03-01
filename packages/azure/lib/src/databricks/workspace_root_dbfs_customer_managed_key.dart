import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_root_dbfs_customer_managed_key_args.dart';

/// Manages a Customer Managed Key for the Databricks Workspaces Root Databricks File System (DBFS)
///
/// ## Example Usage
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
///     name: "examplekeyvault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     purgeProtectionEnabled: true,
///     softDeleteRetentionDays: 7,
/// });
/// const terraform = new azure.keyvault.AccessPolicy("terraform", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleKeyVault.tenantId,
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "example-certificate",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [terraform],
/// });
/// const exampleWorkspace = new azure.databricks.Workspace("example", {
///     name: "example-workspace",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "premium",
///     customerManagedKeyEnabled: true,
/// });
/// const databricks = new azure.keyvault.AccessPolicy("databricks", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleWorkspace.storageAccountIdentities.apply(storageAccountIdentities => storageAccountIdentities[0].tenantId),
///     objectId: exampleWorkspace.storageAccountIdentities.apply(storageAccountIdentities => storageAccountIdentities[0].principalId),
///     keyPermissions: [
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ],
/// }, {
///     dependsOn: [exampleWorkspace],
/// });
/// const exampleWorkspaceRootDbfsCustomerManagedKey = new azure.databricks.WorkspaceRootDbfsCustomerManagedKey("example", {
///     workspaceId: exampleWorkspace.id,
///     keyVaultKeyId: exampleKey.id,
/// }, {
///     dependsOn: [databricks],
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
///     name="examplekeyvault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     purge_protection_enabled=True,
///     soft_delete_retention_days=7)
/// terraform = azure.keyvault.AccessPolicy("terraform",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_key_vault.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="example-certificate",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "decrypt",
///         "encrypt",
///         "sign",
///         "unwrapKey",
///         "verify",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[terraform]))
/// example_workspace = azure.databricks.Workspace("example",
///     name="example-workspace",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="premium",
///     customer_managed_key_enabled=True)
/// databricks = azure.keyvault.AccessPolicy("databricks",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_workspace.storage_account_identities[0].tenant_id,
///     object_id=example_workspace.storage_account_identities[0].principal_id,
///     key_permissions=[
///         "Create",
///         "Delete",
///         "Get",
///         "Purge",
///         "Recover",
///         "Update",
///         "List",
///         "Decrypt",
///         "Sign",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_workspace]))
/// example_workspace_root_dbfs_customer_managed_key = azure.databricks.WorkspaceRootDbfsCustomerManagedKey("example",
///     workspace_id=example_workspace.id,
///     key_vault_key_id=example_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[databricks]))
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
///         Name = "examplekeyvault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "premium",
///         PurgeProtectionEnabled = true,
///         SoftDeleteRetentionDays = 7,
///     });
///
///     var terraform = new Azure.KeyVault.AccessPolicy("terraform", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleKeyVault.TenantId,
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "example-certificate",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "decrypt",
///             "encrypt",
///             "sign",
///             "unwrapKey",
///             "verify",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             terraform,
///         },
///     });
///
///     var exampleWorkspace = new Azure.DataBricks.Workspace("example", new()
///     {
///         Name = "example-workspace",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "premium",
///         CustomerManagedKeyEnabled = true,
///     });
///
///     var databricks = new Azure.KeyVault.AccessPolicy("databricks", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleWorkspace.StorageAccountIdentities.Apply(storageAccountIdentities => storageAccountIdentities[0].TenantId),
///         ObjectId = exampleWorkspace.StorageAccountIdentities.Apply(storageAccountIdentities => storageAccountIdentities[0].PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Delete",
///             "Get",
///             "Purge",
///             "Recover",
///             "Update",
///             "List",
///             "Decrypt",
///             "Sign",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleWorkspace,
///         },
///     });
///
///     var exampleWorkspaceRootDbfsCustomerManagedKey = new Azure.DataBricks.WorkspaceRootDbfsCustomerManagedKey("example", new()
///     {
///         WorkspaceId = exampleWorkspace.Id,
///         KeyVaultKeyId = exampleKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             databricks,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/databricks"
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
/// 			Name:                    pulumi.String("examplekeyvault"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			TenantId:                pulumi.String(current.TenantId),
/// 			SkuName:                 pulumi.String("premium"),
/// 			PurgeProtectionEnabled:  pulumi.Bool(true),
/// 			SoftDeleteRetentionDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		terraform, err := keyvault.NewAccessPolicy(ctx, "terraform", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   exampleKeyVault.TenantId,
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("example-certificate"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("decrypt"),
/// 				pulumi.String("encrypt"),
/// 				pulumi.String("sign"),
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("verify"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			terraform,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := databricks.NewWorkspace(ctx, "example", &databricks.WorkspaceArgs{
/// 			Name:                      pulumi.String("example-workspace"),
/// 			ResourceGroupName:         example.Name,
/// 			Location:                  example.Location,
/// 			Sku:                       pulumi.String("premium"),
/// 			CustomerManagedKeyEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		databricks, err := keyvault.NewAccessPolicy(ctx, "databricks", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleWorkspace.StorageAccountIdentities.ApplyT(func(storageAccountIdentities []databricks.WorkspaceStorageAccountIdentity) (*string, error) {
/// 				return &storageAccountIdentities[0].TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleWorkspace.StorageAccountIdentities.ApplyT(func(storageAccountIdentities []databricks.WorkspaceStorageAccountIdentity) (*string, error) {
/// 				return &storageAccountIdentities[0].PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("Recover"),
/// 				pulumi.String("Update"),
/// 				pulumi.String("List"),
/// 				pulumi.String("Decrypt"),
/// 				pulumi.String("Sign"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleWorkspace,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databricks.NewWorkspaceRootDbfsCustomerManagedKey(ctx, "example", &databricks.WorkspaceRootDbfsCustomerManagedKeyArgs{
/// 			WorkspaceId:   exampleWorkspace.ID(),
/// 			KeyVaultKeyId: exampleKey.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			databricks,
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.databricks.Workspace;
/// import com.pulumi.azure.databricks.WorkspaceArgs;
/// import com.pulumi.azure.databricks.WorkspaceRootDbfsCustomerManagedKey;
/// import com.pulumi.azure.databricks.WorkspaceRootDbfsCustomerManagedKeyArgs;
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
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("examplekeyvault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .purgeProtectionEnabled(true)
///             .softDeleteRetentionDays(7)
///             .build());
///
///         var terraform = new AccessPolicy("terraform", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleKeyVault.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("example-certificate")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "decrypt",
///                 "encrypt",
///                 "sign",
///                 "unwrapKey",
///                 "verify",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(terraform)
///                 .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example-workspace")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("premium")
///             .customerManagedKeyEnabled(true)
///             .build());
///
///         var databricks = new AccessPolicy("databricks", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleWorkspace.storageAccountIdentities().applyValue(_storageAccountIdentities -> _storageAccountIdentities[0].tenantId()))
///             .objectId(exampleWorkspace.storageAccountIdentities().applyValue(_storageAccountIdentities -> _storageAccountIdentities[0].principalId()))
///             .keyPermissions(
///                 "Create",
///                 "Delete",
///                 "Get",
///                 "Purge",
///                 "Recover",
///                 "Update",
///                 "List",
///                 "Decrypt",
///                 "Sign")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleWorkspace)
///                 .build());
///
///         var exampleWorkspaceRootDbfsCustomerManagedKey = new WorkspaceRootDbfsCustomerManagedKey("exampleWorkspaceRootDbfsCustomerManagedKey", WorkspaceRootDbfsCustomerManagedKeyArgs.builder()
///             .workspaceId(exampleWorkspace.id())
///             .keyVaultKeyId(exampleKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(databricks)
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
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: examplekeyvault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: premium
///       purgeProtectionEnabled: true
///       softDeleteRetentionDays: 7
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: example-certificate
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - decrypt
///         - encrypt
///         - sign
///         - unwrapKey
///         - verify
///         - wrapKey
///     options:
///       dependsOn:
///         - ${terraform}
///   terraform:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleKeyVault.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///         - GetRotationPolicy
///   databricks:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleWorkspace.storageAccountIdentities[0].tenantId}
///       objectId: ${exampleWorkspace.storageAccountIdentities[0].principalId}
///       keyPermissions:
///         - Create
///         - Delete
///         - Get
///         - Purge
///         - Recover
///         - Update
///         - List
///         - Decrypt
///         - Sign
///     options:
///       dependsOn:
///         - ${exampleWorkspace}
///   exampleWorkspace:
///     type: azure:databricks:Workspace
///     name: example
///     properties:
///       name: example-workspace
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: premium
///       customerManagedKeyEnabled: true
///   exampleWorkspaceRootDbfsCustomerManagedKey:
///     type: azure:databricks:WorkspaceRootDbfsCustomerManagedKey
///     name: example
///     properties:
///       workspaceId: ${exampleWorkspace.id}
///       keyVaultKeyId: ${exampleKey.id}
///     options:
///       dependsOn:
///         - ${databricks}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Example HCL Configurations
///
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys
/// * Databricks Workspace with Root Databricks File System Customer Managed Keys in a Different Subscription
/// * Databricks Workspace with Private Endpoint, Customer Managed Keys for Managed Services and Root Databricks File System Customer Managed Keys
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Databricks` - 2024-05-01
///
/// ## Import
///
/// Databricks Workspace Root DBFS Customer Managed Key can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:databricks/workspaceRootDbfsCustomerManagedKey:WorkspaceRootDbfsCustomerManagedKey workspace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/workspaces/workspace1
/// ```
class WorkspaceRootDbfsCustomerManagedKey extends pulumi.CustomResource {
  /// Specifies the Resource ID of the Key Vault which contains the `key_vault_key_id`.
  ///
  /// > **Note:** The `key_vault_id` field only needs to be specified if the Key Vault which contains the `key_vault_key_id` exists in a different subscription than the Databricks Workspace. If the `key_vault_id` field is not specified it is assumed that the `key_vault_key_id` is hosted in the same subscription as the Databricks Workspace. Does not apply to managed HSM vaults.
  ///
  /// > **Note:** If you are using multiple service principals to execute Terraform across subscriptions you will need to add an additional `azure.keyvault.AccessPolicy` resource granting the service principal access to the key vault in that subscription.
  late final pulumi.Output<String?> keyVaultId;
  /// The ID of the Key Vault Key to be used.
  late final pulumi.Output<String> keyVaultKeyId;
  /// The Resource ID of the Databricks Workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceRootDbfsCustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceRootDbfsCustomerManagedKey]. {@macro pulumi_databricks_workspace_root_dbfs_customer_managed_key_workspace_root_dbfs_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceRootDbfsCustomerManagedKey(
    String name, {
    WorkspaceRootDbfsCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:databricks/workspaceRootDbfsCustomerManagedKey:WorkspaceRootDbfsCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keyVaultId = registerOutput<String?>('keyVaultId');
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
