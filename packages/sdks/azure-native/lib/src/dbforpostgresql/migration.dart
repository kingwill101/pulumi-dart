import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_server_metadata_response.dart';
import 'migration_args.dart';
import 'migration_status_response.dart';
import 'system_data_response.dart';

/// Properties of a migration.
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a migration for validating only.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         MigrationOption = AzureNative.DBforPostgreSQL.MigrationOption.Validate,
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			MigrationMode:        pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:        pulumi.String("examplemigration"),
/// 			MigrationOption:      pulumi.String(dbforpostgresql.MigrationOptionValidate),
/// 			OverwriteDbsInTarget: pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:    pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate          = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                = "eastus"
///   migration_mode          = "Offline"
///   migration_name          = "examplemigration"
///   migration_option        = "Validate"
///   overwrite_dbs_in_target = "True"
///   resource_group_name     = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .migrationOption("Validate")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     migrationOption: azure_native.dbforpostgresql.MigrationOption.Validate,
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     migration_option=azure_native.dbforpostgresql.MigrationOption.VALIDATE,
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationMode: Offline
///       migrationName: examplemigration
///       migrationOption: Validate
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///       serverName: exampleserver
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration specifying user names.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///             SourceServerUsername = "newadmin@examplesource",
///             TargetServerUsername = "targetadmin",
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			MigrationMode:     pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:     pulumi.String("examplemigration"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 				SourceServerUsername: pulumi.String("newadmin@examplesource"),
/// 				TargetServerUsername: pulumi.String("targetadmin"),
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate      = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location            = "eastus"
///   migration_mode      = "Offline"
///   migration_name      = "examplemigration"
///   resource_group_name = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///     source_server_username = "newadmin@examplesource"
///     target_server_username = "targetadmin"
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .sourceServerUsername("newadmin@examplesource")
///                 .targetServerUsername("targetadmin")
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///         sourceServerUsername: "newadmin@examplesource",
///         targetServerUsername: "targetadmin",
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///         "source_server_username": "newadmin@examplesource",
///         "target_server_username": "targetadmin",
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationMode: Offline
///       migrationName: examplemigration
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///         sourceServerUsername: newadmin@examplesource
///         targetServerUsername: targetadmin
///       serverName: exampleserver
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration with fully qualified domain names for source and target servers.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "xxxxxxxx",
///                 TargetServerPassword = "xxxxxxxx",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerFullyQualifiedDomainName = "examplesource.contoso.com",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
///         TargetDbServerFullyQualifiedDomainName = "exampletarget.contoso.com",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			MigrationMode:        pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:        pulumi.String("examplemigration"),
/// 			OverwriteDbsInTarget: pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:    pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("xxxxxxxx"),
/// 					TargetServerPassword: pulumi.String("xxxxxxxx"),
/// 				},
/// 			},
/// 			ServerName:                             pulumi.String("exampleserver"),
/// 			SourceDbServerFullyQualifiedDomainName: pulumi.String("examplesource.contoso.com"),
/// 			SourceDbServerResourceId:               pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
/// 			TargetDbServerFullyQualifiedDomainName: pulumi.String("exampletarget.contoso.com"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate          = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                = "eastus"
///   migration_mode          = "Offline"
///   migration_name          = "examplemigration"
///   overwrite_dbs_in_target = "True"
///   resource_group_name     = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "xxxxxxxx"
///       target_server_password = "xxxxxxxx"
///     }
///   }
///   server_name                                  = "exampleserver"
///   source_db_server_fully_qualified_domain_name = "examplesource.contoso.com"
///   source_db_server_resource_id                 = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
///   target_db_server_fully_qualified_domain_name = "exampletarget.contoso.com"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("xxxxxxxx")
///                     .targetServerPassword("xxxxxxxx")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerFullyQualifiedDomainName("examplesource.contoso.com")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///             .targetDbServerFullyQualifiedDomainName("exampletarget.contoso.com")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "xxxxxxxx",
///             targetServerPassword: "xxxxxxxx",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerFullyQualifiedDomainName: "examplesource.contoso.com",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
///     targetDbServerFullyQualifiedDomainName: "exampletarget.contoso.com",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "xxxxxxxx",
///             "target_server_password": "xxxxxxxx",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_fully_qualified_domain_name="examplesource.contoso.com",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
///     target_db_server_fully_qualified_domain_name="exampletarget.contoso.com")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationMode: Offline
///       migrationName: examplemigration
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: xxxxxxxx
///           targetServerPassword: xxxxxxxx
///       serverName: exampleserver
///       sourceDbServerFullyQualifiedDomainName: examplesource.contoso.com
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
///       targetDbServerFullyQualifiedDomainName: exampletarget.contoso.com
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration with other source type for validating and migrating.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         MigrationOption = AzureNative.DBforPostgreSQL.MigrationOption.ValidateAndMigrate,
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "examplesource:5432@exampleuser",
///         SourceType = AzureNative.DBforPostgreSQL.SourceType.OnPremises,
///         SslMode = AzureNative.DBforPostgreSQL.SslMode.Prefer,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			MigrationMode:        pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:        pulumi.String("examplemigration"),
/// 			MigrationOption:      pulumi.String(dbforpostgresql.MigrationOptionValidateAndMigrate),
/// 			OverwriteDbsInTarget: pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:    pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("examplesource:5432@exampleuser"),
/// 			SourceType:               pulumi.String(dbforpostgresql.SourceTypeOnPremises),
/// 			SslMode:                  pulumi.String(dbforpostgresql.SslModePrefer),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate          = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                = "eastus"
///   migration_mode          = "Offline"
///   migration_name          = "examplemigration"
///   migration_option        = "ValidateAndMigrate"
///   overwrite_dbs_in_target = "True"
///   resource_group_name     = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "examplesource:5432@exampleuser"
///   source_type                  = "OnPremises"
///   ssl_mode                     = "Prefer"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .migrationOption("ValidateAndMigrate")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("examplesource:5432@exampleuser")
///             .sourceType("OnPremises")
///             .sslMode("Prefer")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     migrationOption: azure_native.dbforpostgresql.MigrationOption.ValidateAndMigrate,
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "examplesource:5432@exampleuser",
///     sourceType: azure_native.dbforpostgresql.SourceType.OnPremises,
///     sslMode: azure_native.dbforpostgresql.SslMode.Prefer,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     migration_option=azure_native.dbforpostgresql.MigrationOption.VALIDATE_AND_MIGRATE,
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="examplesource:5432@exampleuser",
///     source_type=azure_native.dbforpostgresql.SourceType.ON_PREMISES,
///     ssl_mode=azure_native.dbforpostgresql.SslMode.PREFER)
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationMode: Offline
///       migrationName: examplemigration
///       migrationOption: ValidateAndMigrate
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///       serverName: exampleserver
///       sourceDbServerResourceId: examplesource:5432@exampleuser
///       sourceType: OnPremises
///       sslMode: Prefer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration with private endpoint.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationInstanceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:                    pulumi.String("eastus"),
/// 			MigrationInstanceResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration"),
/// 			MigrationMode:               pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:               pulumi.String("examplemigration"),
/// 			OverwriteDbsInTarget:        pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:           pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate                 = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                       = "eastus"
///   migration_instance_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration"
///   migration_mode                 = "Offline"
///   migration_name                 = "examplemigration"
///   overwrite_dbs_in_target        = "True"
///   resource_group_name            = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationInstanceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationInstanceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_instance_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationInstanceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/flexibleServers/examplesourcemigration
///       migrationMode: Offline
///       migrationName: examplemigration
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///       serverName: exampleserver
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration with roles.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrateRoles = AzureNative.DBforPostgreSQL.MigrateRolesAndPermissions.True,
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			MigrateRoles:         pulumi.String(dbforpostgresql.MigrateRolesAndPermissionsTrue),
/// 			MigrationMode:        pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:        pulumi.String("examplemigration"),
/// 			OverwriteDbsInTarget: pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:    pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate          = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                = "eastus"
///   migrate_roles           = "True"
///   migration_mode          = "Offline"
///   migration_name          = "examplemigration"
///   overwrite_dbs_in_target = "True"
///   resource_group_name     = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrateRoles("True")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrateRoles: azure_native.dbforpostgresql.MigrateRolesAndPermissions.True,
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migrate_roles=azure_native.dbforpostgresql.MigrateRolesAndPermissions.TRUE,
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrateRoles: True
///       migrationMode: Offline
///       migrationName: examplemigration
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///       serverName: exampleserver
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a migration.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migration = new AzureNative.DBforPostgreSQL.Migration("migration", new()
///     {
///         DbsToMigrate = new[]
///         {
///             "exampledatabase1",
///             "exampledatabase2",
///             "exampledatabase3",
///             "exampledatabase4",
///         },
///         Location = "eastus",
///         MigrationMode = AzureNative.DBforPostgreSQL.MigrationMode.Offline,
///         MigrationName = "examplemigration",
///         OverwriteDbsInTarget = AzureNative.DBforPostgreSQL.OverwriteDatabasesOnTargetServer.True,
///         ResourceGroupName = "exampleresourcegroup",
///         SecretParameters = new AzureNative.DBforPostgreSQL.Inputs.MigrationSecretParametersArgs
///         {
///             AdminCredentials = new AzureNative.DBforPostgreSQL.Inputs.AdminCredentialsArgs
///             {
///                 SourceServerPassword = "examplesourcepassword",
///                 TargetServerPassword = "exampletargetpassword",
///             },
///         },
///         ServerName = "exampleserver",
///         SourceDbServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewMigration(ctx, "migration", &dbforpostgresql.MigrationArgs{
/// 			DbsToMigrate: pulumi.StringArray{
/// 				pulumi.String("exampledatabase1"),
/// 				pulumi.String("exampledatabase2"),
/// 				pulumi.String("exampledatabase3"),
/// 				pulumi.String("exampledatabase4"),
/// 			},
/// 			Location:             pulumi.String("eastus"),
/// 			MigrationMode:        pulumi.String(dbforpostgresql.MigrationModeOffline),
/// 			MigrationName:        pulumi.String("examplemigration"),
/// 			OverwriteDbsInTarget: pulumi.String(dbforpostgresql.OverwriteDatabasesOnTargetServerTrue),
/// 			ResourceGroupName:    pulumi.String("exampleresourcegroup"),
/// 			SecretParameters: &dbforpostgresql.MigrationSecretParametersArgs{
/// 				AdminCredentials: &dbforpostgresql.AdminCredentialsArgs{
/// 					SourceServerPassword: pulumi.String("examplesourcepassword"),
/// 					TargetServerPassword: pulumi.String("exampletargetpassword"),
/// 				},
/// 			},
/// 			ServerName:               pulumi.String("exampleserver"),
/// 			SourceDbServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbforpostgresql_migration" "migration" {
///   dbs_to_migrate          = ["exampledatabase1", "exampledatabase2", "exampledatabase3", "exampledatabase4"]
///   location                = "eastus"
///   migration_mode          = "Offline"
///   migration_name          = "examplemigration"
///   overwrite_dbs_in_target = "True"
///   resource_group_name     = "exampleresourcegroup"
///   secret_parameters = {
///     admin_credentials = {
///       source_server_password = "examplesourcepassword"
///       target_server_password = "exampletargetpassword"
///     }
///   }
///   server_name                  = "exampleserver"
///   source_db_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource"
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
/// import com.pulumi.azurenative.dbforpostgresql.Migration;
/// import com.pulumi.azurenative.dbforpostgresql.MigrationArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.MigrationSecretParametersArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AdminCredentialsArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var migration = new Migration("migration", MigrationArgs.builder()
///             .dbsToMigrate(
///                 "exampledatabase1",
///                 "exampledatabase2",
///                 "exampledatabase3",
///                 "exampledatabase4")
///             .location("eastus")
///             .migrationMode("Offline")
///             .migrationName("examplemigration")
///             .overwriteDbsInTarget("True")
///             .resourceGroupName("exampleresourcegroup")
///             .secretParameters(MigrationSecretParametersArgs.builder()
///                 .adminCredentials(AdminCredentialsArgs.builder()
///                     .sourceServerPassword("examplesourcepassword")
///                     .targetServerPassword("exampletargetpassword")
///                     .build())
///                 .build())
///             .serverName("exampleserver")
///             .sourceDbServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
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
/// const migration = new azure_native.dbforpostgresql.Migration("migration", {
///     dbsToMigrate: [
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location: "eastus",
///     migrationMode: azure_native.dbforpostgresql.MigrationMode.Offline,
///     migrationName: "examplemigration",
///     overwriteDbsInTarget: azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.True,
///     resourceGroupName: "exampleresourcegroup",
///     secretParameters: {
///         adminCredentials: {
///             sourceServerPassword: "examplesourcepassword",
///             targetServerPassword: "exampletargetpassword",
///         },
///     },
///     serverName: "exampleserver",
///     sourceDbServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migration = azure_native.dbforpostgresql.Migration("migration",
///     dbs_to_migrate=[
///         "exampledatabase1",
///         "exampledatabase2",
///         "exampledatabase3",
///         "exampledatabase4",
///     ],
///     location="eastus",
///     migration_mode=azure_native.dbforpostgresql.MigrationMode.OFFLINE,
///     migration_name="examplemigration",
///     overwrite_dbs_in_target=azure_native.dbforpostgresql.OverwriteDatabasesOnTargetServer.TRUE,
///     resource_group_name="exampleresourcegroup",
///     secret_parameters={
///         "admin_credentials": {
///             "source_server_password": "examplesourcepassword",
///             "target_server_password": "exampletargetpassword",
///         },
///     },
///     server_name="exampleserver",
///     source_db_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource")
///
/// ```
///
/// ```yaml
/// resources:
///   migration:
///     type: azure-native:dbforpostgresql:Migration
///     properties:
///       dbsToMigrate:
///         - exampledatabase1
///         - exampledatabase2
///         - exampledatabase3
///         - exampledatabase4
///       location: eastus
///       migrationMode: Offline
///       migrationName: examplemigration
///       overwriteDbsInTarget: True
///       resourceGroupName: exampleresourcegroup
///       secretParameters:
///         adminCredentials:
///           sourceServerPassword: examplesourcepassword
///           targetServerPassword: exampletargetpassword
///       serverName: exampleserver
///       sourceDbServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBForPostgreSql/servers/examplesource
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
/// $ pulumi import azure-native:dbforpostgresql:Migration examplemigration /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/migrations/{migrationName}
/// ```
class Migration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Indicates if cancel must be triggered for the entire migration.
  late final pulumi.Output<String?> cancel;
  /// Current status of a migration.
  late final pulumi.Output<MigrationStatusResponse> currentStatus;
  /// When you want to trigger cancel for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  late final pulumi.Output<List<String>?> dbsToCancelMigrationOn;
  /// Names of databases to migrate.
  late final pulumi.Output<List<String>?> dbsToMigrate;
  /// When you want to trigger cutover for specific databases set 'triggerCutover' to 'True' and the names of the specific databases in this array.
  late final pulumi.Output<List<String>?> dbsToTriggerCutoverOn;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Indicates if roles and permissions must be migrated.
  late final pulumi.Output<String?> migrateRoles;
  /// Identifier of a migration.
  late final pulumi.Output<String> migrationId;
  /// Identifier of the private endpoint migration instance.
  late final pulumi.Output<String?> migrationInstanceResourceId;
  /// Mode used to perform the migration: Online or Offline.
  late final pulumi.Output<String?> migrationMode;
  /// Supported option for a migration.
  late final pulumi.Output<String?> migrationOption;
  /// End time (UTC) for migration window.
  late final pulumi.Output<String?> migrationWindowEndTimeInUtc;
  /// Start time (UTC) for migration window.
  late final pulumi.Output<String?> migrationWindowStartTimeInUtc;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Indicates if databases on the target server can be overwritten when already present. If set to 'False', when the migration workflow detects that the database already exists on the target server, it will wait for a confirmation.
  late final pulumi.Output<String?> overwriteDbsInTarget;
  /// Indicates whether to setup logical replication on source server, if needed.
  late final pulumi.Output<String?> setupLogicalReplicationOnSourceDbIfNeeded;
  /// Fully qualified domain name (FQDN) or IP address of the source server. This property is optional. When provided, the migration service will always use it to connect to the source server.
  late final pulumi.Output<String?> sourceDbServerFullyQualifiedDomainName;
  /// Metadata of source database server.
  late final pulumi.Output<DbServerMetadataResponse> sourceDbServerMetadata;
  /// Identifier of the source database server resource, when 'sourceType' is 'PostgreSQLSingleServer'. For other source types this must be set to ipaddress:port@username or hostname:port@username.
  late final pulumi.Output<String?> sourceDbServerResourceId;
  /// Source server type used for the migration: ApsaraDB_RDS, AWS, AWS_AURORA, AWS_EC2, AWS_RDS, AzureVM, Crunchy_PostgreSQL, Digital_Ocean_Droplets, Digital_Ocean_PostgreSQL, EDB, EDB_Oracle_Server, EDB_PostgreSQL, GCP, GCP_AlloyDB, GCP_CloudSQL, GCP_Compute, Heroku_PostgreSQL, Huawei_Compute, Huawei_RDS, OnPremises, PostgreSQLCosmosDB, PostgreSQLFlexibleServer, PostgreSQLSingleServer, or Supabase_PostgreSQL
  late final pulumi.Output<String?> sourceType;
  /// SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
  late final pulumi.Output<String?> sslMode;
  /// Indicates if data migration must start right away.
  late final pulumi.Output<String?> startDataMigration;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Fully qualified domain name (FQDN) or IP address of the target server. This property is optional. When provided, the migration service will always use it to connect to the target server.
  late final pulumi.Output<String?> targetDbServerFullyQualifiedDomainName;
  /// Metadata of target database server.
  late final pulumi.Output<DbServerMetadataResponse> targetDbServerMetadata;
  /// Identifier of the target database server resource.
  late final pulumi.Output<String> targetDbServerResourceId;
  /// Indicates if cutover must be triggered for the entire migration.
  late final pulumi.Output<String?> triggerCutover;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Migration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Migration]. {@macro pulumi_dbforpostgresql_migration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Migration(
    String name, {
    MigrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:Migration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    cancel = registerOutput<String?>('cancel');
    currentStatus = registerOutput<MigrationStatusResponse>('currentStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrationStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dbsToCancelMigrationOn = registerOutput<List<String>?>('dbsToCancelMigrationOn');
    dbsToMigrate = registerOutput<List<String>?>('dbsToMigrate');
    dbsToTriggerCutoverOn = registerOutput<List<String>?>('dbsToTriggerCutoverOn');
    location = registerOutput<String>('location');
    migrateRoles = registerOutput<String?>('migrateRoles');
    migrationId = registerOutput<String>('migrationId');
    migrationInstanceResourceId = registerOutput<String?>('migrationInstanceResourceId');
    migrationMode = registerOutput<String?>('migrationMode');
    migrationOption = registerOutput<String?>('migrationOption');
    migrationWindowEndTimeInUtc = registerOutput<String?>('migrationWindowEndTimeInUtc');
    migrationWindowStartTimeInUtc = registerOutput<String?>('migrationWindowStartTimeInUtc');
    this.name = registerOutput<String>('name');
    overwriteDbsInTarget = registerOutput<String?>('overwriteDbsInTarget');
    setupLogicalReplicationOnSourceDbIfNeeded = registerOutput<String?>('setupLogicalReplicationOnSourceDbIfNeeded');
    sourceDbServerFullyQualifiedDomainName = registerOutput<String?>('sourceDbServerFullyQualifiedDomainName');
    sourceDbServerMetadata = registerOutput<DbServerMetadataResponse>('sourceDbServerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbServerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceDbServerResourceId = registerOutput<String?>('sourceDbServerResourceId');
    sourceType = registerOutput<String?>('sourceType');
    sslMode = registerOutput<String?>('sslMode');
    startDataMigration = registerOutput<String?>('startDataMigration');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    targetDbServerFullyQualifiedDomainName = registerOutput<String?>('targetDbServerFullyQualifiedDomainName');
    targetDbServerMetadata = registerOutput<DbServerMetadataResponse>('targetDbServerMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DbServerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetDbServerResourceId = registerOutput<String>('targetDbServerResourceId');
    triggerCutover = registerOutput<String?>('triggerCutover');
    type = registerOutput<String>('type');
  }
}
