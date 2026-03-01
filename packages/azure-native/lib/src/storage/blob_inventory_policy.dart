import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_inventory_policy_args.dart';
import 'blob_inventory_policy_schema_response.dart';
import 'system_data_response.dart';

/// The storage account blob inventory policy.
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-04-01, 2023-05-01, 2025-01-01, 2025-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native storage [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### StorageAccountSetBlobInventoryPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobInventoryPolicy = new AzureNative.Storage.BlobInventoryPolicy("blobInventoryPolicy", new()
///     {
///         AccountName = "sto9699",
///         BlobInventoryPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.BlobInventoryPolicySchemaArgs
///         {
///             Enabled = true,
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Filters = new AzureNative.Storage.Inputs.BlobInventoryPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                                 "appendBlob",
///                                 "pageBlob",
///                             },
///                             CreationTime = new AzureNative.Storage.Inputs.BlobInventoryCreationTimeArgs
///                             {
///                                 LastNDays = 1000,
///                             },
///                             IncludeBlobVersions = true,
///                             IncludeSnapshots = true,
///                             PrefixMatch = new[]
///                             {
///                                 "inventoryprefix1",
///                                 "inventoryprefix2",
///                             },
///                         },
///                         Format = AzureNative.Storage.Format.Csv,
///                         ObjectType = AzureNative.Storage.ObjectType.Blob,
///                         Schedule = AzureNative.Storage.Schedule.Daily,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Creation-Time",
///                             "Last-Modified",
///                             "Content-Length",
///                             "Content-MD5",
///                             "BlobType",
///                             "AccessTier",
///                             "AccessTierChangeTime",
///                             "Snapshot",
///                             "VersionId",
///                             "IsCurrentVersion",
///                             "Metadata",
///                         },
///                     },
///                     Destination = "container1",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule1",
///                 },
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Format = AzureNative.Storage.Format.Parquet,
///                         ObjectType = AzureNative.Storage.ObjectType.Container,
///                         Schedule = AzureNative.Storage.Schedule.Weekly,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Last-Modified",
///                             "Metadata",
///                             "LeaseStatus",
///                             "LeaseState",
///                             "LeaseDuration",
///                             "PublicAccess",
///                             "HasImmutabilityPolicy",
///                             "HasLegalHold",
///                         },
///                     },
///                     Destination = "container2",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule2",
///                 },
///             },
///             Type = AzureNative.Storage.InventoryRuleType.Inventory,
///         },
///         ResourceGroupName = "res7687",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobInventoryPolicy(ctx, "blobInventoryPolicy", &storage.BlobInventoryPolicyArgs{
/// 			AccountName:             pulumi.String("sto9699"),
/// 			BlobInventoryPolicyName: pulumi.String("default"),
/// 			Policy: &storage.BlobInventoryPolicySchemaArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Rules: storage.BlobInventoryPolicyRuleArray{
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Filters: &storage.BlobInventoryPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 									pulumi.String("appendBlob"),
/// 									pulumi.String("pageBlob"),
/// 								},
/// 								CreationTime: &storage.BlobInventoryCreationTimeArgs{
/// 									LastNDays: pulumi.Int(1000),
/// 								},
/// 								IncludeBlobVersions: pulumi.Bool(true),
/// 								IncludeSnapshots:    pulumi.Bool(true),
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("inventoryprefix1"),
/// 									pulumi.String("inventoryprefix2"),
/// 								},
/// 							},
/// 							Format:     pulumi.String(storage.FormatCsv),
/// 							ObjectType: pulumi.String(storage.ObjectTypeBlob),
/// 							Schedule:   pulumi.String(storage.ScheduleDaily),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Creation-Time"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Content-Length"),
/// 								pulumi.String("Content-MD5"),
/// 								pulumi.String("BlobType"),
/// 								pulumi.String("AccessTier"),
/// 								pulumi.String("AccessTierChangeTime"),
/// 								pulumi.String("Snapshot"),
/// 								pulumi.String("VersionId"),
/// 								pulumi.String("IsCurrentVersion"),
/// 								pulumi.String("Metadata"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container1"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule1"),
/// 					},
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Format:     pulumi.String(storage.FormatParquet),
/// 							ObjectType: pulumi.String(storage.ObjectTypeContainer),
/// 							Schedule:   pulumi.String(storage.ScheduleWeekly),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Metadata"),
/// 								pulumi.String("LeaseStatus"),
/// 								pulumi.String("LeaseState"),
/// 								pulumi.String("LeaseDuration"),
/// 								pulumi.String("PublicAccess"),
/// 								pulumi.String("HasImmutabilityPolicy"),
/// 								pulumi.String("HasLegalHold"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container2"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule2"),
/// 					},
/// 				},
/// 				Type: pulumi.String(storage.InventoryRuleTypeInventory),
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
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
/// import com.pulumi.azurenative.storage.BlobInventoryPolicy;
/// import com.pulumi.azurenative.storage.BlobInventoryPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.BlobInventoryPolicySchemaArgs;
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
///         var blobInventoryPolicy = new BlobInventoryPolicy("blobInventoryPolicy", BlobInventoryPolicyArgs.builder()
///             .accountName("sto9699")
///             .blobInventoryPolicyName("default")
///             .policy(BlobInventoryPolicySchemaArgs.builder()
///                 .enabled(true)
///                 .rules(
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .filters(BlobInventoryPolicyFilterArgs.builder()
///                                 .blobTypes(
///                                     "blockBlob",
///                                     "appendBlob",
///                                     "pageBlob")
///                                 .creationTime(BlobInventoryCreationTimeArgs.builder()
///                                     .lastNDays(1000)
///                                     .build())
///                                 .includeBlobVersions(true)
///                                 .includeSnapshots(true)
///                                 .prefixMatch(
///                                     "inventoryprefix1",
///                                     "inventoryprefix2")
///                                 .build())
///                             .format("Csv")
///                             .objectType("Blob")
///                             .schedule("Daily")
///                             .schemaFields(
///                                 "Name",
///                                 "Creation-Time",
///                                 "Last-Modified",
///                                 "Content-Length",
///                                 "Content-MD5",
///                                 "BlobType",
///                                 "AccessTier",
///                                 "AccessTierChangeTime",
///                                 "Snapshot",
///                                 "VersionId",
///                                 "IsCurrentVersion",
///                                 "Metadata")
///                             .build())
///                         .destination("container1")
///                         .enabled(true)
///                         .name("inventoryPolicyRule1")
///                         .build(),
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .format("Parquet")
///                             .objectType("Container")
///                             .schedule("Weekly")
///                             .schemaFields(
///                                 "Name",
///                                 "Last-Modified",
///                                 "Metadata",
///                                 "LeaseStatus",
///                                 "LeaseState",
///                                 "LeaseDuration",
///                                 "PublicAccess",
///                                 "HasImmutabilityPolicy",
///                                 "HasLegalHold")
///                             .build())
///                         .destination("container2")
///                         .enabled(true)
///                         .name("inventoryPolicyRule2")
///                         .build())
///                 .type("Inventory")
///                 .build())
///             .resourceGroupName("res7687")
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
/// const blobInventoryPolicy = new azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy", {
///     accountName: "sto9699",
///     blobInventoryPolicyName: "default",
///     policy: {
///         enabled: true,
///         rules: [
///             {
///                 definition: {
///                     filters: {
///                         blobTypes: [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         creationTime: {
///                             lastNDays: 1000,
///                         },
///                         includeBlobVersions: true,
///                         includeSnapshots: true,
///                         prefixMatch: [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     format: azure_native.storage.Format.Csv,
///                     objectType: azure_native.storage.ObjectType.Blob,
///                     schedule: azure_native.storage.Schedule.Daily,
///                     schemaFields: [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "Metadata",
///                     ],
///                 },
///                 destination: "container1",
///                 enabled: true,
///                 name: "inventoryPolicyRule1",
///             },
///             {
///                 definition: {
///                     format: azure_native.storage.Format.Parquet,
///                     objectType: azure_native.storage.ObjectType.Container,
///                     schedule: azure_native.storage.Schedule.Weekly,
///                     schemaFields: [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                     ],
///                 },
///                 destination: "container2",
///                 enabled: true,
///                 name: "inventoryPolicyRule2",
///             },
///         ],
///         type: azure_native.storage.InventoryRuleType.Inventory,
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_inventory_policy = azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy",
///     account_name="sto9699",
///     blob_inventory_policy_name="default",
///     policy={
///         "enabled": True,
///         "rules": [
///             {
///                 "definition": {
///                     "filters": {
///                         "blob_types": [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         "creation_time": {
///                             "last_n_days": 1000,
///                         },
///                         "include_blob_versions": True,
///                         "include_snapshots": True,
///                         "prefix_match": [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     "format": azure_native.storage.Format.CSV,
///                     "object_type": azure_native.storage.ObjectType.BLOB,
///                     "schedule": azure_native.storage.Schedule.DAILY,
///                     "schema_fields": [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "Metadata",
///                     ],
///                 },
///                 "destination": "container1",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule1",
///             },
///             {
///                 "definition": {
///                     "format": azure_native.storage.Format.PARQUET,
///                     "object_type": azure_native.storage.ObjectType.CONTAINER,
///                     "schedule": azure_native.storage.Schedule.WEEKLY,
///                     "schema_fields": [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                     ],
///                 },
///                 "destination": "container2",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule2",
///             },
///         ],
///         "type": azure_native.storage.InventoryRuleType.INVENTORY,
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   blobInventoryPolicy:
///     type: azure-native:storage:BlobInventoryPolicy
///     properties:
///       accountName: sto9699
///       blobInventoryPolicyName: default
///       policy:
///         enabled: true
///         rules:
///           - definition:
///               filters:
///                 blobTypes:
///                   - blockBlob
///                   - appendBlob
///                   - pageBlob
///                 creationTime:
///                   lastNDays: 1000
///                 includeBlobVersions: true
///                 includeSnapshots: true
///                 prefixMatch:
///                   - inventoryprefix1
///                   - inventoryprefix2
///               format: Csv
///               objectType: Blob
///               schedule: Daily
///               schemaFields:
///                 - Name
///                 - Creation-Time
///                 - Last-Modified
///                 - Content-Length
///                 - Content-MD5
///                 - BlobType
///                 - AccessTier
///                 - AccessTierChangeTime
///                 - Snapshot
///                 - VersionId
///                 - IsCurrentVersion
///                 - Metadata
///             destination: container1
///             enabled: true
///             name: inventoryPolicyRule1
///           - definition:
///               format: Parquet
///               objectType: Container
///               schedule: Weekly
///               schemaFields:
///                 - Name
///                 - Last-Modified
///                 - Metadata
///                 - LeaseStatus
///                 - LeaseState
///                 - LeaseDuration
///                 - PublicAccess
///                 - HasImmutabilityPolicy
///                 - HasLegalHold
///             destination: container2
///             enabled: true
///             name: inventoryPolicyRule2
///         type: Inventory
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetBlobInventoryPolicyIncludeDeleteAndNewSchemaForHnsAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobInventoryPolicy = new AzureNative.Storage.BlobInventoryPolicy("blobInventoryPolicy", new()
///     {
///         AccountName = "sto9699",
///         BlobInventoryPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.BlobInventoryPolicySchemaArgs
///         {
///             Enabled = true,
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Filters = new AzureNative.Storage.Inputs.BlobInventoryPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                                 "appendBlob",
///                                 "pageBlob",
///                             },
///                             ExcludePrefix = new[]
///                             {
///                                 "excludeprefix1",
///                                 "excludeprefix2",
///                             },
///                             IncludeBlobVersions = true,
///                             IncludeDeleted = true,
///                             IncludeSnapshots = true,
///                             PrefixMatch = new[]
///                             {
///                                 "inventoryprefix1",
///                                 "inventoryprefix2",
///                             },
///                         },
///                         Format = AzureNative.Storage.Format.Csv,
///                         ObjectType = AzureNative.Storage.ObjectType.Blob,
///                         Schedule = AzureNative.Storage.Schedule.Daily,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Creation-Time",
///                             "Last-Modified",
///                             "Content-Length",
///                             "Content-MD5",
///                             "BlobType",
///                             "AccessTier",
///                             "AccessTierChangeTime",
///                             "Snapshot",
///                             "VersionId",
///                             "IsCurrentVersion",
///                             "ContentType",
///                             "ContentEncoding",
///                             "ContentLanguage",
///                             "ContentCRC64",
///                             "CacheControl",
///                             "Metadata",
///                             "DeletionId",
///                             "Deleted",
///                             "DeletedTime",
///                             "RemainingRetentionDays",
///                         },
///                     },
///                     Destination = "container1",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule1",
///                 },
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Format = AzureNative.Storage.Format.Parquet,
///                         ObjectType = AzureNative.Storage.ObjectType.Container,
///                         Schedule = AzureNative.Storage.Schedule.Weekly,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Last-Modified",
///                             "Metadata",
///                             "LeaseStatus",
///                             "LeaseState",
///                             "LeaseDuration",
///                             "PublicAccess",
///                             "HasImmutabilityPolicy",
///                             "HasLegalHold",
///                             "Etag",
///                             "DefaultEncryptionScope",
///                             "DenyEncryptionScopeOverride",
///                             "ImmutableStorageWithVersioningEnabled",
///                             "Deleted",
///                             "Version",
///                             "DeletedTime",
///                             "RemainingRetentionDays",
///                         },
///                     },
///                     Destination = "container2",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule2",
///                 },
///             },
///             Type = AzureNative.Storage.InventoryRuleType.Inventory,
///         },
///         ResourceGroupName = "res7687",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobInventoryPolicy(ctx, "blobInventoryPolicy", &storage.BlobInventoryPolicyArgs{
/// 			AccountName:             pulumi.String("sto9699"),
/// 			BlobInventoryPolicyName: pulumi.String("default"),
/// 			Policy: &storage.BlobInventoryPolicySchemaArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Rules: storage.BlobInventoryPolicyRuleArray{
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Filters: &storage.BlobInventoryPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 									pulumi.String("appendBlob"),
/// 									pulumi.String("pageBlob"),
/// 								},
/// 								ExcludePrefix: pulumi.StringArray{
/// 									pulumi.String("excludeprefix1"),
/// 									pulumi.String("excludeprefix2"),
/// 								},
/// 								IncludeBlobVersions: pulumi.Bool(true),
/// 								IncludeDeleted:      pulumi.Bool(true),
/// 								IncludeSnapshots:    pulumi.Bool(true),
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("inventoryprefix1"),
/// 									pulumi.String("inventoryprefix2"),
/// 								},
/// 							},
/// 							Format:     pulumi.String(storage.FormatCsv),
/// 							ObjectType: pulumi.String(storage.ObjectTypeBlob),
/// 							Schedule:   pulumi.String(storage.ScheduleDaily),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Creation-Time"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Content-Length"),
/// 								pulumi.String("Content-MD5"),
/// 								pulumi.String("BlobType"),
/// 								pulumi.String("AccessTier"),
/// 								pulumi.String("AccessTierChangeTime"),
/// 								pulumi.String("Snapshot"),
/// 								pulumi.String("VersionId"),
/// 								pulumi.String("IsCurrentVersion"),
/// 								pulumi.String("ContentType"),
/// 								pulumi.String("ContentEncoding"),
/// 								pulumi.String("ContentLanguage"),
/// 								pulumi.String("ContentCRC64"),
/// 								pulumi.String("CacheControl"),
/// 								pulumi.String("Metadata"),
/// 								pulumi.String("DeletionId"),
/// 								pulumi.String("Deleted"),
/// 								pulumi.String("DeletedTime"),
/// 								pulumi.String("RemainingRetentionDays"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container1"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule1"),
/// 					},
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Format:     pulumi.String(storage.FormatParquet),
/// 							ObjectType: pulumi.String(storage.ObjectTypeContainer),
/// 							Schedule:   pulumi.String(storage.ScheduleWeekly),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Metadata"),
/// 								pulumi.String("LeaseStatus"),
/// 								pulumi.String("LeaseState"),
/// 								pulumi.String("LeaseDuration"),
/// 								pulumi.String("PublicAccess"),
/// 								pulumi.String("HasImmutabilityPolicy"),
/// 								pulumi.String("HasLegalHold"),
/// 								pulumi.String("Etag"),
/// 								pulumi.String("DefaultEncryptionScope"),
/// 								pulumi.String("DenyEncryptionScopeOverride"),
/// 								pulumi.String("ImmutableStorageWithVersioningEnabled"),
/// 								pulumi.String("Deleted"),
/// 								pulumi.String("Version"),
/// 								pulumi.String("DeletedTime"),
/// 								pulumi.String("RemainingRetentionDays"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container2"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule2"),
/// 					},
/// 				},
/// 				Type: pulumi.String(storage.InventoryRuleTypeInventory),
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
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
/// import com.pulumi.azurenative.storage.BlobInventoryPolicy;
/// import com.pulumi.azurenative.storage.BlobInventoryPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.BlobInventoryPolicySchemaArgs;
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
///         var blobInventoryPolicy = new BlobInventoryPolicy("blobInventoryPolicy", BlobInventoryPolicyArgs.builder()
///             .accountName("sto9699")
///             .blobInventoryPolicyName("default")
///             .policy(BlobInventoryPolicySchemaArgs.builder()
///                 .enabled(true)
///                 .rules(
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .filters(BlobInventoryPolicyFilterArgs.builder()
///                                 .blobTypes(
///                                     "blockBlob",
///                                     "appendBlob",
///                                     "pageBlob")
///                                 .excludePrefix(
///                                     "excludeprefix1",
///                                     "excludeprefix2")
///                                 .includeBlobVersions(true)
///                                 .includeDeleted(true)
///                                 .includeSnapshots(true)
///                                 .prefixMatch(
///                                     "inventoryprefix1",
///                                     "inventoryprefix2")
///                                 .build())
///                             .format("Csv")
///                             .objectType("Blob")
///                             .schedule("Daily")
///                             .schemaFields(
///                                 "Name",
///                                 "Creation-Time",
///                                 "Last-Modified",
///                                 "Content-Length",
///                                 "Content-MD5",
///                                 "BlobType",
///                                 "AccessTier",
///                                 "AccessTierChangeTime",
///                                 "Snapshot",
///                                 "VersionId",
///                                 "IsCurrentVersion",
///                                 "ContentType",
///                                 "ContentEncoding",
///                                 "ContentLanguage",
///                                 "ContentCRC64",
///                                 "CacheControl",
///                                 "Metadata",
///                                 "DeletionId",
///                                 "Deleted",
///                                 "DeletedTime",
///                                 "RemainingRetentionDays")
///                             .build())
///                         .destination("container1")
///                         .enabled(true)
///                         .name("inventoryPolicyRule1")
///                         .build(),
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .format("Parquet")
///                             .objectType("Container")
///                             .schedule("Weekly")
///                             .schemaFields(
///                                 "Name",
///                                 "Last-Modified",
///                                 "Metadata",
///                                 "LeaseStatus",
///                                 "LeaseState",
///                                 "LeaseDuration",
///                                 "PublicAccess",
///                                 "HasImmutabilityPolicy",
///                                 "HasLegalHold",
///                                 "Etag",
///                                 "DefaultEncryptionScope",
///                                 "DenyEncryptionScopeOverride",
///                                 "ImmutableStorageWithVersioningEnabled",
///                                 "Deleted",
///                                 "Version",
///                                 "DeletedTime",
///                                 "RemainingRetentionDays")
///                             .build())
///                         .destination("container2")
///                         .enabled(true)
///                         .name("inventoryPolicyRule2")
///                         .build())
///                 .type("Inventory")
///                 .build())
///             .resourceGroupName("res7687")
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
/// const blobInventoryPolicy = new azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy", {
///     accountName: "sto9699",
///     blobInventoryPolicyName: "default",
///     policy: {
///         enabled: true,
///         rules: [
///             {
///                 definition: {
///                     filters: {
///                         blobTypes: [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         excludePrefix: [
///                             "excludeprefix1",
///                             "excludeprefix2",
///                         ],
///                         includeBlobVersions: true,
///                         includeDeleted: true,
///                         includeSnapshots: true,
///                         prefixMatch: [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     format: azure_native.storage.Format.Csv,
///                     objectType: azure_native.storage.ObjectType.Blob,
///                     schedule: azure_native.storage.Schedule.Daily,
///                     schemaFields: [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "ContentType",
///                         "ContentEncoding",
///                         "ContentLanguage",
///                         "ContentCRC64",
///                         "CacheControl",
///                         "Metadata",
///                         "DeletionId",
///                         "Deleted",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 destination: "container1",
///                 enabled: true,
///                 name: "inventoryPolicyRule1",
///             },
///             {
///                 definition: {
///                     format: azure_native.storage.Format.Parquet,
///                     objectType: azure_native.storage.ObjectType.Container,
///                     schedule: azure_native.storage.Schedule.Weekly,
///                     schemaFields: [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                         "Etag",
///                         "DefaultEncryptionScope",
///                         "DenyEncryptionScopeOverride",
///                         "ImmutableStorageWithVersioningEnabled",
///                         "Deleted",
///                         "Version",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 destination: "container2",
///                 enabled: true,
///                 name: "inventoryPolicyRule2",
///             },
///         ],
///         type: azure_native.storage.InventoryRuleType.Inventory,
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_inventory_policy = azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy",
///     account_name="sto9699",
///     blob_inventory_policy_name="default",
///     policy={
///         "enabled": True,
///         "rules": [
///             {
///                 "definition": {
///                     "filters": {
///                         "blob_types": [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         "exclude_prefix": [
///                             "excludeprefix1",
///                             "excludeprefix2",
///                         ],
///                         "include_blob_versions": True,
///                         "include_deleted": True,
///                         "include_snapshots": True,
///                         "prefix_match": [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     "format": azure_native.storage.Format.CSV,
///                     "object_type": azure_native.storage.ObjectType.BLOB,
///                     "schedule": azure_native.storage.Schedule.DAILY,
///                     "schema_fields": [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "ContentType",
///                         "ContentEncoding",
///                         "ContentLanguage",
///                         "ContentCRC64",
///                         "CacheControl",
///                         "Metadata",
///                         "DeletionId",
///                         "Deleted",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 "destination": "container1",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule1",
///             },
///             {
///                 "definition": {
///                     "format": azure_native.storage.Format.PARQUET,
///                     "object_type": azure_native.storage.ObjectType.CONTAINER,
///                     "schedule": azure_native.storage.Schedule.WEEKLY,
///                     "schema_fields": [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                         "Etag",
///                         "DefaultEncryptionScope",
///                         "DenyEncryptionScopeOverride",
///                         "ImmutableStorageWithVersioningEnabled",
///                         "Deleted",
///                         "Version",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 "destination": "container2",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule2",
///             },
///         ],
///         "type": azure_native.storage.InventoryRuleType.INVENTORY,
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   blobInventoryPolicy:
///     type: azure-native:storage:BlobInventoryPolicy
///     properties:
///       accountName: sto9699
///       blobInventoryPolicyName: default
///       policy:
///         enabled: true
///         rules:
///           - definition:
///               filters:
///                 blobTypes:
///                   - blockBlob
///                   - appendBlob
///                   - pageBlob
///                 excludePrefix:
///                   - excludeprefix1
///                   - excludeprefix2
///                 includeBlobVersions: true
///                 includeDeleted: true
///                 includeSnapshots: true
///                 prefixMatch:
///                   - inventoryprefix1
///                   - inventoryprefix2
///               format: Csv
///               objectType: Blob
///               schedule: Daily
///               schemaFields:
///                 - Name
///                 - Creation-Time
///                 - Last-Modified
///                 - Content-Length
///                 - Content-MD5
///                 - BlobType
///                 - AccessTier
///                 - AccessTierChangeTime
///                 - Snapshot
///                 - VersionId
///                 - IsCurrentVersion
///                 - ContentType
///                 - ContentEncoding
///                 - ContentLanguage
///                 - ContentCRC64
///                 - CacheControl
///                 - Metadata
///                 - DeletionId
///                 - Deleted
///                 - DeletedTime
///                 - RemainingRetentionDays
///             destination: container1
///             enabled: true
///             name: inventoryPolicyRule1
///           - definition:
///               format: Parquet
///               objectType: Container
///               schedule: Weekly
///               schemaFields:
///                 - Name
///                 - Last-Modified
///                 - Metadata
///                 - LeaseStatus
///                 - LeaseState
///                 - LeaseDuration
///                 - PublicAccess
///                 - HasImmutabilityPolicy
///                 - HasLegalHold
///                 - Etag
///                 - DefaultEncryptionScope
///                 - DenyEncryptionScopeOverride
///                 - ImmutableStorageWithVersioningEnabled
///                 - Deleted
///                 - Version
///                 - DeletedTime
///                 - RemainingRetentionDays
///             destination: container2
///             enabled: true
///             name: inventoryPolicyRule2
///         type: Inventory
///       resourceGroupName: res7687
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### StorageAccountSetBlobInventoryPolicyIncludeDeleteAndNewSchemaForNonHnsAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var blobInventoryPolicy = new AzureNative.Storage.BlobInventoryPolicy("blobInventoryPolicy", new()
///     {
///         AccountName = "sto9699",
///         BlobInventoryPolicyName = "default",
///         Policy = new AzureNative.Storage.Inputs.BlobInventoryPolicySchemaArgs
///         {
///             Enabled = true,
///             Rules = new[]
///             {
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Filters = new AzureNative.Storage.Inputs.BlobInventoryPolicyFilterArgs
///                         {
///                             BlobTypes = new[]
///                             {
///                                 "blockBlob",
///                                 "appendBlob",
///                                 "pageBlob",
///                             },
///                             ExcludePrefix = new[]
///                             {
///                                 "excludeprefix1",
///                                 "excludeprefix2",
///                             },
///                             IncludeBlobVersions = true,
///                             IncludeDeleted = true,
///                             IncludeSnapshots = true,
///                             PrefixMatch = new[]
///                             {
///                                 "inventoryprefix1",
///                                 "inventoryprefix2",
///                             },
///                         },
///                         Format = AzureNative.Storage.Format.Csv,
///                         ObjectType = AzureNative.Storage.ObjectType.Blob,
///                         Schedule = AzureNative.Storage.Schedule.Daily,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Creation-Time",
///                             "Last-Modified",
///                             "Content-Length",
///                             "Content-MD5",
///                             "BlobType",
///                             "AccessTier",
///                             "AccessTierChangeTime",
///                             "Snapshot",
///                             "VersionId",
///                             "IsCurrentVersion",
///                             "Tags",
///                             "ContentType",
///                             "ContentEncoding",
///                             "ContentLanguage",
///                             "ContentCRC64",
///                             "CacheControl",
///                             "Metadata",
///                             "Deleted",
///                             "RemainingRetentionDays",
///                         },
///                     },
///                     Destination = "container1",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule1",
///                 },
///                 new AzureNative.Storage.Inputs.BlobInventoryPolicyRuleArgs
///                 {
///                     Definition = new AzureNative.Storage.Inputs.BlobInventoryPolicyDefinitionArgs
///                     {
///                         Format = AzureNative.Storage.Format.Parquet,
///                         ObjectType = AzureNative.Storage.ObjectType.Container,
///                         Schedule = AzureNative.Storage.Schedule.Weekly,
///                         SchemaFields = new[]
///                         {
///                             "Name",
///                             "Last-Modified",
///                             "Metadata",
///                             "LeaseStatus",
///                             "LeaseState",
///                             "LeaseDuration",
///                             "PublicAccess",
///                             "HasImmutabilityPolicy",
///                             "HasLegalHold",
///                             "Etag",
///                             "DefaultEncryptionScope",
///                             "DenyEncryptionScopeOverride",
///                             "ImmutableStorageWithVersioningEnabled",
///                             "Deleted",
///                             "Version",
///                             "DeletedTime",
///                             "RemainingRetentionDays",
///                         },
///                     },
///                     Destination = "container2",
///                     Enabled = true,
///                     Name = "inventoryPolicyRule2",
///                 },
///             },
///             Type = AzureNative.Storage.InventoryRuleType.Inventory,
///         },
///         ResourceGroupName = "res7687",
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
/// 	storage "github.com/pulumi/pulumi-azure-native-sdk/storage/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storage.NewBlobInventoryPolicy(ctx, "blobInventoryPolicy", &storage.BlobInventoryPolicyArgs{
/// 			AccountName:             pulumi.String("sto9699"),
/// 			BlobInventoryPolicyName: pulumi.String("default"),
/// 			Policy: &storage.BlobInventoryPolicySchemaArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Rules: storage.BlobInventoryPolicyRuleArray{
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Filters: &storage.BlobInventoryPolicyFilterArgs{
/// 								BlobTypes: pulumi.StringArray{
/// 									pulumi.String("blockBlob"),
/// 									pulumi.String("appendBlob"),
/// 									pulumi.String("pageBlob"),
/// 								},
/// 								ExcludePrefix: pulumi.StringArray{
/// 									pulumi.String("excludeprefix1"),
/// 									pulumi.String("excludeprefix2"),
/// 								},
/// 								IncludeBlobVersions: pulumi.Bool(true),
/// 								IncludeDeleted:      pulumi.Bool(true),
/// 								IncludeSnapshots:    pulumi.Bool(true),
/// 								PrefixMatch: pulumi.StringArray{
/// 									pulumi.String("inventoryprefix1"),
/// 									pulumi.String("inventoryprefix2"),
/// 								},
/// 							},
/// 							Format:     pulumi.String(storage.FormatCsv),
/// 							ObjectType: pulumi.String(storage.ObjectTypeBlob),
/// 							Schedule:   pulumi.String(storage.ScheduleDaily),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Creation-Time"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Content-Length"),
/// 								pulumi.String("Content-MD5"),
/// 								pulumi.String("BlobType"),
/// 								pulumi.String("AccessTier"),
/// 								pulumi.String("AccessTierChangeTime"),
/// 								pulumi.String("Snapshot"),
/// 								pulumi.String("VersionId"),
/// 								pulumi.String("IsCurrentVersion"),
/// 								pulumi.String("Tags"),
/// 								pulumi.String("ContentType"),
/// 								pulumi.String("ContentEncoding"),
/// 								pulumi.String("ContentLanguage"),
/// 								pulumi.String("ContentCRC64"),
/// 								pulumi.String("CacheControl"),
/// 								pulumi.String("Metadata"),
/// 								pulumi.String("Deleted"),
/// 								pulumi.String("RemainingRetentionDays"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container1"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule1"),
/// 					},
/// 					&storage.BlobInventoryPolicyRuleArgs{
/// 						Definition: &storage.BlobInventoryPolicyDefinitionArgs{
/// 							Format:     pulumi.String(storage.FormatParquet),
/// 							ObjectType: pulumi.String(storage.ObjectTypeContainer),
/// 							Schedule:   pulumi.String(storage.ScheduleWeekly),
/// 							SchemaFields: pulumi.StringArray{
/// 								pulumi.String("Name"),
/// 								pulumi.String("Last-Modified"),
/// 								pulumi.String("Metadata"),
/// 								pulumi.String("LeaseStatus"),
/// 								pulumi.String("LeaseState"),
/// 								pulumi.String("LeaseDuration"),
/// 								pulumi.String("PublicAccess"),
/// 								pulumi.String("HasImmutabilityPolicy"),
/// 								pulumi.String("HasLegalHold"),
/// 								pulumi.String("Etag"),
/// 								pulumi.String("DefaultEncryptionScope"),
/// 								pulumi.String("DenyEncryptionScopeOverride"),
/// 								pulumi.String("ImmutableStorageWithVersioningEnabled"),
/// 								pulumi.String("Deleted"),
/// 								pulumi.String("Version"),
/// 								pulumi.String("DeletedTime"),
/// 								pulumi.String("RemainingRetentionDays"),
/// 							},
/// 						},
/// 						Destination: pulumi.String("container2"),
/// 						Enabled:     pulumi.Bool(true),
/// 						Name:        pulumi.String("inventoryPolicyRule2"),
/// 					},
/// 				},
/// 				Type: pulumi.String(storage.InventoryRuleTypeInventory),
/// 			},
/// 			ResourceGroupName: pulumi.String("res7687"),
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
/// import com.pulumi.azurenative.storage.BlobInventoryPolicy;
/// import com.pulumi.azurenative.storage.BlobInventoryPolicyArgs;
/// import com.pulumi.azurenative.storage.inputs.BlobInventoryPolicySchemaArgs;
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
///         var blobInventoryPolicy = new BlobInventoryPolicy("blobInventoryPolicy", BlobInventoryPolicyArgs.builder()
///             .accountName("sto9699")
///             .blobInventoryPolicyName("default")
///             .policy(BlobInventoryPolicySchemaArgs.builder()
///                 .enabled(true)
///                 .rules(
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .filters(BlobInventoryPolicyFilterArgs.builder()
///                                 .blobTypes(
///                                     "blockBlob",
///                                     "appendBlob",
///                                     "pageBlob")
///                                 .excludePrefix(
///                                     "excludeprefix1",
///                                     "excludeprefix2")
///                                 .includeBlobVersions(true)
///                                 .includeDeleted(true)
///                                 .includeSnapshots(true)
///                                 .prefixMatch(
///                                     "inventoryprefix1",
///                                     "inventoryprefix2")
///                                 .build())
///                             .format("Csv")
///                             .objectType("Blob")
///                             .schedule("Daily")
///                             .schemaFields(
///                                 "Name",
///                                 "Creation-Time",
///                                 "Last-Modified",
///                                 "Content-Length",
///                                 "Content-MD5",
///                                 "BlobType",
///                                 "AccessTier",
///                                 "AccessTierChangeTime",
///                                 "Snapshot",
///                                 "VersionId",
///                                 "IsCurrentVersion",
///                                 "Tags",
///                                 "ContentType",
///                                 "ContentEncoding",
///                                 "ContentLanguage",
///                                 "ContentCRC64",
///                                 "CacheControl",
///                                 "Metadata",
///                                 "Deleted",
///                                 "RemainingRetentionDays")
///                             .build())
///                         .destination("container1")
///                         .enabled(true)
///                         .name("inventoryPolicyRule1")
///                         .build(),
///                     BlobInventoryPolicyRuleArgs.builder()
///                         .definition(BlobInventoryPolicyDefinitionArgs.builder()
///                             .format("Parquet")
///                             .objectType("Container")
///                             .schedule("Weekly")
///                             .schemaFields(
///                                 "Name",
///                                 "Last-Modified",
///                                 "Metadata",
///                                 "LeaseStatus",
///                                 "LeaseState",
///                                 "LeaseDuration",
///                                 "PublicAccess",
///                                 "HasImmutabilityPolicy",
///                                 "HasLegalHold",
///                                 "Etag",
///                                 "DefaultEncryptionScope",
///                                 "DenyEncryptionScopeOverride",
///                                 "ImmutableStorageWithVersioningEnabled",
///                                 "Deleted",
///                                 "Version",
///                                 "DeletedTime",
///                                 "RemainingRetentionDays")
///                             .build())
///                         .destination("container2")
///                         .enabled(true)
///                         .name("inventoryPolicyRule2")
///                         .build())
///                 .type("Inventory")
///                 .build())
///             .resourceGroupName("res7687")
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
/// const blobInventoryPolicy = new azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy", {
///     accountName: "sto9699",
///     blobInventoryPolicyName: "default",
///     policy: {
///         enabled: true,
///         rules: [
///             {
///                 definition: {
///                     filters: {
///                         blobTypes: [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         excludePrefix: [
///                             "excludeprefix1",
///                             "excludeprefix2",
///                         ],
///                         includeBlobVersions: true,
///                         includeDeleted: true,
///                         includeSnapshots: true,
///                         prefixMatch: [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     format: azure_native.storage.Format.Csv,
///                     objectType: azure_native.storage.ObjectType.Blob,
///                     schedule: azure_native.storage.Schedule.Daily,
///                     schemaFields: [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "Tags",
///                         "ContentType",
///                         "ContentEncoding",
///                         "ContentLanguage",
///                         "ContentCRC64",
///                         "CacheControl",
///                         "Metadata",
///                         "Deleted",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 destination: "container1",
///                 enabled: true,
///                 name: "inventoryPolicyRule1",
///             },
///             {
///                 definition: {
///                     format: azure_native.storage.Format.Parquet,
///                     objectType: azure_native.storage.ObjectType.Container,
///                     schedule: azure_native.storage.Schedule.Weekly,
///                     schemaFields: [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                         "Etag",
///                         "DefaultEncryptionScope",
///                         "DenyEncryptionScopeOverride",
///                         "ImmutableStorageWithVersioningEnabled",
///                         "Deleted",
///                         "Version",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 destination: "container2",
///                 enabled: true,
///                 name: "inventoryPolicyRule2",
///             },
///         ],
///         type: azure_native.storage.InventoryRuleType.Inventory,
///     },
///     resourceGroupName: "res7687",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// blob_inventory_policy = azure_native.storage.BlobInventoryPolicy("blobInventoryPolicy",
///     account_name="sto9699",
///     blob_inventory_policy_name="default",
///     policy={
///         "enabled": True,
///         "rules": [
///             {
///                 "definition": {
///                     "filters": {
///                         "blob_types": [
///                             "blockBlob",
///                             "appendBlob",
///                             "pageBlob",
///                         ],
///                         "exclude_prefix": [
///                             "excludeprefix1",
///                             "excludeprefix2",
///                         ],
///                         "include_blob_versions": True,
///                         "include_deleted": True,
///                         "include_snapshots": True,
///                         "prefix_match": [
///                             "inventoryprefix1",
///                             "inventoryprefix2",
///                         ],
///                     },
///                     "format": azure_native.storage.Format.CSV,
///                     "object_type": azure_native.storage.ObjectType.BLOB,
///                     "schedule": azure_native.storage.Schedule.DAILY,
///                     "schema_fields": [
///                         "Name",
///                         "Creation-Time",
///                         "Last-Modified",
///                         "Content-Length",
///                         "Content-MD5",
///                         "BlobType",
///                         "AccessTier",
///                         "AccessTierChangeTime",
///                         "Snapshot",
///                         "VersionId",
///                         "IsCurrentVersion",
///                         "Tags",
///                         "ContentType",
///                         "ContentEncoding",
///                         "ContentLanguage",
///                         "ContentCRC64",
///                         "CacheControl",
///                         "Metadata",
///                         "Deleted",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 "destination": "container1",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule1",
///             },
///             {
///                 "definition": {
///                     "format": azure_native.storage.Format.PARQUET,
///                     "object_type": azure_native.storage.ObjectType.CONTAINER,
///                     "schedule": azure_native.storage.Schedule.WEEKLY,
///                     "schema_fields": [
///                         "Name",
///                         "Last-Modified",
///                         "Metadata",
///                         "LeaseStatus",
///                         "LeaseState",
///                         "LeaseDuration",
///                         "PublicAccess",
///                         "HasImmutabilityPolicy",
///                         "HasLegalHold",
///                         "Etag",
///                         "DefaultEncryptionScope",
///                         "DenyEncryptionScopeOverride",
///                         "ImmutableStorageWithVersioningEnabled",
///                         "Deleted",
///                         "Version",
///                         "DeletedTime",
///                         "RemainingRetentionDays",
///                     ],
///                 },
///                 "destination": "container2",
///                 "enabled": True,
///                 "name": "inventoryPolicyRule2",
///             },
///         ],
///         "type": azure_native.storage.InventoryRuleType.INVENTORY,
///     },
///     resource_group_name="res7687")
///
/// ```
///
/// ```yaml
/// resources:
///   blobInventoryPolicy:
///     type: azure-native:storage:BlobInventoryPolicy
///     properties:
///       accountName: sto9699
///       blobInventoryPolicyName: default
///       policy:
///         enabled: true
///         rules:
///           - definition:
///               filters:
///                 blobTypes:
///                   - blockBlob
///                   - appendBlob
///                   - pageBlob
///                 excludePrefix:
///                   - excludeprefix1
///                   - excludeprefix2
///                 includeBlobVersions: true
///                 includeDeleted: true
///                 includeSnapshots: true
///                 prefixMatch:
///                   - inventoryprefix1
///                   - inventoryprefix2
///               format: Csv
///               objectType: Blob
///               schedule: Daily
///               schemaFields:
///                 - Name
///                 - Creation-Time
///                 - Last-Modified
///                 - Content-Length
///                 - Content-MD5
///                 - BlobType
///                 - AccessTier
///                 - AccessTierChangeTime
///                 - Snapshot
///                 - VersionId
///                 - IsCurrentVersion
///                 - Tags
///                 - ContentType
///                 - ContentEncoding
///                 - ContentLanguage
///                 - ContentCRC64
///                 - CacheControl
///                 - Metadata
///                 - Deleted
///                 - RemainingRetentionDays
///             destination: container1
///             enabled: true
///             name: inventoryPolicyRule1
///           - definition:
///               format: Parquet
///               objectType: Container
///               schedule: Weekly
///               schemaFields:
///                 - Name
///                 - Last-Modified
///                 - Metadata
///                 - LeaseStatus
///                 - LeaseState
///                 - LeaseDuration
///                 - PublicAccess
///                 - HasImmutabilityPolicy
///                 - HasLegalHold
///                 - Etag
///                 - DefaultEncryptionScope
///                 - DenyEncryptionScopeOverride
///                 - ImmutableStorageWithVersioningEnabled
///                 - Deleted
///                 - Version
///                 - DeletedTime
///                 - RemainingRetentionDays
///             destination: container2
///             enabled: true
///             name: inventoryPolicyRule2
///         type: Inventory
///       resourceGroupName: res7687
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
/// $ pulumi import azure-native:storage:BlobInventoryPolicy DefaultInventoryPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Storage/storageAccounts/{accountName}/inventoryPolicies/{blobInventoryPolicyName}
/// ```
class BlobInventoryPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Returns the last modified date and time of the blob inventory policy.
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The storage account blob inventory policy object. It is composed of policy rules.
  late final pulumi.Output<BlobInventoryPolicySchemaResponse> policy;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [BlobInventoryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BlobInventoryPolicy]. {@macro pulumi_storage_blob_inventory_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BlobInventoryPolicy(
    String name, {
    BlobInventoryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:storage:BlobInventoryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<BlobInventoryPolicySchemaResponse>('policy');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
