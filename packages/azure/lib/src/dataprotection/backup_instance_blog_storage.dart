import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_blog_storage_args.dart';

/// Manages a Backup Instance Blob Storage.
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
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
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
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleAccount.id,
///     roleDefinitionName: "Storage Account Backup Contributor",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyBlobStorage = new azure.dataprotection.BackupPolicyBlobStorage("example", {
///     name: "example-backup-policy",
///     vaultId: exampleBackupVault.id,
///     operationalDefaultRetentionDuration: "P30D",
/// });
/// const exampleBackupInstanceBlogStorage = new azure.dataprotection.BackupInstanceBlogStorage("example", {
///     name: "example-backup-instance",
///     vaultId: exampleBackupVault.id,
///     location: example.location,
///     storageAccountId: exampleAccount.id,
///     backupPolicyId: exampleBackupPolicyBlobStorage.id,
/// }, {
///     dependsOn: [exampleAssignment],
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
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_account.id,
///     role_definition_name="Storage Account Backup Contributor",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_policy_blob_storage = azure.dataprotection.BackupPolicyBlobStorage("example",
///     name="example-backup-policy",
///     vault_id=example_backup_vault.id,
///     operational_default_retention_duration="P30D")
/// example_backup_instance_blog_storage = azure.dataprotection.BackupInstanceBlogStorage("example",
///     name="example-backup-instance",
///     vault_id=example_backup_vault.id,
///     location=example.location,
///     storage_account_id=example_account.id,
///     backup_policy_id=example_backup_policy_blob_storage.id,
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
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
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
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
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleAccount.Id,
///         RoleDefinitionName = "Storage Account Backup Contributor",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyBlobStorage = new Azure.DataProtection.BackupPolicyBlobStorage("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         OperationalDefaultRetentionDuration = "P30D",
///     });
///
///     var exampleBackupInstanceBlogStorage = new Azure.DataProtection.BackupInstanceBlogStorage("example", new()
///     {
///         Name = "example-backup-instance",
///         VaultId = exampleBackupVault.Id,
///         Location = example.Location,
///         StorageAccountId = exampleAccount.Id,
///         BackupPolicyId = exampleBackupPolicyBlobStorage.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
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
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleAccount.ID(),
/// 			RoleDefinitionName: pulumi.String("Storage Account Backup Contributor"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyBlobStorage, err := dataprotection.NewBackupPolicyBlobStorage(ctx, "example", &dataprotection.BackupPolicyBlobStorageArgs{
/// 			Name:                                pulumi.String("example-backup-policy"),
/// 			VaultId:                             exampleBackupVault.ID(),
/// 			OperationalDefaultRetentionDuration: pulumi.String("P30D"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstanceBlogStorage(ctx, "example", &dataprotection.BackupInstanceBlogStorageArgs{
/// 			Name:             pulumi.String("example-backup-instance"),
/// 			VaultId:          exampleBackupVault.ID(),
/// 			Location:         example.Location,
/// 			StorageAccountId: exampleAccount.ID(),
/// 			BackupPolicyId:   exampleBackupPolicyBlobStorage.ID(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
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
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyBlobStorage;
/// import com.pulumi.azure.dataprotection.BackupPolicyBlobStorageArgs;
/// import com.pulumi.azure.dataprotection.BackupInstanceBlogStorage;
/// import com.pulumi.azure.dataprotection.BackupInstanceBlogStorageArgs;
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
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
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
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleAccount.id())
///             .roleDefinitionName("Storage Account Backup Contributor")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyBlobStorage = new BackupPolicyBlobStorage("exampleBackupPolicyBlobStorage", BackupPolicyBlobStorageArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .operationalDefaultRetentionDuration("P30D")
///             .build());
///
///         var exampleBackupInstanceBlogStorage = new BackupInstanceBlogStorage("exampleBackupInstanceBlogStorage", BackupInstanceBlogStorageArgs.builder()
///             .name("example-backup-instance")
///             .vaultId(exampleBackupVault.id())
///             .location(example.location())
///             .storageAccountId(exampleAccount.id())
///             .backupPolicyId(exampleBackupPolicyBlobStorage.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
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
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
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
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleAccount.id}
///       roleDefinitionName: Storage Account Backup Contributor
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupPolicyBlobStorage:
///     type: azure:dataprotection:BackupPolicyBlobStorage
///     name: example
///     properties:
///       name: example-backup-policy
///       vaultId: ${exampleBackupVault.id}
///       operationalDefaultRetentionDuration: P30D
///   exampleBackupInstanceBlogStorage:
///     type: azure:dataprotection:BackupInstanceBlogStorage
///     name: example
///     properties:
///       name: example-backup-instance
///       vaultId: ${exampleBackupVault.id}
///       location: ${example.location}
///       storageAccountId: ${exampleAccount.id}
///       backupPolicyId: ${exampleBackupPolicyBlobStorage.id}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
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
/// Backup Instance Blob Storages can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstanceBlogStorage:BackupInstanceBlogStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstanceBlogStorage extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyId;
  /// The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance Blob Storage.
  late final pulumi.Output<String> protectionState;
  /// The list of the container names of the source Storage Account.
  ///
  /// > **Note:** The `storage_account_container_names` should be specified in the vaulted backup policy/operational and vaulted hybrid backup policy. Removing the `storage_account_container_names` will force a new resource to be created since it can't be removed once specified.
  late final pulumi.Output<List<String>?> storageAccountContainerNames;
  /// The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  late final pulumi.Output<String> storageAccountId;
  /// The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstanceBlogStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceBlogStorage]. {@macro pulumi_dataprotection_backup_instance_blog_storage_backup_instance_blog_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceBlogStorage(
    String name, {
    BackupInstanceBlogStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceBlogStorage:BackupInstanceBlogStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPolicyId = registerOutput<String>('backupPolicyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.protectionState = registerOutput<String>('protectionState');
    this.storageAccountContainerNames = registerOutput<List<String>?>('storageAccountContainerNames');
    this.storageAccountId = registerOutput<String>('storageAccountId');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
