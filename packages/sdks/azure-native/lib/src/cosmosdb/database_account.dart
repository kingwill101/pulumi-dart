import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytical_storage_configuration_response.dart';
import 'api_properties_response.dart';
import 'capability_response.dart';
import 'capacity_response.dart';
import 'consistency_policy_response.dart';
import 'cors_policy_response.dart';
import 'database_account_args.dart';
import 'database_account_keys_metadata_response.dart';
import 'failover_policy_response.dart';
import 'ip_address_or_range_response.dart';
import 'location_response.dart';
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'restore_parameters_response.dart';
import 'system_data_response.dart';
import 'virtual_network_rule_response.dart';

/// An Azure Cosmos DB database account.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2015-04-01, 2015-04-08, 2015-11-06, 2016-03-19, 2016-03-31, 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBDatabaseAccountCreateMin
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccount = new AzureNative.CosmosDB.DatabaseAccount("databaseAccount", new()
///     {
///         AccountName = "ddb1",
///         CreateMode = AzureNative.CosmosDB.CreateMode.Default,
///         DatabaseAccountOfferType = AzureNative.CosmosDB.DatabaseAccountOfferType.Standard,
///         Location = "westus",
///         Locations = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.LocationArgs
///             {
///                 FailoverPriority = 0,
///                 IsZoneRedundant = false,
///                 LocationName = "southcentralus",
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewDatabaseAccount(ctx, "databaseAccount", &cosmosdb.DatabaseAccountArgs{
/// 			AccountName:              pulumi.String("ddb1"),
/// 			CreateMode:               pulumi.String(cosmosdb.CreateModeDefault),
/// 			DatabaseAccountOfferType: cosmosdb.DatabaseAccountOfferTypeStandard,
/// 			Location:                 pulumi.String("westus"),
/// 			Locations: cosmosdb.LocationArray{
/// 				&cosmosdb.LocationArgs{
/// 					FailoverPriority: pulumi.Int(0),
/// 					IsZoneRedundant:  pulumi.Bool(false),
/// 					LocationName:     pulumi.String("southcentralus"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// resource "azure-native_cosmosdb_databaseaccount" "databaseAccount" {
///   account_name                = "ddb1"
///   create_mode                 = "Default"
///   database_account_offer_type = "Standard"
///   location                    = "westus"
///   locations {
///     failover_priority = 0
///     is_zone_redundant = false
///     location_name     = "southcentralus"
///   }
///   resource_group_name = "rg1"
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccount;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.LocationArgs;
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
///         var databaseAccount = new DatabaseAccount("databaseAccount", DatabaseAccountArgs.builder()
///             .accountName("ddb1")
///             .createMode("Default")
///             .databaseAccountOfferType("Standard")
///             .location("westus")
///             .locations(LocationArgs.builder()
///                 .failoverPriority(0)
///                 .isZoneRedundant(false)
///                 .locationName("southcentralus")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const databaseAccount = new azure_native.cosmosdb.DatabaseAccount("databaseAccount", {
///     accountName: "ddb1",
///     createMode: azure_native.cosmosdb.CreateMode.Default,
///     databaseAccountOfferType: azure_native.cosmosdb.DatabaseAccountOfferType.Standard,
///     location: "westus",
///     locations: [{
///         failoverPriority: 0,
///         isZoneRedundant: false,
///         locationName: "southcentralus",
///     }],
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_account = azure_native.cosmosdb.DatabaseAccount("databaseAccount",
///     account_name="ddb1",
///     create_mode=azure_native.cosmosdb.CreateMode.DEFAULT,
///     database_account_offer_type=azure_native.cosmosdb.DatabaseAccountOfferType.STANDARD,
///     location="westus",
///     locations=[{
///         "failover_priority": 0,
///         "is_zone_redundant": False,
///         "location_name": "southcentralus",
///     }],
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccount:
///     type: azure-native:cosmosdb:DatabaseAccount
///     properties:
///       accountName: ddb1
///       createMode: Default
///       databaseAccountOfferType: Standard
///       location: westus
///       locations:
///         - failoverPriority: 0
///           isZoneRedundant: false
///           locationName: southcentralus
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CosmosDBRestoreDatabaseAccountCreateUpdate.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseAccount = new AzureNative.CosmosDB.DatabaseAccount("databaseAccount", new()
///     {
///         AccountName = "ddb1",
///         ApiProperties = new AzureNative.CosmosDB.Inputs.ApiPropertiesArgs
///         {
///             ServerVersion = AzureNative.CosmosDB.ServerVersion.ServerVersion_3_2,
///         },
///         BackupPolicy = new AzureNative.CosmosDB.Inputs.ContinuousModeBackupPolicyArgs
///         {
///             ContinuousModeProperties = new AzureNative.CosmosDB.Inputs.ContinuousModePropertiesArgs
///             {
///                 Tier = AzureNative.CosmosDB.ContinuousTier.Continuous30Days,
///             },
///             Type = "Continuous",
///         },
///         ConsistencyPolicy = new AzureNative.CosmosDB.Inputs.ConsistencyPolicyArgs
///         {
///             DefaultConsistencyLevel = AzureNative.CosmosDB.DefaultConsistencyLevel.BoundedStaleness,
///             MaxIntervalInSeconds = 10,
///             MaxStalenessPrefix = 200,
///         },
///         CreateMode = AzureNative.CosmosDB.CreateMode.Restore,
///         DatabaseAccountOfferType = AzureNative.CosmosDB.DatabaseAccountOfferType.Standard,
///         EnableAnalyticalStorage = true,
///         EnableFreeTier = false,
///         KeyVaultKeyUri = "https://myKeyVault.vault.azure.net",
///         Kind = AzureNative.CosmosDB.DatabaseAccountKind.GlobalDocumentDB,
///         Location = "westus",
///         Locations = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.LocationArgs
///             {
///                 FailoverPriority = 0,
///                 IsZoneRedundant = false,
///                 LocationName = "southcentralus",
///             },
///         },
///         MinimalTlsVersion = AzureNative.CosmosDB.MinimalTlsVersion.Tls,
///         ResourceGroupName = "rg1",
///         RestoreParameters = new AzureNative.CosmosDB.Inputs.RestoreParametersArgs
///         {
///             DatabasesToRestore = new[]
///             {
///                 new AzureNative.CosmosDB.Inputs.DatabaseRestoreResourceArgs
///                 {
///                     CollectionNames = new[]
///                     {
///                         "collection1",
///                         "collection2",
///                     },
///                     DatabaseName = "db1",
///                 },
///                 new AzureNative.CosmosDB.Inputs.DatabaseRestoreResourceArgs
///                 {
///                     CollectionNames = new[]
///                     {
///                         "collection3",
///                         "collection4",
///                     },
///                     DatabaseName = "db2",
///                 },
///             },
///             RestoreMode = AzureNative.CosmosDB.RestoreMode.PointInTime,
///             RestoreSource = "/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc",
///             RestoreTimestampInUtc = "2021-03-11T22:05:09Z",
///             RestoreWithTtlDisabled = false,
///             SourceBackupLocation = "westus",
///         },
///         Tags = null,
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewDatabaseAccount(ctx, "databaseAccount", &cosmosdb.DatabaseAccountArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			ApiProperties: &cosmosdb.ApiPropertiesArgs{
/// 				ServerVersion: pulumi.String(cosmosdb.ServerVersion_3_2),
/// 			},
/// 			BackupPolicy: &cosmosdb.ContinuousModeBackupPolicyArgs{
/// 				ContinuousModeProperties: &cosmosdb.ContinuousModePropertiesArgs{
/// 					Tier: pulumi.String(cosmosdb.ContinuousTierContinuous30Days),
/// 				},
/// 				Type: pulumi.String("Continuous"),
/// 			},
/// 			ConsistencyPolicy: &cosmosdb.ConsistencyPolicyArgs{
/// 				DefaultConsistencyLevel: cosmosdb.DefaultConsistencyLevelBoundedStaleness,
/// 				MaxIntervalInSeconds:    pulumi.Int(10),
/// 				MaxStalenessPrefix:      pulumi.Float64(200),
/// 			},
/// 			CreateMode:               pulumi.String(cosmosdb.CreateModeRestore),
/// 			DatabaseAccountOfferType: cosmosdb.DatabaseAccountOfferTypeStandard,
/// 			EnableAnalyticalStorage:  pulumi.Bool(true),
/// 			EnableFreeTier:           pulumi.Bool(false),
/// 			KeyVaultKeyUri:           pulumi.String("https://myKeyVault.vault.azure.net"),
/// 			Kind:                     pulumi.String(cosmosdb.DatabaseAccountKindGlobalDocumentDB),
/// 			Location:                 pulumi.String("westus"),
/// 			Locations: cosmosdb.LocationArray{
/// 				&cosmosdb.LocationArgs{
/// 					FailoverPriority: pulumi.Int(0),
/// 					IsZoneRedundant:  pulumi.Bool(false),
/// 					LocationName:     pulumi.String("southcentralus"),
/// 				},
/// 			},
/// 			MinimalTlsVersion: pulumi.String(cosmosdb.MinimalTlsVersionTls),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RestoreParameters: &cosmosdb.RestoreParametersArgs{
/// 				DatabasesToRestore: cosmosdb.DatabaseRestoreResourceArray{
/// 					&cosmosdb.DatabaseRestoreResourceArgs{
/// 						CollectionNames: pulumi.StringArray{
/// 							pulumi.String("collection1"),
/// 							pulumi.String("collection2"),
/// 						},
/// 						DatabaseName: pulumi.String("db1"),
/// 					},
/// 					&cosmosdb.DatabaseRestoreResourceArgs{
/// 						CollectionNames: pulumi.StringArray{
/// 							pulumi.String("collection3"),
/// 							pulumi.String("collection4"),
/// 						},
/// 						DatabaseName: pulumi.String("db2"),
/// 					},
/// 				},
/// 				RestoreMode:            pulumi.String(cosmosdb.RestoreModePointInTime),
/// 				RestoreSource:          pulumi.String("/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc"),
/// 				RestoreTimestampInUtc:  pulumi.String("2021-03-11T22:05:09Z"),
/// 				RestoreWithTtlDisabled: pulumi.Bool(false),
/// 				SourceBackupLocation:   pulumi.String("westus"),
/// 			},
/// 			Tags: pulumi.StringMap{},
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
/// resource "azure-native_cosmosdb_databaseaccount" "databaseAccount" {
///   account_name = "ddb1"
///   api_properties = {
///     server_version = "3.2"
///   }
///   backup_policy = {
///     "continuousModeProperties" = {
///       "tier" = "Continuous30Days"
///     }
///     "type" = "Continuous"
///   }
///   consistency_policy = {
///     default_consistency_level = "BoundedStaleness"
///     max_interval_in_seconds   = 10
///     max_staleness_prefix      = 200
///   }
///   create_mode                 = "Restore"
///   database_account_offer_type = "Standard"
///   enable_analytical_storage   = true
///   enable_free_tier            = false
///   key_vault_key_uri           = "https://myKeyVault.vault.azure.net"
///   kind                        = "GlobalDocumentDB"
///   location                    = "westus"
///   locations {
///     failover_priority = 0
///     is_zone_redundant = false
///     location_name     = "southcentralus"
///   }
///   minimal_tls_version = "Tls"
///   resource_group_name = "rg1"
///   restore_parameters = {
///     databases_to_restore = [{
///       "collectionNames" = ["collection1", "collection2"]
///       "databaseName"    = "db1"
///       }, {
///       "collectionNames" = ["collection3", "collection4"]
///       "databaseName"    = "db2"
///     }]
///     restore_mode              = "PointInTime"
///     restore_source            = "/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc"
///     restore_timestamp_in_utc  = "2021-03-11T22:05:09Z"
///     restore_with_ttl_disabled = false
///     source_backup_location    = "westus"
///   }
///   tags = {}
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
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccount;
/// import com.pulumi.azurenative.cosmosdb.DatabaseAccountArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ApiPropertiesArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.ConsistencyPolicyArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.LocationArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.RestoreParametersArgs;
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
///         var databaseAccount = new DatabaseAccount("databaseAccount", DatabaseAccountArgs.builder()
///             .accountName("ddb1")
///             .apiProperties(ApiPropertiesArgs.builder()
///                 .serverVersion("3.2")
///                 .build())
///             .backupPolicy(ContinuousModeBackupPolicyArgs.builder()
///                 .continuousModeProperties(ContinuousModePropertiesArgs.builder()
///                     .tier("Continuous30Days")
///                     .build())
///                 .type("Continuous")
///                 .build())
///             .consistencyPolicy(ConsistencyPolicyArgs.builder()
///                 .defaultConsistencyLevel("BoundedStaleness")
///                 .maxIntervalInSeconds(10)
///                 .maxStalenessPrefix(200.0)
///                 .build())
///             .createMode("Restore")
///             .databaseAccountOfferType("Standard")
///             .enableAnalyticalStorage(true)
///             .enableFreeTier(false)
///             .keyVaultKeyUri("https://myKeyVault.vault.azure.net")
///             .kind("GlobalDocumentDB")
///             .location("westus")
///             .locations(LocationArgs.builder()
///                 .failoverPriority(0)
///                 .isZoneRedundant(false)
///                 .locationName("southcentralus")
///                 .build())
///             .minimalTlsVersion("Tls")
///             .resourceGroupName("rg1")
///             .restoreParameters(RestoreParametersArgs.builder()
///                 .databasesToRestore(
///                     DatabaseRestoreResourceArgs.builder()
///                         .collectionNames(
///                             "collection1",
///                             "collection2")
///                         .databaseName("db1")
///                         .build(),
///                     DatabaseRestoreResourceArgs.builder()
///                         .collectionNames(
///                             "collection3",
///                             "collection4")
///                         .databaseName("db2")
///                         .build())
///                 .restoreMode("PointInTime")
///                 .restoreSource("/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc")
///                 .restoreTimestampInUtc("2021-03-11T22:05:09Z")
///                 .restoreWithTtlDisabled(false)
///                 .sourceBackupLocation("westus")
///                 .build())
///             .tags(Map.ofEntries(
///             ))
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
/// const databaseAccount = new azure_native.cosmosdb.DatabaseAccount("databaseAccount", {
///     accountName: "ddb1",
///     apiProperties: {
///         serverVersion: azure_native.cosmosdb.ServerVersion.ServerVersion_3_2,
///     },
///     backupPolicy: {
///         continuousModeProperties: {
///             tier: azure_native.cosmosdb.ContinuousTier.Continuous30Days,
///         },
///         type: "Continuous",
///     },
///     consistencyPolicy: {
///         defaultConsistencyLevel: azure_native.cosmosdb.DefaultConsistencyLevel.BoundedStaleness,
///         maxIntervalInSeconds: 10,
///         maxStalenessPrefix: 200,
///     },
///     createMode: azure_native.cosmosdb.CreateMode.Restore,
///     databaseAccountOfferType: azure_native.cosmosdb.DatabaseAccountOfferType.Standard,
///     enableAnalyticalStorage: true,
///     enableFreeTier: false,
///     keyVaultKeyUri: "https://myKeyVault.vault.azure.net",
///     kind: azure_native.cosmosdb.DatabaseAccountKind.GlobalDocumentDB,
///     location: "westus",
///     locations: [{
///         failoverPriority: 0,
///         isZoneRedundant: false,
///         locationName: "southcentralus",
///     }],
///     minimalTlsVersion: azure_native.cosmosdb.MinimalTlsVersion.Tls,
///     resourceGroupName: "rg1",
///     restoreParameters: {
///         databasesToRestore: [
///             {
///                 collectionNames: [
///                     "collection1",
///                     "collection2",
///                 ],
///                 databaseName: "db1",
///             },
///             {
///                 collectionNames: [
///                     "collection3",
///                     "collection4",
///                 ],
///                 databaseName: "db2",
///             },
///         ],
///         restoreMode: azure_native.cosmosdb.RestoreMode.PointInTime,
///         restoreSource: "/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc",
///         restoreTimestampInUtc: "2021-03-11T22:05:09Z",
///         restoreWithTtlDisabled: false,
///         sourceBackupLocation: "westus",
///     },
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_account = azure_native.cosmosdb.DatabaseAccount("databaseAccount",
///     account_name="ddb1",
///     api_properties={
///         "server_version": azure_native.cosmosdb.ServerVersion.SERVER_VERSION_3_2,
///     },
///     backup_policy={
///         "continuous_mode_properties": {
///             "tier": azure_native.cosmosdb.ContinuousTier.CONTINUOUS30_DAYS,
///         },
///         "type": "Continuous",
///     },
///     consistency_policy={
///         "default_consistency_level": azure_native.cosmosdb.DefaultConsistencyLevel.BOUNDED_STALENESS,
///         "max_interval_in_seconds": 10,
///         "max_staleness_prefix": float(200),
///     },
///     create_mode=azure_native.cosmosdb.CreateMode.RESTORE,
///     database_account_offer_type=azure_native.cosmosdb.DatabaseAccountOfferType.STANDARD,
///     enable_analytical_storage=True,
///     enable_free_tier=False,
///     key_vault_key_uri="https://myKeyVault.vault.azure.net",
///     kind=azure_native.cosmosdb.DatabaseAccountKind.GLOBAL_DOCUMENT_DB,
///     location="westus",
///     locations=[{
///         "failover_priority": 0,
///         "is_zone_redundant": False,
///         "location_name": "southcentralus",
///     }],
///     minimal_tls_version=azure_native.cosmosdb.MinimalTlsVersion.TLS,
///     resource_group_name="rg1",
///     restore_parameters={
///         "databases_to_restore": [
///             {
///                 "collection_names": [
///                     "collection1",
///                     "collection2",
///                 ],
///                 "database_name": "db1",
///             },
///             {
///                 "collection_names": [
///                     "collection3",
///                     "collection4",
///                 ],
///                 "database_name": "db2",
///             },
///         ],
///         "restore_mode": azure_native.cosmosdb.RestoreMode.POINT_IN_TIME,
///         "restore_source": "/subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc",
///         "restore_timestamp_in_utc": "2021-03-11T22:05:09Z",
///         "restore_with_ttl_disabled": False,
///         "source_backup_location": "westus",
///     },
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   databaseAccount:
///     type: azure-native:cosmosdb:DatabaseAccount
///     properties:
///       accountName: ddb1
///       apiProperties:
///         serverVersion: '3.2'
///       backupPolicy:
///         continuousModeProperties:
///           tier: Continuous30Days
///         type: Continuous
///       consistencyPolicy:
///         defaultConsistencyLevel: BoundedStaleness
///         maxIntervalInSeconds: 10
///         maxStalenessPrefix: 200
///       createMode: Restore
///       databaseAccountOfferType: Standard
///       enableAnalyticalStorage: true
///       enableFreeTier: false
///       keyVaultKeyUri: https://myKeyVault.vault.azure.net
///       kind: GlobalDocumentDB
///       location: westus
///       locations:
///         - failoverPriority: 0
///           isZoneRedundant: false
///           locationName: southcentralus
///       minimalTlsVersion: Tls
///       resourceGroupName: rg1
///       restoreParameters:
///         databasesToRestore:
///           - collectionNames:
///               - collection1
///               - collection2
///             databaseName: db1
///           - collectionNames:
///               - collection3
///               - collection4
///             databaseName: db2
///         restoreMode: PointInTime
///         restoreSource: /subscriptions/subid/providers/Microsoft.DocumentDB/locations/westus/restorableDatabaseAccounts/1a97b4bb-f6a0-430e-ade1-638d781830cc
///         restoreTimestampInUtc: 2021-03-11T22:05:09Z
///         restoreWithTtlDisabled: false
///         sourceBackupLocation: westus
///       tags: {}
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
/// $ pulumi import azure-native:cosmosdb:DatabaseAccount ddb1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}
/// ```
class DatabaseAccount extends pulumi.CustomResource {
  /// Analytical storage specific properties.
  late final pulumi.Output<AnalyticalStorageConfigurationResponse?> analyticalStorageConfiguration;
  /// API specific properties.
  late final pulumi.Output<ApiPropertiesResponse?> apiProperties;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The object representing the policy for taking backups on an account.
  late final pulumi.Output<dynamic> backupPolicy;
  /// List of Cosmos DB capabilities for the account
  late final pulumi.Output<List<CapabilityResponse>?> capabilities;
  /// The object that represents all properties related to capacity enforcement on an account.
  late final pulumi.Output<CapacityResponse?> capacity;
  /// The cassandra connector offer type for the Cosmos DB database C* account.
  late final pulumi.Output<String?> connectorOffer;
  /// The consistency policy for the Cosmos DB database account.
  late final pulumi.Output<ConsistencyPolicyResponse?> consistencyPolicy;
  /// The CORS policy for the Cosmos DB database account.
  late final pulumi.Output<List<CorsPolicyResponse>?> cors;
  /// Enum to indicate the mode of account creation.
  late final pulumi.Output<String?> createMode;
  /// Indicates the status of the Customer Managed Key feature on the account. In case there are errors, the property provides troubleshooting guidance.
  late final pulumi.Output<String?> customerManagedKeyStatus;
  /// The offer type for the Cosmos DB database account. Default value: Standard.
  late final pulumi.Output<String> databaseAccountOfferType;
  /// The default identity for accessing key vault used in features like customer managed keys. The default identity needs to be explicitly set by the users. It can be "FirstPartyIdentity", "SystemAssignedIdentity" and more.
  late final pulumi.Output<String?> defaultIdentity;
  /// Enum to indicate default Priority Level of request for Priority Based Execution.
  late final pulumi.Output<String?> defaultPriorityLevel;
  /// Disable write operations on metadata resources (databases, containers, throughput) via account keys
  late final pulumi.Output<bool?> disableKeyBasedMetadataWriteAccess;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  late final pulumi.Output<bool?> disableLocalAuth;
  /// The connection endpoint for the Cosmos DB database account.
  late final pulumi.Output<String> documentEndpoint;
  /// Flag to indicate whether to enable storage analytics.
  late final pulumi.Output<bool?> enableAnalyticalStorage;
  /// Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.
  late final pulumi.Output<bool?> enableAutomaticFailover;
  /// Flag to indicate enabling/disabling of Burst Capacity feature on the account
  late final pulumi.Output<bool?> enableBurstCapacity;
  /// Enables the cassandra connector on the Cosmos DB C* account
  late final pulumi.Output<bool?> enableCassandraConnector;
  /// Flag to indicate whether Free Tier is enabled.
  late final pulumi.Output<bool?> enableFreeTier;
  /// Enables the account to write in multiple locations
  late final pulumi.Output<bool?> enableMultipleWriteLocations;
  /// Flag to indicate enabling/disabling of Partition Merge feature on the account
  late final pulumi.Output<bool?> enablePartitionMerge;
  /// Flag to indicate enabling/disabling of PerRegionPerPartitionAutoscale feature on the account
  late final pulumi.Output<bool?> enablePerRegionPerPartitionAutoscale;
  /// Flag to indicate enabling/disabling of Priority Based Execution Preview feature on the account
  late final pulumi.Output<bool?> enablePriorityBasedExecution;
  /// An array that contains the regions ordered by their failover priorities.
  late final pulumi.Output<List<FailoverPolicyResponse>> failoverPolicies;
  /// Identity for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// A unique identifier assigned to the database account
  late final pulumi.Output<String> instanceId;
  /// List of IpRules.
  late final pulumi.Output<List<IpAddressOrRangeResponse>?> ipRules;
  /// Flag to indicate whether to enable/disable Virtual Network ACL rules.
  late final pulumi.Output<bool?> isVirtualNetworkFilterEnabled;
  /// The URI of the key vault
  late final pulumi.Output<String?> keyVaultKeyUri;
  /// The version of the Customer Managed Key currently being used by the account
  late final pulumi.Output<String> keyVaultKeyUriVersion;
  /// The object that represents the metadata for the Account Keys of the Cosmos DB account.
  late final pulumi.Output<DatabaseAccountKeysMetadataResponse> keysMetadata;
  /// Indicates the type of database account. This can only be set at database account creation.
  late final pulumi.Output<String?> kind;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// An array that contains all of the locations enabled for the Cosmos DB account.
  late final pulumi.Output<List<LocationResponse>> locations;
  /// Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
  late final pulumi.Output<String?> minimalTlsVersion;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  /// Indicates what services are allowed to bypass firewall checks.
  late final pulumi.Output<String?> networkAclBypass;
  /// An array that contains the Resource Ids for Network Acl Bypass for the Cosmos DB account.
  late final pulumi.Output<List<String>?> networkAclBypassResourceIds;
  /// List of Private Endpoint Connections configured for the Cosmos DB account.
  late final pulumi.Output<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation. 'DeletionFailed' – the Cosmos DB account deletion failed.
  late final pulumi.Output<String> provisioningState;
  /// Whether requests from Public Network are allowed
  late final pulumi.Output<String?> publicNetworkAccess;
  /// An array that contains of the read locations enabled for the Cosmos DB account.
  late final pulumi.Output<List<LocationResponse>> readLocations;
  /// Parameters to indicate the information about the restore.
  late final pulumi.Output<RestoreParametersResponse?> restoreParameters;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;
  /// List of Virtual Network ACL rules configured for the Cosmos DB account.
  late final pulumi.Output<List<VirtualNetworkRuleResponse>?> virtualNetworkRules;
  /// An array that contains the write location for the Cosmos DB account.
  late final pulumi.Output<List<LocationResponse>> writeLocations;

  /// Creates a new [DatabaseAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseAccount]. {@macro pulumi_cosmosdb_database_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseAccount(
    String name, {
    DatabaseAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:DatabaseAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    analyticalStorageConfiguration = registerOutput<AnalyticalStorageConfigurationResponse?>('analyticalStorageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticalStorageConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiProperties = registerOutput<ApiPropertiesResponse?>('apiProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupPolicy = registerOutput<dynamic>('backupPolicy');
    capabilities = registerOutput<List<CapabilityResponse>?>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapabilityResponse>(guardedValue, (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>())); });
    capacity = registerOutput<CapacityResponse?>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorOffer = registerOutput<String?>('connectorOffer');
    consistencyPolicy = registerOutput<ConsistencyPolicyResponse?>('consistencyPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConsistencyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<CorsPolicyResponse>?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CorsPolicyResponse>(guardedValue, (value) => CorsPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    createMode = registerOutput<String?>('createMode');
    customerManagedKeyStatus = registerOutput<String?>('customerManagedKeyStatus');
    databaseAccountOfferType = registerOutput<String>('databaseAccountOfferType');
    defaultIdentity = registerOutput<String?>('defaultIdentity');
    defaultPriorityLevel = registerOutput<String?>('defaultPriorityLevel');
    disableKeyBasedMetadataWriteAccess = registerOutput<bool?>('disableKeyBasedMetadataWriteAccess');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    documentEndpoint = registerOutput<String>('documentEndpoint');
    enableAnalyticalStorage = registerOutput<bool?>('enableAnalyticalStorage');
    enableAutomaticFailover = registerOutput<bool?>('enableAutomaticFailover');
    enableBurstCapacity = registerOutput<bool?>('enableBurstCapacity');
    enableCassandraConnector = registerOutput<bool?>('enableCassandraConnector');
    enableFreeTier = registerOutput<bool?>('enableFreeTier');
    enableMultipleWriteLocations = registerOutput<bool?>('enableMultipleWriteLocations');
    enablePartitionMerge = registerOutput<bool?>('enablePartitionMerge');
    enablePerRegionPerPartitionAutoscale = registerOutput<bool?>('enablePerRegionPerPartitionAutoscale');
    enablePriorityBasedExecution = registerOutput<bool?>('enablePriorityBasedExecution');
    failoverPolicies = registerOutput<List<FailoverPolicyResponse>>('failoverPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FailoverPolicyResponse>(guardedValue, (value) => FailoverPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    ipRules = registerOutput<List<IpAddressOrRangeResponse>?>('ipRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAddressOrRangeResponse>(guardedValue, (value) => IpAddressOrRangeResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isVirtualNetworkFilterEnabled = registerOutput<bool?>('isVirtualNetworkFilterEnabled');
    keyVaultKeyUri = registerOutput<String?>('keyVaultKeyUri');
    keyVaultKeyUriVersion = registerOutput<String>('keyVaultKeyUriVersion');
    keysMetadata = registerOutput<DatabaseAccountKeysMetadataResponse>('keysMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseAccountKeysMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    locations = registerOutput<List<LocationResponse>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    networkAclBypass = registerOutput<String?>('networkAclBypass');
    networkAclBypassResourceIds = registerOutput<List<String>?>('networkAclBypassResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    readLocations = registerOutput<List<LocationResponse>>('readLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    restoreParameters = registerOutput<RestoreParametersResponse?>('restoreParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualNetworkRules = registerOutput<List<VirtualNetworkRuleResponse>?>('virtualNetworkRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    writeLocations = registerOutput<List<LocationResponse>>('writeLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [DatabaseAccount] resource.
  DatabaseAccount.reference(String urn)
    : super(
        'azure-native:cosmosdb:DatabaseAccount',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    analyticalStorageConfiguration = registerOutput<AnalyticalStorageConfigurationResponse?>('analyticalStorageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticalStorageConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiProperties = registerOutput<ApiPropertiesResponse?>('apiProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupPolicy = registerOutput<dynamic>('backupPolicy');
    capabilities = registerOutput<List<CapabilityResponse>?>('capabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapabilityResponse>(guardedValue, (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>())); });
    capacity = registerOutput<CapacityResponse?>('capacity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorOffer = registerOutput<String?>('connectorOffer');
    consistencyPolicy = registerOutput<ConsistencyPolicyResponse?>('consistencyPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConsistencyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cors = registerOutput<List<CorsPolicyResponse>?>('cors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<CorsPolicyResponse>(guardedValue, (value) => CorsPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    createMode = registerOutput<String?>('createMode');
    customerManagedKeyStatus = registerOutput<String?>('customerManagedKeyStatus');
    databaseAccountOfferType = registerOutput<String>('databaseAccountOfferType');
    defaultIdentity = registerOutput<String?>('defaultIdentity');
    defaultPriorityLevel = registerOutput<String?>('defaultPriorityLevel');
    disableKeyBasedMetadataWriteAccess = registerOutput<bool?>('disableKeyBasedMetadataWriteAccess');
    disableLocalAuth = registerOutput<bool?>('disableLocalAuth');
    documentEndpoint = registerOutput<String>('documentEndpoint');
    enableAnalyticalStorage = registerOutput<bool?>('enableAnalyticalStorage');
    enableAutomaticFailover = registerOutput<bool?>('enableAutomaticFailover');
    enableBurstCapacity = registerOutput<bool?>('enableBurstCapacity');
    enableCassandraConnector = registerOutput<bool?>('enableCassandraConnector');
    enableFreeTier = registerOutput<bool?>('enableFreeTier');
    enableMultipleWriteLocations = registerOutput<bool?>('enableMultipleWriteLocations');
    enablePartitionMerge = registerOutput<bool?>('enablePartitionMerge');
    enablePerRegionPerPartitionAutoscale = registerOutput<bool?>('enablePerRegionPerPartitionAutoscale');
    enablePriorityBasedExecution = registerOutput<bool?>('enablePriorityBasedExecution');
    failoverPolicies = registerOutput<List<FailoverPolicyResponse>>('failoverPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FailoverPolicyResponse>(guardedValue, (value) => FailoverPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceId = registerOutput<String>('instanceId');
    ipRules = registerOutput<List<IpAddressOrRangeResponse>?>('ipRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAddressOrRangeResponse>(guardedValue, (value) => IpAddressOrRangeResponse.fromMap((value as Map).cast<String, dynamic>())); });
    isVirtualNetworkFilterEnabled = registerOutput<bool?>('isVirtualNetworkFilterEnabled');
    keyVaultKeyUri = registerOutput<String?>('keyVaultKeyUri');
    keyVaultKeyUriVersion = registerOutput<String>('keyVaultKeyUriVersion');
    keysMetadata = registerOutput<DatabaseAccountKeysMetadataResponse>('keysMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseAccountKeysMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String?>('location');
    locations = registerOutput<List<LocationResponse>>('locations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    networkAclBypass = registerOutput<String?>('networkAclBypass');
    networkAclBypassResourceIds = registerOutput<List<String>?>('networkAclBypassResourceIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    privateEndpointConnections = registerOutput<List<PrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    readLocations = registerOutput<List<LocationResponse>>('readLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    restoreParameters = registerOutput<RestoreParametersResponse?>('restoreParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RestoreParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    virtualNetworkRules = registerOutput<List<VirtualNetworkRuleResponse>?>('virtualNetworkRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    writeLocations = registerOutput<List<LocationResponse>>('writeLocations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocationResponse>(guardedValue, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
