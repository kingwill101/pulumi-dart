import 'package:pulumi/pulumi.dart' as pulumi;
import 'exascale_database_storage_vault_args.dart';
import 'exascale_database_storage_vault_high_capacity_database_storage.dart';

/// Manages an Exadata Database Storage Vault.
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
/// const exampleExascaleDatabaseStorageVault = new azure.oracle.ExascaleDatabaseStorageVault("example", {
///     name: "example-exascale-db-storage-vault",
///     resourceGroupName: example.name,
///     location: example.location,
///     zones: ["1"],
///     displayName: "example-exascale-db-storage-vault",
///     description: "description",
///     additionalFlashCachePercentage: 100,
///     highCapacityDatabaseStorage: {
///         totalSizeInGb: 300,
///     },
///     timeZone: "UTC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_exascale_database_storage_vault = azure.oracle.ExascaleDatabaseStorageVault("example",
///     name="example-exascale-db-storage-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     zones=["1"],
///     display_name="example-exascale-db-storage-vault",
///     description="description",
///     additional_flash_cache_percentage=100,
///     high_capacity_database_storage={
///         "total_size_in_gb": 300,
///     },
///     time_zone="UTC")
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
///     var exampleExascaleDatabaseStorageVault = new Azure.Oracle.ExascaleDatabaseStorageVault("example", new()
///     {
///         Name = "example-exascale-db-storage-vault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Zones = new[]
///         {
///             "1",
///         },
///         DisplayName = "example-exascale-db-storage-vault",
///         Description = "description",
///         AdditionalFlashCachePercentage = 100,
///         HighCapacityDatabaseStorage = new Azure.Oracle.Inputs.ExascaleDatabaseStorageVaultHighCapacityDatabaseStorageArgs
///         {
///             TotalSizeInGb = 300,
///         },
///         TimeZone = "UTC",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/oracle"
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
/// 		_, err = oracle.NewExascaleDatabaseStorageVault(ctx, "example", &oracle.ExascaleDatabaseStorageVaultArgs{
/// 			Name:              pulumi.String("example-exascale-db-storage-vault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 			DisplayName:                    pulumi.String("example-exascale-db-storage-vault"),
/// 			Description:                    pulumi.String("description"),
/// 			AdditionalFlashCachePercentage: pulumi.Int(100),
/// 			HighCapacityDatabaseStorage: &oracle.ExascaleDatabaseStorageVaultHighCapacityDatabaseStorageArgs{
/// 				TotalSizeInGb: pulumi.Int(300),
/// 			},
/// 			TimeZone: pulumi.String("UTC"),
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
/// import com.pulumi.azure.oracle.ExascaleDatabaseStorageVault;
/// import com.pulumi.azure.oracle.ExascaleDatabaseStorageVaultArgs;
/// import com.pulumi.azure.oracle.inputs.ExascaleDatabaseStorageVaultHighCapacityDatabaseStorageArgs;
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
///         var exampleExascaleDatabaseStorageVault = new ExascaleDatabaseStorageVault("exampleExascaleDatabaseStorageVault", ExascaleDatabaseStorageVaultArgs.builder()
///             .name("example-exascale-db-storage-vault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .zones("1")
///             .displayName("example-exascale-db-storage-vault")
///             .description("description")
///             .additionalFlashCachePercentage(100)
///             .highCapacityDatabaseStorage(ExascaleDatabaseStorageVaultHighCapacityDatabaseStorageArgs.builder()
///                 .totalSizeInGb(300)
///                 .build())
///             .timeZone("UTC")
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
///   exampleExascaleDatabaseStorageVault:
///     type: azure:oracle:ExascaleDatabaseStorageVault
///     name: example
///     properties:
///       name: example-exascale-db-storage-vault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       zones:
///         - '1'
///       displayName: example-exascale-db-storage-vault
///       description: description
///       additionalFlashCachePercentage: 100
///       highCapacityDatabaseStorage:
///         totalSizeInGb: 300
///       timeZone: UTC
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Oracle.Database` - 2025-09-01
///
/// ## Import
///
/// Exadata Database Storage Vaults can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:oracle/exascaleDatabaseStorageVault:ExascaleDatabaseStorageVault example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup/providers/Oracle.Database/exascaleDbStorageVaults/exascaleDbStorageVaults1
/// ```
class ExascaleDatabaseStorageVault extends pulumi.CustomResource {
  /// The size of additional Flash Cache in percentage of High Capacity database storage. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<int> additionalFlashCachePercentage;
  /// Exadata Database Storage Vault description. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<String> description;
  /// The user-friendly name for the Exadata Database Storage Vault resource. The name does not need to be unique. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<String> displayName;
  /// A `high_capacity_database_storage` block as defined below. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage> highCapacityDatabaseStorage;
  /// The Azure Region where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Exadata Database Storage Vault should exist. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Exadata Database Storage Vault.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The time zone that you want to use for the Exadata Database Storage Vault. Changing this forces a new Exadata Database Storage Vault to be created. For details, see [Time Zones](https://docs.oracle.com/en/cloud/paas/base-database/time-zone/).
  late final pulumi.Output<String?> timeZone;
  /// Exadata Database Storage Vault zones. Changing this forces a new Exadata Database Storage Vault to be created.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [ExascaleDatabaseStorageVault].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExascaleDatabaseStorageVault]. {@macro pulumi_oracle_exascale_database_storage_vault_exascale_database_storage_vault_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExascaleDatabaseStorageVault(
    String name, {
    ExascaleDatabaseStorageVaultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:oracle/exascaleDatabaseStorageVault:ExascaleDatabaseStorageVault',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalFlashCachePercentage = registerOutput<int>('additionalFlashCachePercentage');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.highCapacityDatabaseStorage = registerOutput<ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage>('highCapacityDatabaseStorage');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeZone = registerOutput<String?>('timeZone');
    this.zones = registerOutput<List<String>>('zones');
  }
}
