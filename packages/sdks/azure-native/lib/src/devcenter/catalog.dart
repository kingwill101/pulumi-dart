import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_args.dart';
import 'git_catalog_response.dart';
import 'sync_stats_response.dart';
import 'system_data_response.dart';

/// Represents a catalog.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Catalogs_CreateOrUpdateAdo
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var catalog = new AzureNative.DevCenter.Catalog("catalog", new()
///     {
///         AdoGit = new AzureNative.DevCenter.Inputs.GitCatalogArgs
///         {
///             Branch = "main",
///             Path = "/templates",
///             SecretIdentifier = "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///             Uri = "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///         },
///         CatalogName = "CentralCatalog",
///         DevCenterName = "Contoso",
///         ResourceGroupName = "rg1",
///         SyncType = AzureNative.DevCenter.CatalogSyncType.Scheduled,
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewCatalog(ctx, "catalog", &devcenter.CatalogArgs{
/// 			AdoGit: &devcenter.GitCatalogArgs{
/// 				Branch:           pulumi.String("main"),
/// 				Path:             pulumi.String("/templates"),
/// 				SecretIdentifier: pulumi.String("https://contosokv.vault.azure.net/secrets/CentralRepoPat"),
/// 				Uri:              pulumi.String("https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso"),
/// 			},
/// 			CatalogName:       pulumi.String("CentralCatalog"),
/// 			DevCenterName:     pulumi.String("Contoso"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SyncType:          pulumi.String(devcenter.CatalogSyncTypeScheduled),
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
/// import com.pulumi.azurenative.devcenter.Catalog;
/// import com.pulumi.azurenative.devcenter.CatalogArgs;
/// import com.pulumi.azurenative.devcenter.inputs.GitCatalogArgs;
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
///         var catalog = new Catalog("catalog", CatalogArgs.builder()
///             .adoGit(GitCatalogArgs.builder()
///                 .branch("main")
///                 .path("/templates")
///                 .secretIdentifier("https://contosokv.vault.azure.net/secrets/CentralRepoPat")
///                 .uri("https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso")
///                 .build())
///             .catalogName("CentralCatalog")
///             .devCenterName("Contoso")
///             .resourceGroupName("rg1")
///             .syncType("Scheduled")
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
/// const catalog = new azure_native.devcenter.Catalog("catalog", {
///     adoGit: {
///         branch: "main",
///         path: "/templates",
///         secretIdentifier: "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         uri: "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///     },
///     catalogName: "CentralCatalog",
///     devCenterName: "Contoso",
///     resourceGroupName: "rg1",
///     syncType: azure_native.devcenter.CatalogSyncType.Scheduled,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// catalog = azure_native.devcenter.Catalog("catalog",
///     ado_git={
///         "branch": "main",
///         "path": "/templates",
///         "secret_identifier": "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         "uri": "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///     },
///     catalog_name="CentralCatalog",
///     dev_center_name="Contoso",
///     resource_group_name="rg1",
///     sync_type=azure_native.devcenter.CatalogSyncType.SCHEDULED)
///
/// ```
///
/// ```yaml
/// resources:
///   catalog:
///     type: azure-native:devcenter:Catalog
///     properties:
///       adoGit:
///         branch: main
///         path: /templates
///         secretIdentifier: https://contosokv.vault.azure.net/secrets/CentralRepoPat
///         uri: https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso
///       catalogName: CentralCatalog
///       devCenterName: Contoso
///       resourceGroupName: rg1
///       syncType: Scheduled
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Catalogs_CreateOrUpdateGitHub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var catalog = new AzureNative.DevCenter.Catalog("catalog", new()
///     {
///         CatalogName = "CentralCatalog",
///         DevCenterName = "Contoso",
///         GitHub = new AzureNative.DevCenter.Inputs.GitCatalogArgs
///         {
///             Branch = "main",
///             Path = "/templates",
///             SecretIdentifier = "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///             Uri = "https://github.com/Contoso/centralrepo-fake.git",
///         },
///         ResourceGroupName = "rg1",
///         SyncType = AzureNative.DevCenter.CatalogSyncType.Manual,
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewCatalog(ctx, "catalog", &devcenter.CatalogArgs{
/// 			CatalogName:   pulumi.String("CentralCatalog"),
/// 			DevCenterName: pulumi.String("Contoso"),
/// 			GitHub: &devcenter.GitCatalogArgs{
/// 				Branch:           pulumi.String("main"),
/// 				Path:             pulumi.String("/templates"),
/// 				SecretIdentifier: pulumi.String("https://contosokv.vault.azure.net/secrets/CentralRepoPat"),
/// 				Uri:              pulumi.String("https://github.com/Contoso/centralrepo-fake.git"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SyncType:          pulumi.String(devcenter.CatalogSyncTypeManual),
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
/// import com.pulumi.azurenative.devcenter.Catalog;
/// import com.pulumi.azurenative.devcenter.CatalogArgs;
/// import com.pulumi.azurenative.devcenter.inputs.GitCatalogArgs;
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
///         var catalog = new Catalog("catalog", CatalogArgs.builder()
///             .catalogName("CentralCatalog")
///             .devCenterName("Contoso")
///             .gitHub(GitCatalogArgs.builder()
///                 .branch("main")
///                 .path("/templates")
///                 .secretIdentifier("https://contosokv.vault.azure.net/secrets/CentralRepoPat")
///                 .uri("https://github.com/Contoso/centralrepo-fake.git")
///                 .build())
///             .resourceGroupName("rg1")
///             .syncType("Manual")
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
/// const catalog = new azure_native.devcenter.Catalog("catalog", {
///     catalogName: "CentralCatalog",
///     devCenterName: "Contoso",
///     gitHub: {
///         branch: "main",
///         path: "/templates",
///         secretIdentifier: "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         uri: "https://github.com/Contoso/centralrepo-fake.git",
///     },
///     resourceGroupName: "rg1",
///     syncType: azure_native.devcenter.CatalogSyncType.Manual,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// catalog = azure_native.devcenter.Catalog("catalog",
///     catalog_name="CentralCatalog",
///     dev_center_name="Contoso",
///     git_hub={
///         "branch": "main",
///         "path": "/templates",
///         "secret_identifier": "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         "uri": "https://github.com/Contoso/centralrepo-fake.git",
///     },
///     resource_group_name="rg1",
///     sync_type=azure_native.devcenter.CatalogSyncType.MANUAL)
///
/// ```
///
/// ```yaml
/// resources:
///   catalog:
///     type: azure-native:devcenter:Catalog
///     properties:
///       catalogName: CentralCatalog
///       devCenterName: Contoso
///       gitHub:
///         branch: main
///         path: /templates
///         secretIdentifier: https://contosokv.vault.azure.net/secrets/CentralRepoPat
///         uri: https://github.com/Contoso/centralrepo-fake.git
///       resourceGroupName: rg1
///       syncType: Manual
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
/// $ pulumi import azure-native:devcenter:Catalog CentralCatalog /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/devcenters/{devCenterName}/catalogs/{catalogName}
/// ```
class Catalog extends pulumi.CustomResource {
  /// Properties for an Azure DevOps catalog type.
  late final pulumi.Output<GitCatalogResponse?> adoGit;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The connection state of the catalog.
  late final pulumi.Output<String> connectionState;
  /// Properties for a GitHub catalog type.
  late final pulumi.Output<GitCatalogResponse?> gitHub;
  /// When the catalog was last connected.
  late final pulumi.Output<String> lastConnectionTime;
  /// Stats of the latest synchronization.
  late final pulumi.Output<SyncStatsResponse> lastSyncStats;
  /// When the catalog was last synced.
  late final pulumi.Output<String> lastSyncTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The synchronization state of the catalog.
  late final pulumi.Output<String> syncState;
  /// Indicates the type of sync that is configured for the catalog.
  late final pulumi.Output<String?> syncType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Catalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Catalog]. {@macro pulumi_devcenter_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Catalog(
    String name, {
    CatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:Catalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adoGit = registerOutput<GitCatalogResponse?>('adoGit');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.connectionState = registerOutput<String>('connectionState');
    this.gitHub = registerOutput<GitCatalogResponse?>('gitHub');
    this.lastConnectionTime = registerOutput<String>('lastConnectionTime');
    this.lastSyncStats = registerOutput<SyncStatsResponse>('lastSyncStats');
    this.lastSyncTime = registerOutput<String>('lastSyncTime');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.syncState = registerOutput<String>('syncState');
    this.syncType = registerOutput<String?>('syncType');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
