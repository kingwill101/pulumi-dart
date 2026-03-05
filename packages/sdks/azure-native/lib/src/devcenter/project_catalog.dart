import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_catalog_response.dart';
import 'project_catalog_args.dart';
import 'sync_stats_response.dart';
import 'system_data_response.dart';

/// Represents a catalog.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2024-02-01.
///
/// Other available API versions: 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProjectCatalogs_CreateOrUpdateAdo
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projectCatalog = new AzureNative.DevCenter.ProjectCatalog("projectCatalog", new()
///     {
///         AdoGit = new AzureNative.DevCenter.Inputs.GitCatalogArgs
///         {
///             Branch = "main",
///             Path = "/templates",
///             SecretIdentifier = "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///             Uri = "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///         },
///         CatalogName = "CentralCatalog",
///         ProjectName = "DevProject",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewProjectCatalog(ctx, "projectCatalog", &devcenter.ProjectCatalogArgs{
/// 			AdoGit: &devcenter.GitCatalogArgs{
/// 				Branch:           pulumi.String("main"),
/// 				Path:             pulumi.String("/templates"),
/// 				SecretIdentifier: pulumi.String("https://contosokv.vault.azure.net/secrets/CentralRepoPat"),
/// 				Uri:              pulumi.String("https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso"),
/// 			},
/// 			CatalogName:       pulumi.String("CentralCatalog"),
/// 			ProjectName:       pulumi.String("DevProject"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.devcenter.ProjectCatalog;
/// import com.pulumi.azurenative.devcenter.ProjectCatalogArgs;
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
///         var projectCatalog = new ProjectCatalog("projectCatalog", ProjectCatalogArgs.builder()
///             .adoGit(GitCatalogArgs.builder()
///                 .branch("main")
///                 .path("/templates")
///                 .secretIdentifier("https://contosokv.vault.azure.net/secrets/CentralRepoPat")
///                 .uri("https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso")
///                 .build())
///             .catalogName("CentralCatalog")
///             .projectName("DevProject")
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
/// const projectCatalog = new azure_native.devcenter.ProjectCatalog("projectCatalog", {
///     adoGit: {
///         branch: "main",
///         path: "/templates",
///         secretIdentifier: "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         uri: "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///     },
///     catalogName: "CentralCatalog",
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project_catalog = azure_native.devcenter.ProjectCatalog("projectCatalog",
///     ado_git={
///         "branch": "main",
///         "path": "/templates",
///         "secret_identifier": "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         "uri": "https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso",
///     },
///     catalog_name="CentralCatalog",
///     project_name="DevProject",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   projectCatalog:
///     type: azure-native:devcenter:ProjectCatalog
///     properties:
///       adoGit:
///         branch: main
///         path: /templates
///         secretIdentifier: https://contosokv.vault.azure.net/secrets/CentralRepoPat
///         uri: https://contoso@dev.azure.com/contoso/contosoOrg/_git/centralrepo-fakecontoso
///       catalogName: CentralCatalog
///       projectName: DevProject
///       resourceGroupName: rg1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ProjectCatalogs_CreateOrUpdateGitHub
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projectCatalog = new AzureNative.DevCenter.ProjectCatalog("projectCatalog", new()
///     {
///         CatalogName = "CentralCatalog",
///         GitHub = new AzureNative.DevCenter.Inputs.GitCatalogArgs
///         {
///             Branch = "main",
///             Path = "/templates",
///             SecretIdentifier = "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///             Uri = "https://github.com/Contoso/centralrepo-fake.git",
///         },
///         ProjectName = "DevProject",
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewProjectCatalog(ctx, "projectCatalog", &devcenter.ProjectCatalogArgs{
/// 			CatalogName: pulumi.String("CentralCatalog"),
/// 			GitHub: &devcenter.GitCatalogArgs{
/// 				Branch:           pulumi.String("main"),
/// 				Path:             pulumi.String("/templates"),
/// 				SecretIdentifier: pulumi.String("https://contosokv.vault.azure.net/secrets/CentralRepoPat"),
/// 				Uri:              pulumi.String("https://github.com/Contoso/centralrepo-fake.git"),
/// 			},
/// 			ProjectName:       pulumi.String("DevProject"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.devcenter.ProjectCatalog;
/// import com.pulumi.azurenative.devcenter.ProjectCatalogArgs;
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
///         var projectCatalog = new ProjectCatalog("projectCatalog", ProjectCatalogArgs.builder()
///             .catalogName("CentralCatalog")
///             .gitHub(GitCatalogArgs.builder()
///                 .branch("main")
///                 .path("/templates")
///                 .secretIdentifier("https://contosokv.vault.azure.net/secrets/CentralRepoPat")
///                 .uri("https://github.com/Contoso/centralrepo-fake.git")
///                 .build())
///             .projectName("DevProject")
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
/// const projectCatalog = new azure_native.devcenter.ProjectCatalog("projectCatalog", {
///     catalogName: "CentralCatalog",
///     gitHub: {
///         branch: "main",
///         path: "/templates",
///         secretIdentifier: "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         uri: "https://github.com/Contoso/centralrepo-fake.git",
///     },
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project_catalog = azure_native.devcenter.ProjectCatalog("projectCatalog",
///     catalog_name="CentralCatalog",
///     git_hub={
///         "branch": "main",
///         "path": "/templates",
///         "secret_identifier": "https://contosokv.vault.azure.net/secrets/CentralRepoPat",
///         "uri": "https://github.com/Contoso/centralrepo-fake.git",
///     },
///     project_name="DevProject",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   projectCatalog:
///     type: azure-native:devcenter:ProjectCatalog
///     properties:
///       catalogName: CentralCatalog
///       gitHub:
///         branch: main
///         path: /templates
///         secretIdentifier: https://contosokv.vault.azure.net/secrets/CentralRepoPat
///         uri: https://github.com/Contoso/centralrepo-fake.git
///       projectName: DevProject
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:devcenter:ProjectCatalog CentralCatalog /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}/catalogs/{catalogName}
/// ```
class ProjectCatalog extends pulumi.CustomResource {
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

  /// Creates a new [ProjectCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectCatalog]. {@macro pulumi_devcenter_project_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectCatalog(
    String name, {
    ProjectCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:devcenter:ProjectCatalog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    adoGit = registerOutput<GitCatalogResponse?>(
      'adoGit',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GitCatalogResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionState = registerOutput<String>('connectionState');
    gitHub = registerOutput<GitCatalogResponse?>(
      'gitHub',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GitCatalogResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastConnectionTime = registerOutput<String>('lastConnectionTime');
    lastSyncStats = registerOutput<SyncStatsResponse>(
      'lastSyncStats',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SyncStatsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    lastSyncTime = registerOutput<String>('lastSyncTime');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    syncState = registerOutput<String>('syncState');
    syncType = registerOutput<String?>('syncType');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
