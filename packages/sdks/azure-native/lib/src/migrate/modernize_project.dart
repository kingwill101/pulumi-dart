import 'package:pulumi/pulumi.dart' as pulumi;
import 'modernize_project_args.dart';
import 'modernize_project_model_properties_response.dart';
import 'modernize_project_model_response_system_data.dart';
import 'resource_identity_response.dart';

/// ModernizeProject model.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ModernizeProject_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var modernizeProject = new AzureNative.Migrate.ModernizeProject("modernizeProject", new()
///     {
///         Identity = new AzureNative.Migrate.Inputs.ResourceIdentityArgs
///         {
///             PrincipalId = "ins",
///             TenantId = "fjnu",
///             Type = AzureNative.Migrate.ResourceIdentityTypes.None,
///             UserAssignedIdentities =
///             {
///                 { "key6848", new AzureNative.Migrate.Inputs.UserAssignedIdentityArgs
///                 {
///                     ClientId = "lvlngepacjdjryqmxuvfdxwtkc",
///                     PrincipalId = "lumkynazsspljxiiwvz",
///                 } },
///             },
///         },
///         Location = "nbqyuxrgrlhx",
///         ModernizeProjectName = "b",
///         Properties = new AzureNative.Migrate.Inputs.ModernizeProjectModelPropertiesArgs
///         {
///             MigrationConfiguration = new AzureNative.Migrate.Inputs.MigrationConfigurationArgs
///             {
///                 KeyVaultResourceId = "vekhittkyogvwnqmggknv",
///                 MigrationSolutionResourceId = "bglfkwtzvqmhwpddwpvtdzaleaioxo",
///                 StorageAccountResourceId = "dgcoticysafrpynyoxkgrspooiia",
///             },
///         },
///         ResourceGroupName = "rgmigrateEngine",
///         Tags =
///         {
///             { "key8644", "wfyi" },
///         },
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewModernizeProject(ctx, "modernizeProject", &migrate.ModernizeProjectArgs{
/// 			Identity: &migrate.ResourceIdentityArgs{
/// 				PrincipalId: pulumi.String("ins"),
/// 				TenantId:    pulumi.String("fjnu"),
/// 				Type:        pulumi.String(migrate.ResourceIdentityTypesNone),
/// 				UserAssignedIdentities: migrate.UserAssignedIdentityMap{
/// 					"key6848": &migrate.UserAssignedIdentityArgs{
/// 						ClientId:    pulumi.String("lvlngepacjdjryqmxuvfdxwtkc"),
/// 						PrincipalId: pulumi.String("lumkynazsspljxiiwvz"),
/// 					},
/// 				},
/// 			},
/// 			Location:             pulumi.String("nbqyuxrgrlhx"),
/// 			ModernizeProjectName: pulumi.String("b"),
/// 			Properties: &migrate.ModernizeProjectModelPropertiesArgs{
/// 				MigrationConfiguration: &migrate.MigrationConfigurationArgs{
/// 					KeyVaultResourceId:          pulumi.String("vekhittkyogvwnqmggknv"),
/// 					MigrationSolutionResourceId: pulumi.String("bglfkwtzvqmhwpddwpvtdzaleaioxo"),
/// 					StorageAccountResourceId:    pulumi.String("dgcoticysafrpynyoxkgrspooiia"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmigrateEngine"),
/// 			Tags: pulumi.StringMap{
/// 				"key8644": pulumi.String("wfyi"),
/// 			},
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
/// import com.pulumi.azurenative.migrate.ModernizeProject;
/// import com.pulumi.azurenative.migrate.ModernizeProjectArgs;
/// import com.pulumi.azurenative.migrate.inputs.ResourceIdentityArgs;
/// import com.pulumi.azurenative.migrate.inputs.ModernizeProjectModelPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.MigrationConfigurationArgs;
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
///         var modernizeProject = new ModernizeProject("modernizeProject", ModernizeProjectArgs.builder()
///             .identity(ResourceIdentityArgs.builder()
///                 .principalId("ins")
///                 .tenantId("fjnu")
///                 .type("None")
///                 .userAssignedIdentities(Map.of("key6848", UserAssignedIdentityArgs.builder()
///                     .clientId("lvlngepacjdjryqmxuvfdxwtkc")
///                     .principalId("lumkynazsspljxiiwvz")
///                     .build()))
///                 .build())
///             .location("nbqyuxrgrlhx")
///             .modernizeProjectName("b")
///             .properties(ModernizeProjectModelPropertiesArgs.builder()
///                 .migrationConfiguration(MigrationConfigurationArgs.builder()
///                     .keyVaultResourceId("vekhittkyogvwnqmggknv")
///                     .migrationSolutionResourceId("bglfkwtzvqmhwpddwpvtdzaleaioxo")
///                     .storageAccountResourceId("dgcoticysafrpynyoxkgrspooiia")
///                     .build())
///                 .build())
///             .resourceGroupName("rgmigrateEngine")
///             .tags(Map.of("key8644", "wfyi"))
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
/// const modernizeProject = new azure_native.migrate.ModernizeProject("modernizeProject", {
///     identity: {
///         principalId: "ins",
///         tenantId: "fjnu",
///         type: azure_native.migrate.ResourceIdentityTypes.None,
///         userAssignedIdentities: {
///             key6848: {
///                 clientId: "lvlngepacjdjryqmxuvfdxwtkc",
///                 principalId: "lumkynazsspljxiiwvz",
///             },
///         },
///     },
///     location: "nbqyuxrgrlhx",
///     modernizeProjectName: "b",
///     properties: {
///         migrationConfiguration: {
///             keyVaultResourceId: "vekhittkyogvwnqmggknv",
///             migrationSolutionResourceId: "bglfkwtzvqmhwpddwpvtdzaleaioxo",
///             storageAccountResourceId: "dgcoticysafrpynyoxkgrspooiia",
///         },
///     },
///     resourceGroupName: "rgmigrateEngine",
///     tags: {
///         key8644: "wfyi",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// modernize_project = azure_native.migrate.ModernizeProject("modernizeProject",
///     identity={
///         "principal_id": "ins",
///         "tenant_id": "fjnu",
///         "type": azure_native.migrate.ResourceIdentityTypes.NONE,
///         "user_assigned_identities": {
///             "key6848": {
///                 "client_id": "lvlngepacjdjryqmxuvfdxwtkc",
///                 "principal_id": "lumkynazsspljxiiwvz",
///             },
///         },
///     },
///     location="nbqyuxrgrlhx",
///     modernize_project_name="b",
///     properties={
///         "migration_configuration": {
///             "key_vault_resource_id": "vekhittkyogvwnqmggknv",
///             "migration_solution_resource_id": "bglfkwtzvqmhwpddwpvtdzaleaioxo",
///             "storage_account_resource_id": "dgcoticysafrpynyoxkgrspooiia",
///         },
///     },
///     resource_group_name="rgmigrateEngine",
///     tags={
///         "key8644": "wfyi",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   modernizeProject:
///     type: azure-native:migrate:ModernizeProject
///     properties:
///       identity:
///         principalId: ins
///         tenantId: fjnu
///         type: None
///         userAssignedIdentities:
///           key6848:
///             clientId: lvlngepacjdjryqmxuvfdxwtkc
///             principalId: lumkynazsspljxiiwvz
///       location: nbqyuxrgrlhx
///       modernizeProjectName: b
///       properties:
///         migrationConfiguration:
///           keyVaultResourceId: vekhittkyogvwnqmggknv
///           migrationSolutionResourceId: bglfkwtzvqmhwpddwpvtdzaleaioxo
///           storageAccountResourceId: dgcoticysafrpynyoxkgrspooiia
///       resourceGroupName: rgmigrateEngine
///       tags:
///         key8644: wfyi
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ModernizeProject_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var modernizeProject = new AzureNative.Migrate.ModernizeProject("modernizeProject", new()
///     {
///         ModernizeProjectName = "j",
///         ResourceGroupName = "rgmigrateEngine",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewModernizeProject(ctx, "modernizeProject", &migrate.ModernizeProjectArgs{
/// 			ModernizeProjectName: pulumi.String("j"),
/// 			ResourceGroupName:    pulumi.String("rgmigrateEngine"),
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
/// import com.pulumi.azurenative.migrate.ModernizeProject;
/// import com.pulumi.azurenative.migrate.ModernizeProjectArgs;
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
///         var modernizeProject = new ModernizeProject("modernizeProject", ModernizeProjectArgs.builder()
///             .modernizeProjectName("j")
///             .resourceGroupName("rgmigrateEngine")
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
/// const modernizeProject = new azure_native.migrate.ModernizeProject("modernizeProject", {
///     modernizeProjectName: "j",
///     resourceGroupName: "rgmigrateEngine",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// modernize_project = azure_native.migrate.ModernizeProject("modernizeProject",
///     modernize_project_name="j",
///     resource_group_name="rgmigrateEngine")
///
/// ```
///
/// ```yaml
/// resources:
///   modernizeProject:
///     type: azure-native:migrate:ModernizeProject
///     properties:
///       modernizeProjectName: j
///       resourceGroupName: rgmigrateEngine
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
/// $ pulumi import azure-native:migrate:ModernizeProject qjtgfttacnihw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/modernizeProjects/{modernizeProjectName}
/// ```
class ModernizeProject extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<ResourceIdentityResponse?> identity;

  /// Gets or sets the location of the modernizeProject.
  late final pulumi.Output<String?> location;

  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;

  /// ModernizeProject properties.
  late final pulumi.Output<ModernizeProjectModelPropertiesResponse> properties;
  late final pulumi.Output<ModernizeProjectModelResponseSystemData> systemData;

  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ModernizeProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModernizeProject]. {@macro pulumi_migrate_modernize_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModernizeProject(
    String name, {
    ModernizeProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:ModernizeProject',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ResourceIdentityResponse?>('identity');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ModernizeProjectModelPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<ModernizeProjectModelResponseSystemData>(
      'systemData',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
