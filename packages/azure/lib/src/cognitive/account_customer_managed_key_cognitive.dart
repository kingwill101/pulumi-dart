import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_customer_managed_key_args.dart';

/// Manages a Customer Managed Key for a Cognitive Services Account.
///
/// > **Note:** It's possible to define a Customer Managed Key both within the `azure.cognitive.Account` resource via the `customer_managed_key` block and by using the `azure.cognitive.AccountCustomerManagedKey` resource. However it's not possible to use both methods to manage a Customer Managed Key for a Cognitive Account, since there'll be conflicts.
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
///     location: "West US",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: example.name,
///     location: example.location,
///     name: "example-identity",
/// });
/// const exampleAccount = new azure.cognitive.Account("example", {
///     name: "example-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "Face",
///     skuName: "E0",
///     customSubdomainName: "example-account",
///     identity: {
///         type: "SystemAssigned, UserAssigned",
///         identityIds: [exampleUserAssignedIdentity.id],
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
///     accessPolicies: [
///         {
///             tenantId: exampleAccount.identity.apply(identity => identity?.tenantId),
///             objectId: exampleAccount.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Get",
///                 "Create",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///             ],
///             secretPermissions: ["Get"],
///         },
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             secretPermissions: ["Get"],
///         },
///         {
///             tenantId: exampleUserAssignedIdentity.tenantId,
///             objectId: exampleUserAssignedIdentity.principalId,
///             keyPermissions: [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///             ],
///             secretPermissions: ["Get"],
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
/// const exampleAccountCustomerManagedKey = new azure.cognitive.AccountCustomerManagedKey("example", {
///     cognitiveAccountId: exampleAccount.id,
///     keyVaultKeyId: exampleKey.id,
///     identityClientId: exampleUserAssignedIdentity.clientId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West US")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example.name,
///     location=example.location,
///     name="example-identity")
/// example_account = azure.cognitive.Account("example",
///     name="example-account",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="Face",
///     sku_name="E0",
///     custom_subdomain_name="example-account",
///     identity={
///         "type": "SystemAssigned, UserAssigned",
///         "identity_ids": [example_user_assigned_identity.id],
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True,
///     access_policies=[
///         {
///             "tenant_id": example_account.identity.tenant_id,
///             "object_id": example_account.identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "Create",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///             ],
///             "secret_permissions": ["Get"],
///         },
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///                 "GetRotationPolicy",
///             ],
///             "secret_permissions": ["Get"],
///         },
///         {
///             "tenant_id": example_user_assigned_identity.tenant_id,
///             "object_id": example_user_assigned_identity.principal_id,
///             "key_permissions": [
///                 "Get",
///                 "Create",
///                 "Delete",
///                 "List",
///                 "Restore",
///                 "Recover",
///                 "UnwrapKey",
///                 "WrapKey",
///                 "Purge",
///                 "Encrypt",
///                 "Decrypt",
///                 "Sign",
///                 "Verify",
///             ],
///             "secret_permissions": ["Get"],
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
/// example_account_customer_managed_key = azure.cognitive.AccountCustomerManagedKey("example",
///     cognitive_account_id=example_account.id,
///     key_vault_key_id=example_key.id,
///     identity_client_id=example_user_assigned_identity.client_id)
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
///         Location = "West US",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Name = "example-identity",
///     });
///
///     var exampleAccount = new Azure.Cognitive.Account("example", new()
///     {
///         Name = "example-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "Face",
///         SkuName = "E0",
///         CustomSubdomainName = "example-account",
///         Identity = new Azure.Cognitive.Inputs.AccountIdentityArgs
///         {
///             Type = "SystemAssigned, UserAssigned",
///             IdentityIds = new[]
///             {
///                 exampleUserAssignedIdentity.Id,
///             },
///         },
///     });
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///         AccessPolicies = new[]
///         {
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleAccount.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleAccount.Identity.Apply(identity => identity?.PrincipalId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Create",
///                     "List",
///                     "Restore",
///                     "Recover",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Purge",
///                     "Encrypt",
///                     "Decrypt",
///                     "Sign",
///                     "Verify",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///                 ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Create",
///                     "Delete",
///                     "List",
///                     "Restore",
///                     "Recover",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Purge",
///                     "Encrypt",
///                     "Decrypt",
///                     "Sign",
///                     "Verify",
///                     "GetRotationPolicy",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
///                 },
///             },
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleUserAssignedIdentity.TenantId,
///                 ObjectId = exampleUserAssignedIdentity.PrincipalId,
///                 KeyPermissions = new[]
///                 {
///                     "Get",
///                     "Create",
///                     "Delete",
///                     "List",
///                     "Restore",
///                     "Recover",
///                     "UnwrapKey",
///                     "WrapKey",
///                     "Purge",
///                     "Encrypt",
///                     "Decrypt",
///                     "Sign",
///                     "Verify",
///                 },
///                 SecretPermissions = new[]
///                 {
///                     "Get",
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
///     var exampleAccountCustomerManagedKey = new Azure.Cognitive.AccountCustomerManagedKey("example", new()
///     {
///         CognitiveAccountId = exampleAccount.Id,
///         KeyVaultKeyId = exampleKey.Id,
///         IdentityClientId = exampleUserAssignedIdentity.ClientId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example-identity"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := cognitive.NewAccount(ctx, "example", &cognitive.AccountArgs{
/// 			Name:                pulumi.String("example-account"),
/// 			Location:            example.Location,
/// 			ResourceGroupName:   example.Name,
/// 			Kind:                pulumi.String("Face"),
/// 			SkuName:             pulumi.String("E0"),
/// 			CustomSubdomainName: pulumi.String("example-account"),
/// 			Identity: &cognitive.AccountIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned, UserAssigned"),
/// 				IdentityIds: pulumi.StringArray{
/// 					exampleUserAssignedIdentity.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example-vault"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 			AccessPolicies: keyvault.KeyVaultAccessPolicyArray{
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleAccount.Identity.ApplyT(func(identity cognitive.AccountIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleAccount.Identity.ApplyT(func(identity cognitive.AccountIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Sign"),
/// 						pulumi.String("Verify"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: pulumi.String(current.TenantId),
/// 					ObjectId: pulumi.String(current.ObjectId),
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Sign"),
/// 						pulumi.String("Verify"),
/// 						pulumi.String("GetRotationPolicy"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 					},
/// 				},
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleUserAssignedIdentity.TenantId,
/// 					ObjectId: exampleUserAssignedIdentity.PrincipalId,
/// 					KeyPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
/// 						pulumi.String("Create"),
/// 						pulumi.String("Delete"),
/// 						pulumi.String("List"),
/// 						pulumi.String("Restore"),
/// 						pulumi.String("Recover"),
/// 						pulumi.String("UnwrapKey"),
/// 						pulumi.String("WrapKey"),
/// 						pulumi.String("Purge"),
/// 						pulumi.String("Encrypt"),
/// 						pulumi.String("Decrypt"),
/// 						pulumi.String("Sign"),
/// 						pulumi.String("Verify"),
/// 					},
/// 					SecretPermissions: pulumi.StringArray{
/// 						pulumi.String("Get"),
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
/// 		_, err = cognitive.NewAccountCustomerManagedKey(ctx, "example", &cognitive.AccountCustomerManagedKeyArgs{
/// 			CognitiveAccountId: exampleAccount.ID(),
/// 			KeyVaultKeyId:      exampleKey.ID(),
/// 			IdentityClientId:   exampleUserAssignedIdentity.ClientId,
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.cognitive.Account;
/// import com.pulumi.azure.cognitive.AccountArgs;
/// import com.pulumi.azure.cognitive.inputs.AccountIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.cognitive.AccountCustomerManagedKey;
/// import com.pulumi.azure.cognitive.AccountCustomerManagedKeyArgs;
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
///             .location("West US")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .name("example-identity")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("example-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("Face")
///             .skuName("E0")
///             .customSubdomainName("example-account")
///             .identity(AccountIdentityArgs.builder()
///                 .type("SystemAssigned, UserAssigned")
///                 .identityIds(exampleUserAssignedIdentity.id())
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleAccount.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleAccount.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Get",
///                         "Create",
///                         "List",
///                         "Restore",
///                         "Recover",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Purge",
///                         "Encrypt",
///                         "Decrypt",
///                         "Sign",
///                         "Verify")
///                     .secretPermissions("Get")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Get",
///                         "Create",
///                         "Delete",
///                         "List",
///                         "Restore",
///                         "Recover",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Purge",
///                         "Encrypt",
///                         "Decrypt",
///                         "Sign",
///                         "Verify",
///                         "GetRotationPolicy")
///                     .secretPermissions("Get")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleUserAssignedIdentity.tenantId())
///                     .objectId(exampleUserAssignedIdentity.principalId())
///                     .keyPermissions(
///                         "Get",
///                         "Create",
///                         "Delete",
///                         "List",
///                         "Restore",
///                         "Recover",
///                         "UnwrapKey",
///                         "WrapKey",
///                         "Purge",
///                         "Encrypt",
///                         "Decrypt",
///                         "Sign",
///                         "Verify")
///                     .secretPermissions("Get")
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
///         var exampleAccountCustomerManagedKey = new AccountCustomerManagedKey("exampleAccountCustomerManagedKey", AccountCustomerManagedKeyArgs.builder()
///             .cognitiveAccountId(exampleAccount.id())
///             .keyVaultKeyId(exampleKey.id())
///             .identityClientId(exampleUserAssignedIdentity.clientId())
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
///       location: West US
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       name: example-identity
///   exampleAccount:
///     type: azure:cognitive:Account
///     name: example
///     properties:
///       name: example-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Face
///       skuName: E0
///       customSubdomainName: example-account
///       identity:
///         type: SystemAssigned, UserAssigned
///         identityIds:
///           - ${exampleUserAssignedIdentity.id}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///       accessPolicies:
///         - tenantId: ${exampleAccount.identity.tenantId}
///           objectId: ${exampleAccount.identity.principalId}
///           keyPermissions:
///             - Get
///             - Create
///             - List
///             - Restore
///             - Recover
///             - UnwrapKey
///             - WrapKey
///             - Purge
///             - Encrypt
///             - Decrypt
///             - Sign
///             - Verify
///           secretPermissions:
///             - Get
///         - tenantId: ${current.tenantId}
///           objectId: ${current.objectId}
///           keyPermissions:
///             - Get
///             - Create
///             - Delete
///             - List
///             - Restore
///             - Recover
///             - UnwrapKey
///             - WrapKey
///             - Purge
///             - Encrypt
///             - Decrypt
///             - Sign
///             - Verify
///             - GetRotationPolicy
///           secretPermissions:
///             - Get
///         - tenantId: ${exampleUserAssignedIdentity.tenantId}
///           objectId: ${exampleUserAssignedIdentity.principalId}
///           keyPermissions:
///             - Get
///             - Create
///             - Delete
///             - List
///             - Restore
///             - Recover
///             - UnwrapKey
///             - WrapKey
///             - Purge
///             - Encrypt
///             - Decrypt
///             - Sign
///             - Verify
///           secretPermissions:
///             - Get
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
///   exampleAccountCustomerManagedKey:
///     type: azure:cognitive:AccountCustomerManagedKey
///     name: example
///     properties:
///       cognitiveAccountId: ${exampleAccount.id}
///       keyVaultKeyId: ${exampleKey.id}
///       identityClientId: ${exampleUserAssignedIdentity.clientId}
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
/// * `Microsoft.CognitiveServices` - 2025-06-01
///
/// ## Import
///
/// Customer Managed Keys for a Cognitive Account can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cognitive/accountCustomerManagedKey:AccountCustomerManagedKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.CognitiveServices/accounts/account1
/// ```
class AccountCustomerManagedKeyCognitive extends pulumi.CustomResource {
  /// The ID of the Cognitive Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> cognitiveAccountId;
  /// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  late final pulumi.Output<String?> identityClientId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  late final pulumi.Output<String> keyVaultKeyId;

  /// Creates a new [AccountCustomerManagedKeyCognitive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountCustomerManagedKeyCognitive]. {@macro pulumi_cognitive_account_customer_managed_key_account_customer_managed_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountCustomerManagedKeyCognitive(
    String name, {
    AccountCustomerManagedKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cognitive/accountCustomerManagedKey:AccountCustomerManagedKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cognitiveAccountId = registerOutput<String>('cognitiveAccountId');
    this.identityClientId = registerOutput<String?>('identityClientId');
    this.keyVaultKeyId = registerOutput<String>('keyVaultKeyId');
  }
}
