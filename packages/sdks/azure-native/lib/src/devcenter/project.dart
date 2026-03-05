import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'project_args.dart';
import 'project_catalog_settings_response.dart';
import 'system_data_response.dart';

/// Represents a project resource.
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-04-01, 2023-08-01-preview, 2023-10-01-preview, 2024-05-01-preview, 2024-06-01-preview, 2024-07-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-02-01, 2025-04-01-preview, 2025-07-01-preview, 2025-10-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native devcenter [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Projects_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.DevCenter.Project("project", new()
///     {
///         Description = "This is my first project.",
///         DevCenterId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///         DisplayName = "Dev",
///         Location = "centralus",
///         ProjectName = "DevProject",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "CostCenter", "R&D" },
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewProject(ctx, "project", &devcenter.ProjectArgs{
/// 			Description:       pulumi.String("This is my first project."),
/// 			DevCenterId:       pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso"),
/// 			DisplayName:       pulumi.String("Dev"),
/// 			Location:          pulumi.String("centralus"),
/// 			ProjectName:       pulumi.String("DevProject"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"CostCenter": pulumi.String("R&D"),
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
/// import com.pulumi.azurenative.devcenter.Project;
/// import com.pulumi.azurenative.devcenter.ProjectArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .description("This is my first project.")
///             .devCenterId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso")
///             .displayName("Dev")
///             .location("centralus")
///             .projectName("DevProject")
///             .resourceGroupName("rg1")
///             .tags(Map.of("CostCenter", "R&D"))
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
/// const project = new azure_native.devcenter.Project("project", {
///     description: "This is my first project.",
///     devCenterId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///     displayName: "Dev",
///     location: "centralus",
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
///     tags: {
///         CostCenter: "R&D",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.devcenter.Project("project",
///     description="This is my first project.",
///     dev_center_id="/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///     display_name="Dev",
///     location="centralus",
///     project_name="DevProject",
///     resource_group_name="rg1",
///     tags={
///         "CostCenter": "R&D",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:devcenter:Project
///     properties:
///       description: This is my first project.
///       devCenterId: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso
///       displayName: Dev
///       location: centralus
///       projectName: DevProject
///       resourceGroupName: rg1
///       tags:
///         CostCenter: R&D
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Projects_CreateOrUpdateWithLimitsPerDev
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.DevCenter.Project("project", new()
///     {
///         Description = "This is my first project.",
///         DevCenterId = "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///         Location = "centralus",
///         MaxDevBoxesPerUser = 3,
///         ProjectName = "DevProject",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "CostCenter", "R&D" },
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
/// 	devcenter "github.com/pulumi/pulumi-azure-native-sdk/devcenter/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devcenter.NewProject(ctx, "project", &devcenter.ProjectArgs{
/// 			Description:        pulumi.String("This is my first project."),
/// 			DevCenterId:        pulumi.String("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso"),
/// 			Location:           pulumi.String("centralus"),
/// 			MaxDevBoxesPerUser: pulumi.Int(3),
/// 			ProjectName:        pulumi.String("DevProject"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"CostCenter": pulumi.String("R&D"),
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
/// import com.pulumi.azurenative.devcenter.Project;
/// import com.pulumi.azurenative.devcenter.ProjectArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .description("This is my first project.")
///             .devCenterId("/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso")
///             .location("centralus")
///             .maxDevBoxesPerUser(3)
///             .projectName("DevProject")
///             .resourceGroupName("rg1")
///             .tags(Map.of("CostCenter", "R&D"))
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
/// const project = new azure_native.devcenter.Project("project", {
///     description: "This is my first project.",
///     devCenterId: "/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///     location: "centralus",
///     maxDevBoxesPerUser: 3,
///     projectName: "DevProject",
///     resourceGroupName: "rg1",
///     tags: {
///         CostCenter: "R&D",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.devcenter.Project("project",
///     description="This is my first project.",
///     dev_center_id="/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso",
///     location="centralus",
///     max_dev_boxes_per_user=3,
///     project_name="DevProject",
///     resource_group_name="rg1",
///     tags={
///         "CostCenter": "R&D",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:devcenter:Project
///     properties:
///       description: This is my first project.
///       devCenterId: /subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/rg1/providers/Microsoft.DevCenter/devcenters/Contoso
///       location: centralus
///       maxDevBoxesPerUser: 3
///       projectName: DevProject
///       resourceGroupName: rg1
///       tags:
///         CostCenter: R&D
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
/// $ pulumi import azure-native:devcenter:Project DevProject /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevCenter/projects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Settings to be used when associating a project with a catalog.
  late final pulumi.Output<ProjectCatalogSettingsResponse?> catalogSettings;
  /// Description of the project.
  late final pulumi.Output<String?> description;
  /// Resource Id of an associated DevCenter
  late final pulumi.Output<String?> devCenterId;
  /// The URI of the Dev Center resource this project is associated with.
  late final pulumi.Output<String> devCenterUri;
  /// The display name of the project.
  late final pulumi.Output<String?> displayName;
  /// Managed identity properties
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// When specified, limits the maximum number of Dev Boxes a single user can create across all pools in the project. This will have no effect on existing Dev Boxes when reduced.
  late final pulumi.Output<int?> maxDevBoxesPerUser;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_devcenter_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devcenter:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    catalogSettings = registerOutput<ProjectCatalogSettingsResponse?>('catalogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectCatalogSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    devCenterId = registerOutput<String?>('devCenterId');
    devCenterUri = registerOutput<String>('devCenterUri');
    displayName = registerOutput<String?>('displayName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maxDevBoxesPerUser = registerOutput<int?>('maxDevBoxesPerUser');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
