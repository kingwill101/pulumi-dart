import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'vault_args.dart';
import 'vault_properties_response.dart';

/// Resource information with extended details.
///
/// Uses Azure REST API version 2024-11-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2023-02-01, 2023-07-01, 2024-04-01-preview, 2024-12-01-preview, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native keyvault [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new vault or update an existing vault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.KeyVault.Vault("vault", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.KeyVault.Inputs.VaultPropertiesArgs
///         {
///             AccessPolicies = new[]
///             {
///                 new AzureNative.KeyVault.Inputs.AccessPolicyEntryArgs
///                 {
///                     ObjectId = "00000000-0000-0000-0000-000000000000",
///                     Permissions = new AzureNative.KeyVault.Inputs.PermissionsArgs
///                     {
///                         Certificates = new[]
///                         {
///                             AzureNative.KeyVault.CertificatePermissions.@Get,
///                             AzureNative.KeyVault.CertificatePermissions.List,
///                             AzureNative.KeyVault.CertificatePermissions.Delete,
///                             AzureNative.KeyVault.CertificatePermissions.Create,
///                             AzureNative.KeyVault.CertificatePermissions.Import,
///                             AzureNative.KeyVault.CertificatePermissions.Update,
///                             AzureNative.KeyVault.CertificatePermissions.Managecontacts,
///                             AzureNative.KeyVault.CertificatePermissions.Getissuers,
///                             AzureNative.KeyVault.CertificatePermissions.Listissuers,
///                             AzureNative.KeyVault.CertificatePermissions.Setissuers,
///                             AzureNative.KeyVault.CertificatePermissions.Deleteissuers,
///                             AzureNative.KeyVault.CertificatePermissions.Manageissuers,
///                             AzureNative.KeyVault.CertificatePermissions.Recover,
///                             AzureNative.KeyVault.CertificatePermissions.Purge,
///                         },
///                         Keys = new[]
///                         {
///                             AzureNative.KeyVault.KeyPermissions.Encrypt,
///                             AzureNative.KeyVault.KeyPermissions.Decrypt,
///                             AzureNative.KeyVault.KeyPermissions.WrapKey,
///                             AzureNative.KeyVault.KeyPermissions.UnwrapKey,
///                             AzureNative.KeyVault.KeyPermissions.Sign,
///                             AzureNative.KeyVault.KeyPermissions.Verify,
///                             AzureNative.KeyVault.KeyPermissions.@Get,
///                             AzureNative.KeyVault.KeyPermissions.List,
///                             AzureNative.KeyVault.KeyPermissions.Create,
///                             AzureNative.KeyVault.KeyPermissions.Update,
///                             AzureNative.KeyVault.KeyPermissions.Import,
///                             AzureNative.KeyVault.KeyPermissions.Delete,
///                             AzureNative.KeyVault.KeyPermissions.Backup,
///                             AzureNative.KeyVault.KeyPermissions.Restore,
///                             AzureNative.KeyVault.KeyPermissions.Recover,
///                             AzureNative.KeyVault.KeyPermissions.Purge,
///                         },
///                         Secrets = new[]
///                         {
///                             AzureNative.KeyVault.SecretPermissions.@Get,
///                             AzureNative.KeyVault.SecretPermissions.List,
///                             AzureNative.KeyVault.SecretPermissions.@Set,
///                             AzureNative.KeyVault.SecretPermissions.Delete,
///                             AzureNative.KeyVault.SecretPermissions.Backup,
///                             AzureNative.KeyVault.SecretPermissions.Restore,
///                             AzureNative.KeyVault.SecretPermissions.Recover,
///                             AzureNative.KeyVault.SecretPermissions.Purge,
///                         },
///                     },
///                     TenantId = "00000000-0000-0000-0000-000000000000",
///                 },
///             },
///             EnabledForDeployment = true,
///             EnabledForDiskEncryption = true,
///             EnabledForTemplateDeployment = true,
///             PublicNetworkAccess = "Enabled",
///             Sku = new AzureNative.KeyVault.Inputs.SkuArgs
///             {
///                 Family = AzureNative.KeyVault.SkuFamily.A,
///                 Name = AzureNative.KeyVault.SkuName.Standard,
///             },
///             TenantId = "00000000-0000-0000-0000-000000000000",
///         },
///         ResourceGroupName = "sample-resource-group",
///         VaultName = "sample-vault",
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
/// 	keyvault "github.com/pulumi/pulumi-azure-native-sdk/keyvault/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyvault.NewVault(ctx, "vault", &keyvault.VaultArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &keyvault.VaultPropertiesArgs{
/// 				AccessPolicies: keyvault.AccessPolicyEntryArray{
/// 					&keyvault.AccessPolicyEntryArgs{
/// 						ObjectId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						Permissions: &keyvault.PermissionsArgs{
/// 							Certificates: pulumi.StringArray{
/// 								pulumi.String(keyvault.CertificatePermissionsGet),
/// 								pulumi.String(keyvault.CertificatePermissionsList),
/// 								pulumi.String(keyvault.CertificatePermissionsDelete),
/// 								pulumi.String(keyvault.CertificatePermissionsCreate),
/// 								pulumi.String(keyvault.CertificatePermissionsImport),
/// 								pulumi.String(keyvault.CertificatePermissionsUpdate),
/// 								pulumi.String(keyvault.CertificatePermissionsManagecontacts),
/// 								pulumi.String(keyvault.CertificatePermissionsGetissuers),
/// 								pulumi.String(keyvault.CertificatePermissionsListissuers),
/// 								pulumi.String(keyvault.CertificatePermissionsSetissuers),
/// 								pulumi.String(keyvault.CertificatePermissionsDeleteissuers),
/// 								pulumi.String(keyvault.CertificatePermissionsManageissuers),
/// 								pulumi.String(keyvault.CertificatePermissionsRecover),
/// 								pulumi.String(keyvault.CertificatePermissionsPurge),
/// 							},
/// 							Keys: pulumi.StringArray{
/// 								pulumi.String(keyvault.KeyPermissionsEncrypt),
/// 								pulumi.String(keyvault.KeyPermissionsDecrypt),
/// 								pulumi.String(keyvault.KeyPermissionsWrapKey),
/// 								pulumi.String(keyvault.KeyPermissionsUnwrapKey),
/// 								pulumi.String(keyvault.KeyPermissionsSign),
/// 								pulumi.String(keyvault.KeyPermissionsVerify),
/// 								pulumi.String(keyvault.KeyPermissionsGet),
/// 								pulumi.String(keyvault.KeyPermissionsList),
/// 								pulumi.String(keyvault.KeyPermissionsCreate),
/// 								pulumi.String(keyvault.KeyPermissionsUpdate),
/// 								pulumi.String(keyvault.KeyPermissionsImport),
/// 								pulumi.String(keyvault.KeyPermissionsDelete),
/// 								pulumi.String(keyvault.KeyPermissionsBackup),
/// 								pulumi.String(keyvault.KeyPermissionsRestore),
/// 								pulumi.String(keyvault.KeyPermissionsRecover),
/// 								pulumi.String(keyvault.KeyPermissionsPurge),
/// 							},
/// 							Secrets: pulumi.StringArray{
/// 								pulumi.String(keyvault.SecretPermissionsGet),
/// 								pulumi.String(keyvault.SecretPermissionsList),
/// 								pulumi.String(keyvault.SecretPermissionsSet),
/// 								pulumi.String(keyvault.SecretPermissionsDelete),
/// 								pulumi.String(keyvault.SecretPermissionsBackup),
/// 								pulumi.String(keyvault.SecretPermissionsRestore),
/// 								pulumi.String(keyvault.SecretPermissionsRecover),
/// 								pulumi.String(keyvault.SecretPermissionsPurge),
/// 							},
/// 						},
/// 						TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					},
/// 				},
/// 				EnabledForDeployment:         pulumi.Bool(true),
/// 				EnabledForDiskEncryption:     pulumi.Bool(true),
/// 				EnabledForTemplateDeployment: pulumi.Bool(true),
/// 				PublicNetworkAccess:          pulumi.String("Enabled"),
/// 				Sku: &keyvault.SkuArgs{
/// 					Family: pulumi.String(keyvault.SkuFamilyA),
/// 					Name:   keyvault.SkuNameStandard,
/// 				},
/// 				TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-resource-group"),
/// 			VaultName:         pulumi.String("sample-vault"),
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
/// import com.pulumi.azurenative.keyvault.Vault;
/// import com.pulumi.azurenative.keyvault.VaultArgs;
/// import com.pulumi.azurenative.keyvault.inputs.VaultPropertiesArgs;
/// import com.pulumi.azurenative.keyvault.inputs.SkuArgs;
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
///         var vault = new Vault("vault", VaultArgs.builder()
///             .location("westus")
///             .properties(VaultPropertiesArgs.builder()
///                 .accessPolicies(AccessPolicyEntryArgs.builder()
///                     .objectId("00000000-0000-0000-0000-000000000000")
///                     .permissions(PermissionsArgs.builder()
///                         .certificates(
///                             "get",
///                             "list",
///                             "delete",
///                             "create",
///                             "import",
///                             "update",
///                             "managecontacts",
///                             "getissuers",
///                             "listissuers",
///                             "setissuers",
///                             "deleteissuers",
///                             "manageissuers",
///                             "recover",
///                             "purge")
///                         .keys(
///                             "encrypt",
///                             "decrypt",
///                             "wrapKey",
///                             "unwrapKey",
///                             "sign",
///                             "verify",
///                             "get",
///                             "list",
///                             "create",
///                             "update",
///                             "import",
///                             "delete",
///                             "backup",
///                             "restore",
///                             "recover",
///                             "purge")
///                         .secrets(
///                             "get",
///                             "list",
///                             "set",
///                             "delete",
///                             "backup",
///                             "restore",
///                             "recover",
///                             "purge")
///                         .build())
///                     .tenantId("00000000-0000-0000-0000-000000000000")
///                     .build())
///                 .enabledForDeployment(true)
///                 .enabledForDiskEncryption(true)
///                 .enabledForTemplateDeployment(true)
///                 .publicNetworkAccess("Enabled")
///                 .sku(SkuArgs.builder()
///                     .family("A")
///                     .name("standard")
///                     .build())
///                 .tenantId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .resourceGroupName("sample-resource-group")
///             .vaultName("sample-vault")
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
/// const vault = new azure_native.keyvault.Vault("vault", {
///     location: "westus",
///     properties: {
///         accessPolicies: [{
///             objectId: "00000000-0000-0000-0000-000000000000",
///             permissions: {
///                 certificates: [
///                     azure_native.keyvault.CertificatePermissions.Get,
///                     azure_native.keyvault.CertificatePermissions.List,
///                     azure_native.keyvault.CertificatePermissions.Delete,
///                     azure_native.keyvault.CertificatePermissions.Create,
///                     azure_native.keyvault.CertificatePermissions.Import,
///                     azure_native.keyvault.CertificatePermissions.Update,
///                     azure_native.keyvault.CertificatePermissions.Managecontacts,
///                     azure_native.keyvault.CertificatePermissions.Getissuers,
///                     azure_native.keyvault.CertificatePermissions.Listissuers,
///                     azure_native.keyvault.CertificatePermissions.Setissuers,
///                     azure_native.keyvault.CertificatePermissions.Deleteissuers,
///                     azure_native.keyvault.CertificatePermissions.Manageissuers,
///                     azure_native.keyvault.CertificatePermissions.Recover,
///                     azure_native.keyvault.CertificatePermissions.Purge,
///                 ],
///                 keys: [
///                     azure_native.keyvault.KeyPermissions.Encrypt,
///                     azure_native.keyvault.KeyPermissions.Decrypt,
///                     azure_native.keyvault.KeyPermissions.WrapKey,
///                     azure_native.keyvault.KeyPermissions.UnwrapKey,
///                     azure_native.keyvault.KeyPermissions.Sign,
///                     azure_native.keyvault.KeyPermissions.Verify,
///                     azure_native.keyvault.KeyPermissions.Get,
///                     azure_native.keyvault.KeyPermissions.List,
///                     azure_native.keyvault.KeyPermissions.Create,
///                     azure_native.keyvault.KeyPermissions.Update,
///                     azure_native.keyvault.KeyPermissions.Import,
///                     azure_native.keyvault.KeyPermissions.Delete,
///                     azure_native.keyvault.KeyPermissions.Backup,
///                     azure_native.keyvault.KeyPermissions.Restore,
///                     azure_native.keyvault.KeyPermissions.Recover,
///                     azure_native.keyvault.KeyPermissions.Purge,
///                 ],
///                 secrets: [
///                     azure_native.keyvault.SecretPermissions.Get,
///                     azure_native.keyvault.SecretPermissions.List,
///                     azure_native.keyvault.SecretPermissions.Set,
///                     azure_native.keyvault.SecretPermissions.Delete,
///                     azure_native.keyvault.SecretPermissions.Backup,
///                     azure_native.keyvault.SecretPermissions.Restore,
///                     azure_native.keyvault.SecretPermissions.Recover,
///                     azure_native.keyvault.SecretPermissions.Purge,
///                 ],
///             },
///             tenantId: "00000000-0000-0000-0000-000000000000",
///         }],
///         enabledForDeployment: true,
///         enabledForDiskEncryption: true,
///         enabledForTemplateDeployment: true,
///         publicNetworkAccess: "Enabled",
///         sku: {
///             family: azure_native.keyvault.SkuFamily.A,
///             name: azure_native.keyvault.SkuName.Standard,
///         },
///         tenantId: "00000000-0000-0000-0000-000000000000",
///     },
///     resourceGroupName: "sample-resource-group",
///     vaultName: "sample-vault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.keyvault.Vault("vault",
///     location="westus",
///     properties={
///         "access_policies": [{
///             "object_id": "00000000-0000-0000-0000-000000000000",
///             "permissions": {
///                 "certificates": [
///                     azure_native.keyvault.CertificatePermissions.GET,
///                     azure_native.keyvault.CertificatePermissions.LIST,
///                     azure_native.keyvault.CertificatePermissions.DELETE,
///                     azure_native.keyvault.CertificatePermissions.CREATE,
///                     azure_native.keyvault.CertificatePermissions.IMPORT_,
///                     azure_native.keyvault.CertificatePermissions.UPDATE,
///                     azure_native.keyvault.CertificatePermissions.MANAGECONTACTS,
///                     azure_native.keyvault.CertificatePermissions.GETISSUERS,
///                     azure_native.keyvault.CertificatePermissions.LISTISSUERS,
///                     azure_native.keyvault.CertificatePermissions.SETISSUERS,
///                     azure_native.keyvault.CertificatePermissions.DELETEISSUERS,
///                     azure_native.keyvault.CertificatePermissions.MANAGEISSUERS,
///                     azure_native.keyvault.CertificatePermissions.RECOVER,
///                     azure_native.keyvault.CertificatePermissions.PURGE,
///                 ],
///                 "keys": [
///                     azure_native.keyvault.KeyPermissions.ENCRYPT,
///                     azure_native.keyvault.KeyPermissions.DECRYPT,
///                     azure_native.keyvault.KeyPermissions.WRAP_KEY,
///                     azure_native.keyvault.KeyPermissions.UNWRAP_KEY,
///                     azure_native.keyvault.KeyPermissions.SIGN,
///                     azure_native.keyvault.KeyPermissions.VERIFY,
///                     azure_native.keyvault.KeyPermissions.GET,
///                     azure_native.keyvault.KeyPermissions.LIST,
///                     azure_native.keyvault.KeyPermissions.CREATE,
///                     azure_native.keyvault.KeyPermissions.UPDATE,
///                     azure_native.keyvault.KeyPermissions.IMPORT_,
///                     azure_native.keyvault.KeyPermissions.DELETE,
///                     azure_native.keyvault.KeyPermissions.BACKUP,
///                     azure_native.keyvault.KeyPermissions.RESTORE,
///                     azure_native.keyvault.KeyPermissions.RECOVER,
///                     azure_native.keyvault.KeyPermissions.PURGE,
///                 ],
///                 "secrets": [
///                     azure_native.keyvault.SecretPermissions.GET,
///                     azure_native.keyvault.SecretPermissions.LIST,
///                     azure_native.keyvault.SecretPermissions.SET,
///                     azure_native.keyvault.SecretPermissions.DELETE,
///                     azure_native.keyvault.SecretPermissions.BACKUP,
///                     azure_native.keyvault.SecretPermissions.RESTORE,
///                     azure_native.keyvault.SecretPermissions.RECOVER,
///                     azure_native.keyvault.SecretPermissions.PURGE,
///                 ],
///             },
///             "tenant_id": "00000000-0000-0000-0000-000000000000",
///         }],
///         "enabled_for_deployment": True,
///         "enabled_for_disk_encryption": True,
///         "enabled_for_template_deployment": True,
///         "public_network_access": "Enabled",
///         "sku": {
///             "family": azure_native.keyvault.SkuFamily.A,
///             "name": azure_native.keyvault.SkuName.STANDARD,
///         },
///         "tenant_id": "00000000-0000-0000-0000-000000000000",
///     },
///     resource_group_name="sample-resource-group",
///     vault_name="sample-vault")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:keyvault:Vault
///     properties:
///       location: westus
///       properties:
///         accessPolicies:
///           - objectId: 00000000-0000-0000-0000-000000000000
///             permissions:
///               certificates:
///                 - get
///                 - list
///                 - delete
///                 - create
///                 - import
///                 - update
///                 - managecontacts
///                 - getissuers
///                 - listissuers
///                 - setissuers
///                 - deleteissuers
///                 - manageissuers
///                 - recover
///                 - purge
///               keys:
///                 - encrypt
///                 - decrypt
///                 - wrapKey
///                 - unwrapKey
///                 - sign
///                 - verify
///                 - get
///                 - list
///                 - create
///                 - update
///                 - import
///                 - delete
///                 - backup
///                 - restore
///                 - recover
///                 - purge
///               secrets:
///                 - get
///                 - list
///                 - set
///                 - delete
///                 - backup
///                 - restore
///                 - recover
///                 - purge
///             tenantId: 00000000-0000-0000-0000-000000000000
///         enabledForDeployment: true
///         enabledForDiskEncryption: true
///         enabledForTemplateDeployment: true
///         publicNetworkAccess: Enabled
///         sku:
///           family: A
///           name: standard
///         tenantId: 00000000-0000-0000-0000-000000000000
///       resourceGroupName: sample-resource-group
///       vaultName: sample-vault
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a vault with network acls
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vault = new AzureNative.KeyVault.Vault("vault", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.KeyVault.Inputs.VaultPropertiesArgs
///         {
///             EnabledForDeployment = true,
///             EnabledForDiskEncryption = true,
///             EnabledForTemplateDeployment = true,
///             NetworkAcls = new AzureNative.KeyVault.Inputs.NetworkRuleSetArgs
///             {
///                 Bypass = AzureNative.KeyVault.NetworkRuleBypassOptions.AzureServices,
///                 DefaultAction = AzureNative.KeyVault.NetworkRuleAction.Deny,
///                 IpRules = new[]
///                 {
///                     new AzureNative.KeyVault.Inputs.IPRuleArgs
///                     {
///                         Value = "124.56.78.91",
///                     },
///                     new AzureNative.KeyVault.Inputs.IPRuleArgs
///                     {
///                         Value = "'10.91.4.0/24'",
///                     },
///                 },
///                 VirtualNetworkRules = new[]
///                 {
///                     new AzureNative.KeyVault.Inputs.VirtualNetworkRuleArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1",
///                     },
///                 },
///             },
///             Sku = new AzureNative.KeyVault.Inputs.SkuArgs
///             {
///                 Family = AzureNative.KeyVault.SkuFamily.A,
///                 Name = AzureNative.KeyVault.SkuName.Standard,
///             },
///             TenantId = "00000000-0000-0000-0000-000000000000",
///         },
///         ResourceGroupName = "sample-resource-group",
///         VaultName = "sample-vault",
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
/// 	keyvault "github.com/pulumi/pulumi-azure-native-sdk/keyvault/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyvault.NewVault(ctx, "vault", &keyvault.VaultArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &keyvault.VaultPropertiesArgs{
/// 				EnabledForDeployment:         pulumi.Bool(true),
/// 				EnabledForDiskEncryption:     pulumi.Bool(true),
/// 				EnabledForTemplateDeployment: pulumi.Bool(true),
/// 				NetworkAcls: &keyvault.NetworkRuleSetArgs{
/// 					Bypass:        pulumi.String(keyvault.NetworkRuleBypassOptionsAzureServices),
/// 					DefaultAction: pulumi.String(keyvault.NetworkRuleActionDeny),
/// 					IpRules: keyvault.IPRuleArray{
/// 						&keyvault.IPRuleArgs{
/// 							Value: pulumi.String("124.56.78.91"),
/// 						},
/// 						&keyvault.IPRuleArgs{
/// 							Value: pulumi.String("'10.91.4.0/24'"),
/// 						},
/// 					},
/// 					VirtualNetworkRules: keyvault.VirtualNetworkRuleArray{
/// 						&keyvault.VirtualNetworkRuleArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1"),
/// 						},
/// 					},
/// 				},
/// 				Sku: &keyvault.SkuArgs{
/// 					Family: pulumi.String(keyvault.SkuFamilyA),
/// 					Name:   keyvault.SkuNameStandard,
/// 				},
/// 				TenantId: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			},
/// 			ResourceGroupName: pulumi.String("sample-resource-group"),
/// 			VaultName:         pulumi.String("sample-vault"),
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
/// import com.pulumi.azurenative.keyvault.Vault;
/// import com.pulumi.azurenative.keyvault.VaultArgs;
/// import com.pulumi.azurenative.keyvault.inputs.VaultPropertiesArgs;
/// import com.pulumi.azurenative.keyvault.inputs.NetworkRuleSetArgs;
/// import com.pulumi.azurenative.keyvault.inputs.SkuArgs;
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
///         var vault = new Vault("vault", VaultArgs.builder()
///             .location("westus")
///             .properties(VaultPropertiesArgs.builder()
///                 .enabledForDeployment(true)
///                 .enabledForDiskEncryption(true)
///                 .enabledForTemplateDeployment(true)
///                 .networkAcls(NetworkRuleSetArgs.builder()
///                     .bypass("AzureServices")
///                     .defaultAction("Deny")
///                     .ipRules(
///                         IPRuleArgs.builder()
///                             .value("124.56.78.91")
///                             .build(),
///                         IPRuleArgs.builder()
///                             .value("'10.91.4.0/24'")
///                             .build())
///                     .virtualNetworkRules(VirtualNetworkRuleArgs.builder()
///                         .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1")
///                         .build())
///                     .build())
///                 .sku(SkuArgs.builder()
///                     .family("A")
///                     .name("standard")
///                     .build())
///                 .tenantId("00000000-0000-0000-0000-000000000000")
///                 .build())
///             .resourceGroupName("sample-resource-group")
///             .vaultName("sample-vault")
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
/// const vault = new azure_native.keyvault.Vault("vault", {
///     location: "westus",
///     properties: {
///         enabledForDeployment: true,
///         enabledForDiskEncryption: true,
///         enabledForTemplateDeployment: true,
///         networkAcls: {
///             bypass: azure_native.keyvault.NetworkRuleBypassOptions.AzureServices,
///             defaultAction: azure_native.keyvault.NetworkRuleAction.Deny,
///             ipRules: [
///                 {
///                     value: "124.56.78.91",
///                 },
///                 {
///                     value: "'10.91.4.0/24'",
///                 },
///             ],
///             virtualNetworkRules: [{
///                 id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1",
///             }],
///         },
///         sku: {
///             family: azure_native.keyvault.SkuFamily.A,
///             name: azure_native.keyvault.SkuName.Standard,
///         },
///         tenantId: "00000000-0000-0000-0000-000000000000",
///     },
///     resourceGroupName: "sample-resource-group",
///     vaultName: "sample-vault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// vault = azure_native.keyvault.Vault("vault",
///     location="westus",
///     properties={
///         "enabled_for_deployment": True,
///         "enabled_for_disk_encryption": True,
///         "enabled_for_template_deployment": True,
///         "network_acls": {
///             "bypass": azure_native.keyvault.NetworkRuleBypassOptions.AZURE_SERVICES,
///             "default_action": azure_native.keyvault.NetworkRuleAction.DENY,
///             "ip_rules": [
///                 {
///                     "value": "124.56.78.91",
///                 },
///                 {
///                     "value": "'10.91.4.0/24'",
///                 },
///             ],
///             "virtual_network_rules": [{
///                 "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1",
///             }],
///         },
///         "sku": {
///             "family": azure_native.keyvault.SkuFamily.A,
///             "name": azure_native.keyvault.SkuName.STANDARD,
///         },
///         "tenant_id": "00000000-0000-0000-0000-000000000000",
///     },
///     resource_group_name="sample-resource-group",
///     vault_name="sample-vault")
///
/// ```
///
/// ```yaml
/// resources:
///   vault:
///     type: azure-native:keyvault:Vault
///     properties:
///       location: westus
///       properties:
///         enabledForDeployment: true
///         enabledForDiskEncryption: true
///         enabledForTemplateDeployment: true
///         networkAcls:
///           bypass: AzureServices
///           defaultAction: Deny
///           ipRules:
///             - value: 124.56.78.91
///             - value: '''10.91.4.0/24'''
///           virtualNetworkRules:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/test-vnet/subnets/subnet1
///         sku:
///           family: A
///           name: standard
///         tenantId: 00000000-0000-0000-0000-000000000000
///       resourceGroupName: sample-resource-group
///       vaultName: sample-vault
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
/// $ pulumi import azure-native:keyvault:Vault sample-vault /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}
/// ```
class Vault extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Azure location of the key vault resource.
  late final pulumi.Output<String?> location;

  /// Name of the key vault resource.
  late final pulumi.Output<String> name;

  /// Properties of the vault
  late final pulumi.Output<VaultPropertiesResponse> properties;

  /// System metadata for the key vault.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags assigned to the key vault resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type of the key vault resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Vault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vault]. {@macro pulumi_keyvault_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vault(String name, {VaultArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:keyvault:Vault',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<VaultPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
