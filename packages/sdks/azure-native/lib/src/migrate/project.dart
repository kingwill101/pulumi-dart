import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_properties_response.dart';

/// Azure Migrate Project.
///
/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Projects_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new AzureNative.Migrate.Project("project", new()
///     {
///         ETag = "",
///         Location = "West Europe",
///         ProjectName = "abGoyalProject2",
///         Properties = new AzureNative.Migrate.Inputs.ProjectPropertiesArgs
///         {
///             AssessmentSolutionId = "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment",
///             ProjectStatus = AzureNative.Migrate.ProjectStatus.Active,
///         },
///         ResourceGroupName = "abgoyal-westEurope",
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
/// 	migrate "github.com/pulumi/pulumi-azure-native-sdk/migrate/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := migrate.NewProject(ctx, "project", &migrate.ProjectArgs{
/// 			ETag:        pulumi.String(""),
/// 			Location:    pulumi.String("West Europe"),
/// 			ProjectName: pulumi.String("abGoyalProject2"),
/// 			Properties: &migrate.ProjectPropertiesArgs{
/// 				AssessmentSolutionId: pulumi.String("/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment"),
/// 				ProjectStatus:        pulumi.String(migrate.ProjectStatusActive),
/// 			},
/// 			ResourceGroupName: pulumi.String("abgoyal-westEurope"),
/// 			Tags:              pulumi.Any(map[string]interface{}{}),
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
/// import com.pulumi.azurenative.migrate.Project;
/// import com.pulumi.azurenative.migrate.ProjectArgs;
/// import com.pulumi.azurenative.migrate.inputs.ProjectPropertiesArgs;
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
///             .eTag("")
///             .location("West Europe")
///             .projectName("abGoyalProject2")
///             .properties(ProjectPropertiesArgs.builder()
///                 .assessmentSolutionId("/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment")
///                 .projectStatus("Active")
///                 .build())
///             .resourceGroupName("abgoyal-westEurope")
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
/// const project = new azure_native.migrate.Project("project", {
///     eTag: "",
///     location: "West Europe",
///     projectName: "abGoyalProject2",
///     properties: {
///         assessmentSolutionId: "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment",
///         projectStatus: azure_native.migrate.ProjectStatus.Active,
///     },
///     resourceGroupName: "abgoyal-westEurope",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// project = azure_native.migrate.Project("project",
///     e_tag="",
///     location="West Europe",
///     project_name="abGoyalProject2",
///     properties={
///         "assessment_solution_id": "/subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment",
///         "project_status": azure_native.migrate.ProjectStatus.ACTIVE,
///     },
///     resource_group_name="abgoyal-westEurope",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   project:
///     type: azure-native:migrate:Project
///     properties:
///       eTag: ""
///       location: West Europe
///       projectName: abGoyalProject2
///       properties:
///         assessmentSolutionId: /subscriptions/6393a73f-8d55-47ef-b6dd-179b3e0c7910/resourcegroups/abgoyal-westeurope/providers/microsoft.migrate/migrateprojects/abgoyalweselfhost/Solutions/Servers-Assessment-ServerAssessment
///         projectStatus: Active
///       resourceGroupName: abgoyal-westEurope
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
/// $ pulumi import azure-native:migrate:Project abGoyalProject2 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}
/// ```
class Project extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// For optimistic concurrency control.
  late final pulumi.Output<String?> eTag;
  /// Azure location in which project is created.
  late final pulumi.Output<String?> location;
  /// Name of the project.
  late final pulumi.Output<String> name;
  /// Properties of the project.
  late final pulumi.Output<ProjectPropertiesResponse> properties;
  /// Tags provided by Azure Tagging service.
  late final pulumi.Output<dynamic> tags;
  /// Type of the object = [Microsoft.Migrate/assessmentProjects].
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_migrate_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProjectPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<dynamic>('tags');
    type = registerOutput<String>('type');
  }
}
