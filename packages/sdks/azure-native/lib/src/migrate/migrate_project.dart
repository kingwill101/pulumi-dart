import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_project_args.dart';
import 'migrate_project_properties_response.dart';
import 'migrate_project_response_tags.dart';

/// Migrate Project REST Resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MigrateProjects_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrateProject = new AzureNative.Migrate.MigrateProject("migrateProject", new()
///     {
///         ETag = "\"b701c73a-0000-0000-0000-59c12ff00000\"",
///         Location = "Southeast Asia",
///         MigrateProjectName = "project01",
///         Properties = null,
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := migrate.NewMigrateProject(ctx, "migrateProject", &migrate.MigrateProjectArgs{
/// 			ETag:               pulumi.String("\"b701c73a-0000-0000-0000-59c12ff00000\""),
/// 			Location:           pulumi.String("Southeast Asia"),
/// 			MigrateProjectName: pulumi.String("project01"),
/// 			Properties:         &migrate.MigrateProjectPropertiesArgs{},
/// 			ResourceGroupName:  pulumi.String("myResourceGroup"),
/// 			Tags:               &migrate.MigrateProjectTagsArgs{},
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
/// import com.pulumi.azurenative.migrate.MigrateProject;
/// import com.pulumi.azurenative.migrate.MigrateProjectArgs;
/// import com.pulumi.azurenative.migrate.inputs.MigrateProjectPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.MigrateProjectTagsArgs;
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
///         var migrateProject = new MigrateProject("migrateProject", MigrateProjectArgs.builder()
///             .eTag("\"b701c73a-0000-0000-0000-59c12ff00000\"")
///             .location("Southeast Asia")
///             .migrateProjectName("project01")
///             .properties(MigrateProjectPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .tags(MigrateProjectTagsArgs.builder()
///                 .build())
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
/// const migrateProject = new azure_native.migrate.MigrateProject("migrateProject", {
///     eTag: "\"b701c73a-0000-0000-0000-59c12ff00000\"",
///     location: "Southeast Asia",
///     migrateProjectName: "project01",
///     properties: {},
///     resourceGroupName: "myResourceGroup",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migrate_project = azure_native.migrate.MigrateProject("migrateProject",
///     e_tag="\"b701c73a-0000-0000-0000-59c12ff00000\"",
///     location="Southeast Asia",
///     migrate_project_name="project01",
///     properties={},
///     resource_group_name="myResourceGroup",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   migrateProject:
///     type: azure-native:migrate:MigrateProject
///     properties:
///       eTag: '"b701c73a-0000-0000-0000-59c12ff00000"'
///       location: Southeast Asia
///       migrateProjectName: project01
///       properties: {}
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:migrate:MigrateProject project01 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{migrateProjectName}
/// ```
class MigrateProject extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the eTag for concurrency control.
  late final pulumi.Output<String?> eTag;
  /// Gets or sets the Azure location in which migrate project is created.
  late final pulumi.Output<String?> location;
  /// Gets the name of the migrate project.
  late final pulumi.Output<String> name;
  /// Gets or sets the nested properties.
  late final pulumi.Output<MigrateProjectPropertiesResponse> properties;
  /// Gets or sets the tags.
  late final pulumi.Output<MigrateProjectResponseTags?> tags;
  /// Handled by resource provider. Type = Microsoft.Migrate/MigrateProject.
  late final pulumi.Output<String> type;

  /// Creates a new [MigrateProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrateProject]. {@macro pulumi_migrate_migrate_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrateProject(
    String name, {
    MigrateProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:MigrateProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MigrateProjectPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrateProjectPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<MigrateProjectResponseTags?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrateProjectResponseTags.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
