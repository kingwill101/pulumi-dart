import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_customer_managed_key_args.dart';

/// Manages a Backup Vault Customer Managed Key.
///
/// !> **Note:** It is not possible to remove the Customer Managed Key from the Backup Vault once it's been added. To remove the Customer Managed Key, the parent Data Protection Backup Vault must be deleted and recreated.
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
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example-backup-vault",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-key-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     enabledForDiskEncryption: true,
///     tenantId: current.then(current => current.tenantId),
///     softDeleteRetentionDays: 7,
///     purgeProtectionEnabled: true,
///     skuName: "standard",
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Set"],
///         },
///         {
///             tenantId: exampleBackupVault.identity.apply(identity => identity?.tenantId),
///             objectId: exampleBackupVault.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Set"],
///         },
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "example-key",
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
/// });
/// const exampleBackupVaultCustomerManagedKey = new azure.dataprotection.BackupVaultCustomerManagedKey("example", {
///     dataProtectionBackupVaultId: exampleBackupVault.id,
///     keyVaultKeyId: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-key-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     enabled_for_disk_encryption=True,
///     tenant_id=current.tenant_id,
///     soft_delete_retention_days=7,
///     purge_protection_enabled=True,
///     sku_name="standard",
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Set"],
///         },
///         {
///             "tenant_id": example_backup_vault.identity.tenant_id,
///             "object_id": example_backup_vault.identity.principal_id,
///             "key_permissions": [
///                 "Create",
///                 "Decrypt",
///                 "Encrypt",
///                 "Delete",
///                 "Get",
///                 "List",
///                 "Purge",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Set"],
///         },
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="example-key",
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
///     ])
/// example_backup_vault_customer_managed_key = azure.dataprotection.BackupVaultCustomerManagedKey("example",
///     data_protection_backup_vault_id=example_backup_vault.id,
///     key_vault_key_id=example_key.id)
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
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example-backup-vault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///         Identity = new Azure.DataProtection.Inputs.BackupVaultIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-key-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         EnabledForDiskEncryption = true,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SoftDeleteRetentionDays = 7,
///         PurgeProtectionEnabled = true,
///         SkuName = "standard",
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Decrypt",
///                     "Encrypt",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Verify",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleBackupVault.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Create",
///                     "Decrypt",
///                     "Encrypt",
///                     "Delete",
///                     "Get",
///                     "List",
///                     "Purge",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Verify",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Set",
///                 },
///             },
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "example-key",
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
///     });
///
///     var exampleBackupVaultCustomerManagedKey = new Azure.DataProtection.BackupVaultCustomerManagedKey("example", new()
///     {
///         DataProtectionBackupVaultId = exampleBackupVault.Id,
///         KeyVaultKeyId = exampleKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
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
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example-backup-vault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
/// 			Identity: &dataprotection.BackupVaultIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                     pulumi.String("example-key-vault"),
/// 			Location:                 example.Location,
/// 			ResourceGroupName:        example.Name,
/// 			EnabledForDiskEncryption: pulumi.Bool(true),
/// 			TenantId:                 pulumi.String(current.TenantId),
/// 			SoftDeleteRetentionDays:  pulumi.Int(7),
/// 			PurgeProtectionEnabled:   pulumi.Bool(true),
/// 			SkuName:                  pulumi.String("standard"),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Create"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("Get"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Set"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("example-key"),
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupVaultCustomerManagedKey(ctx, "example", &dataprotection.BackupVaultCustomerManagedKeyArgs{
/// 			DataProtectionBackupVaultId: exampleBackupVault.ID(),
/// 			KeyVaultKeyId:               exampleKey.ID(),
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
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.dataprotection.BackupVaultCustomerManagedKey;
/// import com.pulumi.azure.dataprotection.BackupVaultCustomerManagedKeyArgs;
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
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-backup-vault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .identity(BackupVaultIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-key-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .enabledForDiskEncryption(true)
///             .tenantId(current.tenantId())
///             .softDeleteRetentionDays(7)
///             .purgeProtectionEnabled(true)
///             .skuName("standard")
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Create",
///                         "Decrypt",
///                         "Encrypt",
///                         "Delete",
///                         "Get",
///                         "List",
///                         "Purge",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Verify",
///                         "GetRotationPolicy")
///                     .secretPermissions("Set")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleBackupVault.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Create",
///                         "Decrypt",
///                         "Encrypt",
///                         "Delete",
///                         "Get",
///                         "List",
///                         "Purge",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Verify",
///                         "GetRotationPolicy")
///                     .secretPermissions("Set")
///                     .build())
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("example-key")
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
///             .build());
///
///         var exampleBackupVaultCustomerManagedKey = new BackupVaultCustomerManagedKey("exampleBackupVaultCustomerManagedKey", BackupVaultCustomerManagedKeyArgs.builder()
///             .dataProtectionBackupVaultId(exampleBackupVault.id())
///             .keyVaultKeyId(exampleKey.id())
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
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example-backup-vault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
///       identity:
///         type: SystemAssigned
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-key-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       enabledForDiskEncryption: true
///       tenantId: ${current.tenantId}
///       softDeleteRetentionDays: 7
///       purgeProtectionEnabled: true
///       skuName: standard
///       accessPolicies:
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Create
///             - Decrypt
///             - Encrypt
///             - Delete
///             - Get
///             - List
///             - Purge
///             - UnwrapKey
///             - WrapKey
///             - Verify
///             - GetRotationPolicy
///           secretPermissions:
///             - Set
///         - tenantId: ${exampleBackupVault.identity.tenantId}
///           objectId: ${exampleBackupVault.identity.principalId}
///           keyPermissions:
///             - Create
///             - Decrypt
///             - Encrypt
///             - Delete
///             - Get
///             - List
///             - Purge
///             - UnwrapKey
///             - WrapKey
///             - Verify
///             - GetRotationPolicy
///           secretPermissions:
///             - Set
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: example-key
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
///   exampleBackupVaultCustomerManagedKey:
///     type: azure:dataprotection:BackupVaultCustomerManagedKey
///     name: example
///     properties:
///       dataProtectionBackupVaultId: ${exampleBackupVault.id}
///       keyVaultKeyId: ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Backup Vault Customer Managed Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupVaultCustomerManagedKey:BackupVaultCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1
/// ```
class BackupVaultCustomerManagedKey extends pulumi.CustomResource {
  /// The ID of the Backup Vault. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataProtectionBackupVaultId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Backup Vault.
  late final pulumi.Output<String> keyVaultKeyId;

  /// Creates a new [BackupVaultCustomerManagedKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupVaultCustomerManagedKey]. {@macro pulumi_dataprotection_backup_vault_customer_managed_key_backup_vault_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupVaultCustomerManagedKey(
    String name, {
    BackupVaultCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupVaultCustomerManagedKey:BackupVaultCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
  }
}
