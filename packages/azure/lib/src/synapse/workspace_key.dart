import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_key_args.dart';

/// Manages Synapse Workspace keys
///
/// > **Note:** Keys that are actively protecting a workspace cannot be deleted. When the keys resource is deleted, if the key is inactive it will be deleted, if it is active it will not be deleted.
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     accountKind: "StorageV2",
///     isHnsEnabled: true,
/// });
/// const exampleDataLakeGen2Filesystem = new azure.storage.DataLakeGen2Filesystem("example", {
///     name: "example",
///     storageAccountId: exampleAccount.id,
/// });
/// const current = azure.core.getClientConfig({});
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "standard",
///     purgeProtectionEnabled: true,
/// });
/// const deployer = new azure.keyvault.AccessPolicy("deployer", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: current.then(current => current.tenantId),
///     objectId: current.then(current => current.objectId),
///     keyPermissions: [
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ],
/// });
/// const exampleKey = new azure.keyvault.Key("example", {
///     name: "workspaceEncryptionKey",
///     keyVaultId: exampleKeyVault.id,
///     keyType: "RSA",
///     keySize: 2048,
///     keyOpts: [
///         "unwrapKey",
///         "wrapKey",
///     ],
/// }, {
///     dependsOn: [deployer],
/// });
/// const exampleWorkspace = new azure.synapse.Workspace("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     storageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.id,
///     sqlAdministratorLogin: "sqladminuser",
///     sqlAdministratorLoginPassword: "H@Sh1CoR3!",
///     customerManagedKey: {
///         keyVersionlessId: exampleKey.versionlessId,
///         keyName: "enckey",
///     },
///     identity: {
///         type: "SystemAssigned",
///     },
///     tags: {
///         Env: "production",
///     },
/// });
/// const workspacePolicy = new azure.keyvault.AccessPolicy("workspace_policy", {
///     keyVaultId: exampleKeyVault.id,
///     tenantId: exampleWorkspace.identity.apply(identity => identity?.tenantId),
///     objectId: exampleWorkspace.identity.apply(identity => identity?.principalId),
///     keyPermissions: [
///         "Get",
///         "WrapKey",
///         "UnwrapKey",
///     ],
/// });
/// const exampleWorkspaceKey = new azure.synapse.WorkspaceKey("example", {
///     customerManagedKeyVersionlessId: exampleKey.versionlessId,
///     synapseWorkspaceId: exampleWorkspace.id,
///     active: true,
///     customerManagedKeyName: "enckey",
/// }, {
///     dependsOn: [workspacePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     account_kind="StorageV2",
///     is_hns_enabled=True)
/// example_data_lake_gen2_filesystem = azure.storage.DataLakeGen2Filesystem("example",
///     name="example",
///     storage_account_id=example_account.id)
/// current = azure.core.get_client_config()
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="standard",
///     purge_protection_enabled=True)
/// deployer = azure.keyvault.AccessPolicy("deployer",
///     key_vault_id=example_key_vault.id,
///     tenant_id=current.tenant_id,
///     object_id=current.object_id,
///     key_permissions=[
///         "Create",
///         "Get",
///         "Delete",
///         "Purge",
///         "GetRotationPolicy",
///     ])
/// example_key = azure.keyvault.Key("example",
///     name="workspaceEncryptionKey",
///     key_vault_id=example_key_vault.id,
///     key_type="RSA",
///     key_size=2048,
///     key_opts=[
///         "unwrapKey",
///         "wrapKey",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[deployer]))
/// example_workspace = azure.synapse.Workspace("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     storage_data_lake_gen2_filesystem_id=example_data_lake_gen2_filesystem.id,
///     sql_administrator_login="sqladminuser",
///     sql_administrator_login_password="H@Sh1CoR3!",
///     customer_managed_key={
///         "key_versionless_id": example_key.versionless_id,
///         "key_name": "enckey",
///     },
///     identity={
///         "type": "SystemAssigned",
///     },
///     tags={
///         "Env": "production",
///     })
/// workspace_policy = azure.keyvault.AccessPolicy("workspace_policy",
///     key_vault_id=example_key_vault.id,
///     tenant_id=example_workspace.identity.tenant_id,
///     object_id=example_workspace.identity.principal_id,
///     key_permissions=[
///         "Get",
///         "WrapKey",
///         "UnwrapKey",
///     ])
/// example_workspace_key = azure.synapse.WorkspaceKey("example",
///     customer_managed_key_versionless_id=example_key.versionless_id,
///     synapse_workspace_id=example_workspace.id,
///     active=True,
///     customer_managed_key_name="enckey",
///     opts = pulumi.ResourceOptions(depends_on=[workspace_policy]))
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageacc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         AccountKind = "StorageV2",
///         IsHnsEnabled = true,
///     });
///
///     var exampleDataLakeGen2Filesystem = new Azure.Storage.DataLakeGen2Filesystem("example", new()
///     {
///         Name = "example",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var current = Azure.Core.GetClientConfig.Invoke();
///
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         SkuName = "standard",
///         PurgeProtectionEnabled = true,
///     });
///
///     var deployer = new Azure.KeyVault.AccessPolicy("deployer", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = current.Apply(getClientConfigResult => getClientConfigResult.TenantId),
///         ObjectId = current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         KeyPermissions = new[]
///         {
///             "Create",
///             "Get",
///             "Delete",
///             "Purge",
///             "GetRotationPolicy",
///         },
///     });
///
///     var exampleKey = new Azure.KeyVault.Key("example", new()
///     {
///         Name = "workspaceEncryptionKey",
///         KeyVaultId = exampleKeyVault.Id,
///         KeyType = "RSA",
///         KeySize = 2048,
///         KeyOpts = new[]
///         {
///             "unwrapKey",
///             "wrapKey",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             deployer,
///         },
///     });
///
///     var exampleWorkspace = new Azure.Synapse.Workspace("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         StorageDataLakeGen2FilesystemId = exampleDataLakeGen2Filesystem.Id,
///         SqlAdministratorLogin = "sqladminuser",
///         SqlAdministratorLoginPassword = "H@Sh1CoR3!",
///         CustomerManagedKey = new Azure.Synapse.Inputs.WorkspaceCustomerManagedKeyArgs
///         {
///             KeyVersionlessId = exampleKey.VersionlessId,
///             KeyName = "enckey",
///         },
///         Identity = new Azure.Synapse.Inputs.WorkspaceIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Tags =
///         {
///             { "Env", "production" },
///         },
///     });
///
///     var workspacePolicy = new Azure.KeyVault.AccessPolicy("workspace_policy", new()
///     {
///         KeyVaultId = exampleKeyVault.Id,
///         TenantId = exampleWorkspace.Identity.Apply(identity => identity?.TenantId),
///         ObjectId = exampleWorkspace.Identity.Apply(identity => identity?.PrincipalId),
///         KeyPermissions = new[]
///         {
///             "Get",
///             "WrapKey",
///             "UnwrapKey",
///         },
///     });
///
///     var exampleWorkspaceKey = new Azure.Synapse.WorkspaceKey("example", new()
///     {
///         CustomerManagedKeyVersionlessId = exampleKey.VersionlessId,
///         SynapseWorkspaceId = exampleWorkspace.Id,
///         Active = true,
///         CustomerManagedKeyName = "enckey",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             workspacePolicy,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			AccountKind:            pulumi.String("StorageV2"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDataLakeGen2Filesystem, err := storage.NewDataLakeGen2Filesystem(ctx, "example", &storage.DataLakeGen2FilesystemArgs{
/// 			Name:             pulumi.String("example"),
/// 			StorageAccountId: exampleAccount.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := core.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			TenantId:               pulumi.String(current.TenantId),
/// 			SkuName:                pulumi.String("standard"),
/// 			PurgeProtectionEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deployer, err := keyvault.NewAccessPolicy(ctx, "deployer", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId:   pulumi.String(current.TenantId),
/// 			ObjectId:   pulumi.String(current.ObjectId),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Create"),
/// 				pulumi.String("Get"),
/// 				pulumi.String("Delete"),
/// 				pulumi.String("Purge"),
/// 				pulumi.String("GetRotationPolicy"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := keyvault.NewKey(ctx, "example", &keyvault.KeyArgs{
/// 			Name:       pulumi.String("workspaceEncryptionKey"),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			KeyType:    pulumi.String("RSA"),
/// 			KeySize:    pulumi.Int(2048),
/// 			KeyOpts: pulumi.StringArray{
/// 				pulumi.String("unwrapKey"),
/// 				pulumi.String("wrapKey"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deployer,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkspace, err := synapse.NewWorkspace(ctx, "example", &synapse.WorkspaceArgs{
/// 			Name:                            pulumi.String("example"),
/// 			ResourceGroupName:               example.Name,
/// 			Location:                        example.Location,
/// 			StorageDataLakeGen2FilesystemId: exampleDataLakeGen2Filesystem.ID(),
/// 			SqlAdministratorLogin:           pulumi.String("sqladminuser"),
/// 			SqlAdministratorLoginPassword:   pulumi.String("H@Sh1CoR3!"),
/// 			CustomerManagedKey: &synapse.WorkspaceCustomerManagedKeyArgs{
/// 				KeyVersionlessId: exampleKey.VersionlessId,
/// 				KeyName:          pulumi.String("enckey"),
/// 			},
/// 			Identity: &synapse.WorkspaceIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspacePolicy, err := keyvault.NewAccessPolicy(ctx, "workspace_policy", &keyvault.AccessPolicyArgs{
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 			TenantId: pulumi.String(exampleWorkspace.Identity.ApplyT(func(identity synapse.WorkspaceIdentity) (*string, error) {
/// 				return &identity.TenantId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			ObjectId: pulumi.String(exampleWorkspace.Identity.ApplyT(func(identity synapse.WorkspaceIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			KeyPermissions: pulumi.StringArray{
/// 				pulumi.String("Get"),
/// 				pulumi.String("WrapKey"),
/// 				pulumi.String("UnwrapKey"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synapse.NewWorkspaceKey(ctx, "example", &synapse.WorkspaceKeyArgs{
/// 			CustomerManagedKeyVersionlessId: exampleKey.VersionlessId,
/// 			SynapseWorkspaceId:              exampleWorkspace.ID(),
/// 			Active:                          pulumi.Bool(true),
/// 			CustomerManagedKeyName:          pulumi.String("enckey"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			workspacePolicy,
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.DataLakeGen2Filesystem;
/// import com.pulumi.azure.storage.DataLakeGen2FilesystemArgs;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.AccessPolicy;
/// import com.pulumi.azure.keyvault.AccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Key;
/// import com.pulumi.azure.keyvault.KeyArgs;
/// import com.pulumi.azure.synapse.Workspace;
/// import com.pulumi.azure.synapse.WorkspaceArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceCustomerManagedKeyArgs;
/// import com.pulumi.azure.synapse.inputs.WorkspaceIdentityArgs;
/// import com.pulumi.azure.synapse.WorkspaceKey;
/// import com.pulumi.azure.synapse.WorkspaceKeyArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageacc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .accountKind("StorageV2")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleDataLakeGen2Filesystem = new DataLakeGen2Filesystem("exampleDataLakeGen2Filesystem", DataLakeGen2FilesystemArgs.builder()
///             .name("example")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         final var current = CoreFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("standard")
///             .purgeProtectionEnabled(true)
///             .build());
///
///         var deployer = new AccessPolicy("deployer", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(current.tenantId())
///             .objectId(current.objectId())
///             .keyPermissions(
///                 "Create",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "GetRotationPolicy")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .name("workspaceEncryptionKey")
///             .keyVaultId(exampleKeyVault.id())
///             .keyType("RSA")
///             .keySize(2048)
///             .keyOpts(
///                 "unwrapKey",
///                 "wrapKey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deployer)
///                 .build());
///
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .storageDataLakeGen2FilesystemId(exampleDataLakeGen2Filesystem.id())
///             .sqlAdministratorLogin("sqladminuser")
///             .sqlAdministratorLoginPassword("H@Sh1CoR3!")
///             .customerManagedKey(WorkspaceCustomerManagedKeyArgs.builder()
///                 .keyVersionlessId(exampleKey.versionlessId())
///                 .keyName("enckey")
///                 .build())
///             .identity(WorkspaceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .tags(Map.of("Env", "production"))
///             .build());
///
///         var workspacePolicy = new AccessPolicy("workspacePolicy", AccessPolicyArgs.builder()
///             .keyVaultId(exampleKeyVault.id())
///             .tenantId(exampleWorkspace.identity().applyValue(_identity -> _identity.tenantId()))
///             .objectId(exampleWorkspace.identity().applyValue(_identity -> _identity.principalId()))
///             .keyPermissions(
///                 "Get",
///                 "WrapKey",
///                 "UnwrapKey")
///             .build());
///
///         var exampleWorkspaceKey = new WorkspaceKey("exampleWorkspaceKey", WorkspaceKeyArgs.builder()
///             .customerManagedKeyVersionlessId(exampleKey.versionlessId())
///             .synapseWorkspaceId(exampleWorkspace.id())
///             .active(true)
///             .customerManagedKeyName("enckey")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(workspacePolicy)
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageacc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       accountKind: StorageV2
///       isHnsEnabled: 'true'
///   exampleDataLakeGen2Filesystem:
///     type: azure:storage:DataLakeGen2Filesystem
///     name: example
///     properties:
///       name: example
///       storageAccountId: ${exampleAccount.id}
///   exampleKeyVault:
///     type: azure:keyvault:KeyVault
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tenantId: ${current.tenantId}
///       skuName: standard
///       purgeProtectionEnabled: true
///   deployer:
///     type: azure:keyvault:AccessPolicy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${current.tenantId}
///       objectId: ${current.objectId}
///       keyPermissions:
///         - Create
///         - Get
///         - Delete
///         - Purge
///         - GetRotationPolicy
///   exampleKey:
///     type: azure:keyvault:Key
///     name: example
///     properties:
///       name: workspaceEncryptionKey
///       keyVaultId: ${exampleKeyVault.id}
///       keyType: RSA
///       keySize: 2048
///       keyOpts:
///         - unwrapKey
///         - wrapKey
///     options:
///       dependsOn:
///         - ${deployer}
///   exampleWorkspace:
///     type: azure:synapse:Workspace
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       storageDataLakeGen2FilesystemId: ${exampleDataLakeGen2Filesystem.id}
///       sqlAdministratorLogin: sqladminuser
///       sqlAdministratorLoginPassword: H@Sh1CoR3!
///       customerManagedKey:
///         keyVersionlessId: ${exampleKey.versionlessId}
///         keyName: enckey
///       identity:
///         type: SystemAssigned
///       tags:
///         Env: production
///   workspacePolicy:
///     type: azure:keyvault:AccessPolicy
///     name: workspace_policy
///     properties:
///       keyVaultId: ${exampleKeyVault.id}
///       tenantId: ${exampleWorkspace.identity.tenantId}
///       objectId: ${exampleWorkspace.identity.principalId}
///       keyPermissions:
///         - Get
///         - WrapKey
///         - UnwrapKey
///   exampleWorkspaceKey:
///     type: azure:synapse:WorkspaceKey
///     name: example
///     properties:
///       customerManagedKeyVersionlessId: ${exampleKey.versionlessId}
///       synapseWorkspaceId: ${exampleWorkspace.id}
///       active: true
///       customerManagedKeyName: enckey
///     options:
///       dependsOn:
///         - ${workspacePolicy}
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
/// Synapse Workspace Keys can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:synapse/workspaceKey:WorkspaceKey example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Synapse/workspaces/workspace1/keys/key1
/// ```
class WorkspaceKey extends pulumi.CustomResource {
  /// Specifies if the workspace should be encrypted with this key.
  ///
  /// > **Note:** Only one key can actively encrypt a workspace. When performing a key rotation, setting a new key as the active key will disable existing keys.
  late final pulumi.Output<bool> active;
  /// Specifies the name of the workspace key. Should match the name of the key in the synapse workspace.
  late final pulumi.Output<String> customerManagedKeyName;
  /// The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption
  late final pulumi.Output<String?> customerManagedKeyVersionlessId;
  /// The ID of the Synapse Workspace where the encryption key should be configured.
  late final pulumi.Output<String> synapseWorkspaceId;

  /// Creates a new [WorkspaceKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceKey]. {@macro pulumi_synapse_workspace_key_workspace_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceKey(
    String name, {
    WorkspaceKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:synapse/workspaceKey:WorkspaceKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool>('active');
    this.customerManagedKeyName = registerOutput<String>('customerManagedKeyName');
    this.customerManagedKeyVersionlessId = registerOutput<String?>('customerManagedKeyVersionlessId');
    this.synapseWorkspaceId = registerOutput<String>('synapseWorkspaceId');
  }
}
