import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_postgresql_args.dart';

/// Manages a Backup Instance to back up PostgreSQL.
///
/// > **Note:** The `azure.dataprotection.BackupInstancePostgresql` resource has been deprecated because Azure Database for PostgreSQL Single Server has been retired as of 2025-03-28 and will be removed in v5.0 of the AzureRM Provider.
///
/// > **Note:** Before using this resource, there are some prerequisite permissions for configure backup and restore. See more details from <https://docs.microsoft.com/azure/backup/backup-azure-database-postgresql#prerequisite-permissions-for-configure-backup-and-restore>.
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
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleServer = new azure.postgresql.Server("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "B_Gen5_2",
///     storageMb: 5120,
///     backupRetentionDays: 7,
///     geoRedundantBackupEnabled: false,
///     autoGrowEnabled: true,
///     administratorLogin: "psqladmin",
///     administratorLoginPassword: "H@Sh1CoR3!",
///     version: "9.5",
///     sslEnforcementEnabled: true,
/// });
/// const exampleFirewallRule = new azure.postgresql.FirewallRule("example", {
///     name: "AllowAllWindowsAzureIps",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     startIpAddress: "0.0.0.0",
///     endIpAddress: "0.0.0.0",
/// });
/// const exampleDatabase = new azure.postgresql.Database("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     serverName: exampleServer.name,
///     charset: "UTF8",
///     collation: "English_United States.1252",
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleKeyVault = new azure.keyvault.KeyVault("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     tenantId: current.then(current => current.tenantId),
///     skuName: "premium",
///     softDeleteRetentionDays: 7,
///     accessPolicies: [
///         {
///             tenantId: current.then(current => current.tenantId),
///             objectId: current.then(current => current.objectId),
///             keyPermissions: [
///                 "Create",
///                 "Get",
///             ],
///             secretPermissions: [
///                 "Set",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "Recover",
///             ],
///         },
///         {
///             tenantId: exampleBackupVault.identity.apply(identity => identity?.tenantId),
///             objectId: exampleBackupVault.identity.apply(identity => identity?.principalId),
///             keyPermissions: [
///                 "Create",
///                 "Get",
///             ],
///             secretPermissions: [
///                 "Set",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "Recover",
///             ],
///         },
///     ],
/// });
/// const exampleSecret = new azure.keyvault.Secret("example", {
///     name: "example",
///     value: pulumi.interpolate`Server=${exampleServer.name}.postgres.database.azure.com;Database=${exampleDatabase.name};Port=5432;User Id=psqladmin@${exampleServer.name};Password=H@Sh1CoR3!;Ssl Mode=Require;`,
///     keyVaultId: exampleKeyVault.id,
/// });
/// const exampleBackupPolicyPostgresql = new azure.dataprotection.BackupPolicyPostgresql("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     vaultName: exampleBackupVault.name,
///     backupRepeatingTimeIntervals: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     defaultRetentionDuration: "P4M",
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleServer.id,
///     roleDefinitionName: "Reader",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupInstancePostgresql = new azure.dataprotection.BackupInstancePostgresql("example", {
///     name: "example",
///     location: example.location,
///     vaultId: exampleBackupVault.id,
///     databaseId: exampleDatabase.id,
///     backupPolicyId: exampleBackupPolicyPostgresql.id,
///     databaseCredentialKeyVaultSecretId: exampleSecret.versionlessId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_client_config()
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_server = azure.postgresql.Server("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="B_Gen5_2",
///     storage_mb=5120,
///     backup_retention_days=7,
///     geo_redundant_backup_enabled=False,
///     auto_grow_enabled=True,
///     administrator_login="psqladmin",
///     administrator_login_password="H@Sh1CoR3!",
///     version="9.5",
///     ssl_enforcement_enabled=True)
/// example_firewall_rule = azure.postgresql.FirewallRule("example",
///     name="AllowAllWindowsAzureIps",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     start_ip_address="0.0.0.0",
///     end_ip_address="0.0.0.0")
/// example_database = azure.postgresql.Database("example",
///     name="example",
///     resource_group_name=example.name,
///     server_name=example_server.name,
///     charset="UTF8",
///     collation="English_United States.1252")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_key_vault = azure.keyvault.KeyVault("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     tenant_id=current.tenant_id,
///     sku_name="premium",
///     soft_delete_retention_days=7,
///     access_policies=[
///         {
///             "tenant_id": current.tenant_id,
///             "object_id": current.object_id,
///             "key_permissions": [
///                 "Create",
///                 "Get",
///             ],
///             "secret_permissions": [
///                 "Set",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "Recover",
///             ],
///         },
///         {
///             "tenant_id": example_backup_vault.identity.tenant_id,
///             "object_id": example_backup_vault.identity.principal_id,
///             "key_permissions": [
///                 "Create",
///                 "Get",
///             ],
///             "secret_permissions": [
///                 "Set",
///                 "Get",
///                 "Delete",
///                 "Purge",
///                 "Recover",
///             ],
///         },
///     ])
/// example_secret = azure.keyvault.Secret("example",
///     name="example",
///     value=pulumi.Output.all(
///         exampleServerName=example_server.name,
///         exampleDatabaseName=example_database.name,
///         exampleServerName1=example_server.name
/// ).apply(lambda resolved_outputs: f"Server={resolved_outputs['exampleServerName']}.postgres.database.azure.com;Database={resolved_outputs['exampleDatabaseName']};Port=5432;User Id=psqladmin@{resolved_outputs['exampleServerName1']};Password=H@Sh1CoR3!;Ssl Mode=Require;")
/// ,
///     key_vault_id=example_key_vault.id)
/// example_backup_policy_postgresql = azure.dataprotection.BackupPolicyPostgresql("example",
///     name="example",
///     resource_group_name=example.name,
///     vault_name=example_backup_vault.name,
///     backup_repeating_time_intervals=["R/2021-05-23T02:30:00+00:00/P1W"],
///     default_retention_duration="P4M")
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_server.id,
///     role_definition_name="Reader",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_instance_postgresql = azure.dataprotection.BackupInstancePostgresql("example",
///     name="example",
///     location=example.location,
///     vault_id=example_backup_vault.id,
///     database_id=example_database.id,
///     backup_policy_id=example_backup_policy_postgresql.id,
///     database_credential_key_vault_secret_id=example_secret.versionless_id)
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleServer = new Azure.PostgreSql.Server("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "B_Gen5_2",
///         StorageMb = 5120,
///         BackupRetentionDays = 7,
///         GeoRedundantBackupEnabled = false,
///         AutoGrowEnabled = true,
///         AdministratorLogin = "psqladmin",
///         AdministratorLoginPassword = "H@Sh1CoR3!",
///         Version = "9.5",
///         SslEnforcementEnabled = true,
///     });
///
///     var exampleFirewallRule = new Azure.PostgreSql.FirewallRule("example", new()
///     {
///         Name = "AllowAllWindowsAzureIps",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         StartIpAddress = "0.0.0.0",
///         EndIpAddress = "0.0.0.0",
///     });
///
///     var exampleDatabase = new Azure.PostgreSql.Database("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         ServerName = exampleServer.Name,
///         Charset = "UTF8",
///         Collation = "English_United States.1252",
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example",
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
///     var exampleKeyVault = new Azure.KeyVault.KeyVault("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///             new Azure.KeyVault.Inputs.KeyVaultAccessPolicyArgs
///             {
///                 TenantId = exampleBackupVault.Identity.Apply(identity => identity?.TenantId),
///                 ObjectId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
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
///     var exampleSecret = new Azure.KeyVault.Secret("example", new()
///     {
///         Name = "example",
///         Value = Output.Tuple(exampleServer.Name, exampleDatabase.Name, exampleServer.Name).Apply(values =>
///         {
///             var exampleServerName = values.Item1;
///             var exampleDatabaseName = values.Item2;
///             var exampleServerName1 = values.Item3;
///             return $"Server={exampleServerName}.postgres.database.azure.com;Database={exampleDatabaseName};Port=5432;User Id=psqladmin@{exampleServerName1};Password=H@Sh1CoR3!;Ssl Mode=Require;";
///         }),
///         KeyVaultId = exampleKeyVault.Id,
///     });
///
///     var exampleBackupPolicyPostgresql = new Azure.DataProtection.BackupPolicyPostgresql("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         VaultName = exampleBackupVault.Name,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         DefaultRetentionDuration = "P4M",
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleServer.Id,
///         RoleDefinitionName = "Reader",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupInstancePostgresql = new Azure.DataProtection.BackupInstancePostgresql("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         VaultId = exampleBackupVault.Id,
///         DatabaseId = exampleDatabase.Id,
///         BackupPolicyId = exampleBackupPolicyPostgresql.Id,
///         DatabaseCredentialKeyVaultSecretId = exampleSecret.VersionlessId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
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
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServer, err := postgresql.NewServer(ctx, "example", &postgresql.ServerArgs{
/// 			Name:                       pulumi.String("example"),
/// 			Location:                   example.Location,
/// 			ResourceGroupName:          example.Name,
/// 			SkuName:                    pulumi.String("B_Gen5_2"),
/// 			StorageMb:                  pulumi.Int(5120),
/// 			BackupRetentionDays:        pulumi.Int(7),
/// 			GeoRedundantBackupEnabled:  pulumi.Bool(false),
/// 			AutoGrowEnabled:            pulumi.Bool(true),
/// 			AdministratorLogin:         pulumi.String("psqladmin"),
/// 			AdministratorLoginPassword: pulumi.String("H@Sh1CoR3!"),
/// 			Version:                    pulumi.String("9.5"),
/// 			SslEnforcementEnabled:      pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewFirewallRule(ctx, "example", &postgresql.FirewallRuleArgs{
/// 			Name:              pulumi.String("AllowAllWindowsAzureIps"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			StartIpAddress:    pulumi.String("0.0.0.0"),
/// 			EndIpAddress:      pulumi.String("0.0.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDatabase, err := postgresql.NewDatabase(ctx, "example", &postgresql.DatabaseArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			ServerName:        exampleServer.Name,
/// 			Charset:           pulumi.String("UTF8"),
/// 			Collation:         pulumi.String("English_United States.1252"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example"),
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
/// 		exampleKeyVault, err := keyvault.NewKeyVault(ctx, "example", &keyvault.KeyVaultArgs{
/// 			Name:                    pulumi.String("example"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
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
/// 				&keyvault.KeyVaultAccessPolicyArgs{
/// 					TenantId: exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 						return &identity.TenantId, nil
/// 					}).(pulumi.StringPtrOutput),
/// 					ObjectId: exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 						return &identity.PrincipalId, nil
/// 					}).(pulumi.StringPtrOutput),
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
/// 		exampleSecret, err := keyvault.NewSecret(ctx, "example", &keyvault.SecretArgs{
/// 			Name: pulumi.String("example"),
/// 			Value: pulumi.All(exampleServer.Name, exampleDatabase.Name, exampleServer.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				exampleServerName := _args[0].(string)
/// 				exampleDatabaseName := _args[1].(string)
/// 				exampleServerName1 := _args[2].(string)
/// 				return fmt.Sprintf("Server=%v.postgres.database.azure.com;Database=%v;Port=5432;User Id=psqladmin@%v;Password=H@Sh1CoR3!;Ssl Mode=Require;", exampleServerName, exampleDatabaseName, exampleServerName1), nil
/// 			}).(pulumi.StringOutput),
/// 			KeyVaultId: exampleKeyVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyPostgresql, err := dataprotection.NewBackupPolicyPostgresql(ctx, "example", &dataprotection.BackupPolicyPostgresqlArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			VaultName:         exampleBackupVault.Name,
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			DefaultRetentionDuration: pulumi.String("P4M"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleServer.ID(),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return &identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstancePostgresql(ctx, "example", &dataprotection.BackupInstancePostgresqlArgs{
/// 			Name:                               pulumi.String("example"),
/// 			Location:                           example.Location,
/// 			VaultId:                            exampleBackupVault.ID(),
/// 			DatabaseId:                         exampleDatabase.ID(),
/// 			BackupPolicyId:                     exampleBackupPolicyPostgresql.ID(),
/// 			DatabaseCredentialKeyVaultSecretId: exampleSecret.VersionlessId,
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
/// import com.pulumi.azure.postgresql.Server;
/// import com.pulumi.azure.postgresql.ServerArgs;
/// import com.pulumi.azure.postgresql.FirewallRule;
/// import com.pulumi.azure.postgresql.FirewallRuleArgs;
/// import com.pulumi.azure.postgresql.Database;
/// import com.pulumi.azure.postgresql.DatabaseArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.keyvault.KeyVault;
/// import com.pulumi.azure.keyvault.KeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.KeyVaultAccessPolicyArgs;
/// import com.pulumi.azure.keyvault.Secret;
/// import com.pulumi.azure.keyvault.SecretArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresql;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupInstancePostgresql;
/// import com.pulumi.azure.dataprotection.BackupInstancePostgresqlArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleServer = new Server("exampleServer", ServerArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("B_Gen5_2")
///             .storageMb(5120)
///             .backupRetentionDays(7)
///             .geoRedundantBackupEnabled(false)
///             .autoGrowEnabled(true)
///             .administratorLogin("psqladmin")
///             .administratorLoginPassword("H@Sh1CoR3!")
///             .version("9.5")
///             .sslEnforcementEnabled(true)
///             .build());
///
///         var exampleFirewallRule = new FirewallRule("exampleFirewallRule", FirewallRuleArgs.builder()
///             .name("AllowAllWindowsAzureIps")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .startIpAddress("0.0.0.0")
///             .endIpAddress("0.0.0.0")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .serverName(exampleServer.name())
///             .charset("UTF8")
///             .collation("English_United States.1252")
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .identity(BackupVaultIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleKeyVault = new KeyVault("exampleKeyVault", KeyVaultArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tenantId(current.tenantId())
///             .skuName("premium")
///             .softDeleteRetentionDays(7)
///             .accessPolicies(
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(current.tenantId())
///                     .objectId(current.objectId())
///                     .keyPermissions(
///                         "Create",
///                         "Get")
///                     .secretPermissions(
///                         "Set",
///                         "Get",
///                         "Delete",
///                         "Purge",
///                         "Recover")
///                     .build(),
///                 KeyVaultAccessPolicyArgs.builder()
///                     .tenantId(exampleBackupVault.identity().applyValue(_identity -> _identity.tenantId()))
///                     .objectId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///                     .keyPermissions(
///                         "Create",
///                         "Get")
///                     .secretPermissions(
///                         "Set",
///                         "Get",
///                         "Delete",
///                         "Purge",
///                         "Recover")
///                     .build())
///             .build());
///
///         var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
///             .name("example")
///             .value(Output.tuple(exampleServer.name(), exampleDatabase.name(), exampleServer.name()).applyValue(values -> {
///                 var exampleServerName = values.t1;
///                 var exampleDatabaseName = values.t2;
///                 var exampleServerName1 = values.t3;
///                 return String.format("Server=%s.postgres.database.azure.com;Database=%s;Port=5432;User Id=psqladmin@%s;Password=H@Sh1CoR3!;Ssl Mode=Require;", exampleServerName,exampleDatabaseName,exampleServerName1);
///             }))
///             .keyVaultId(exampleKeyVault.id())
///             .build());
///
///         var exampleBackupPolicyPostgresql = new BackupPolicyPostgresql("exampleBackupPolicyPostgresql", BackupPolicyPostgresqlArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .vaultName(exampleBackupVault.name())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .defaultRetentionDuration("P4M")
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleServer.id())
///             .roleDefinitionName("Reader")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupInstancePostgresql = new BackupInstancePostgresql("exampleBackupInstancePostgresql", BackupInstancePostgresqlArgs.builder()
///             .name("example")
///             .location(example.location())
///             .vaultId(exampleBackupVault.id())
///             .databaseId(exampleDatabase.id())
///             .backupPolicyId(exampleBackupPolicyPostgresql.id())
///             .databaseCredentialKeyVaultSecretId(exampleSecret.versionlessId())
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
///       name: example
///       location: West Europe
///   exampleServer:
///     type: azure:postgresql:Server
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: B_Gen5_2
///       storageMb: 5120
///       backupRetentionDays: 7
///       geoRedundantBackupEnabled: false
///       autoGrowEnabled: true
///       administratorLogin: psqladmin
///       administratorLoginPassword: H@Sh1CoR3!
///       version: '9.5'
///       sslEnforcementEnabled: true
///   exampleFirewallRule:
///     type: azure:postgresql:FirewallRule
///     name: example
///     properties:
///       name: AllowAllWindowsAzureIps
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       startIpAddress: 0.0.0.0
///       endIpAddress: 0.0.0.0
///   exampleDatabase:
///     type: azure:postgresql:Database
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       serverName: ${exampleServer.name}
///       charset: UTF8
///       collation: English_United States.1252
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example
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
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///         - tenantId: ${exampleBackupVault.identity.tenantId}
///           objectId: ${exampleBackupVault.identity.principalId}
///           keyPermissions:
///             - Create
///             - Get
///           secretPermissions:
///             - Set
///             - Get
///             - Delete
///             - Purge
///             - Recover
///   exampleSecret:
///     type: azure:keyvault:Secret
///     name: example
///     properties:
///       name: example
///       value: Server=${exampleServer.name}.postgres.database.azure.com;Database=${exampleDatabase.name};Port=5432;User Id=psqladmin@${exampleServer.name};Password=H@Sh1CoR3!;Ssl Mode=Require;
///       keyVaultId: ${exampleKeyVault.id}
///   exampleBackupPolicyPostgresql:
///     type: azure:dataprotection:BackupPolicyPostgresql
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       vaultName: ${exampleBackupVault.name}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       defaultRetentionDuration: P4M
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleServer.id}
///       roleDefinitionName: Reader
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupInstancePostgresql:
///     type: azure:dataprotection:BackupInstancePostgresql
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       vaultId: ${exampleBackupVault.id}
///       databaseId: ${exampleDatabase.id}
///       backupPolicyId: ${exampleBackupPolicyPostgresql.id}
///       databaseCredentialKeyVaultSecretId: ${exampleSecret.versionlessId}
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
/// Backup Instance PostgreSQL can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstancePostgresql:BackupInstancePostgresql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstancePostgresql extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyId;
  /// The ID or versionless ID of the key vault secret which stores the connection string of the database.
  late final pulumi.Output<String?> databaseCredentialKeyVaultSecretId;
  /// The ID of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  late final pulumi.Output<String> databaseId;
  /// The location of the source database. Changing this forces a new Backup Instance PostgreSQL to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Backup Instance PostgreSQL. Changing this forces a new Backup Instance PostgreSQL to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance PostgreSQL.
  late final pulumi.Output<String> protectionState;
  /// The ID of the Backup Vault within which the PostgreSQL Backup Instance should exist. Changing this forces a new Backup Instance PostgreSQL to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstancePostgresql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstancePostgresql]. {@macro pulumi_dataprotection_backup_instance_postgresql_backup_instance_postgresql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstancePostgresql(
    String name, {
    BackupInstancePostgresqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstancePostgresql:BackupInstancePostgresql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPolicyId = registerOutput<String>('backupPolicyId');
    this.databaseCredentialKeyVaultSecretId = registerOutput<String?>('databaseCredentialKeyVaultSecretId');
    this.databaseId = registerOutput<String>('databaseId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.protectionState = registerOutput<String>('protectionState');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
