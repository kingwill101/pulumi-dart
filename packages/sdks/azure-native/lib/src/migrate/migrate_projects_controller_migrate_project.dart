import 'package:pulumi/pulumi.dart' as pulumi;
import 'migrate_project_properties_migrate_projects_controller_migrate_project_response.dart';
import 'migrate_projects_controller_migrate_project_args.dart';
import 'system_data_response.dart';

/// Migrate project.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// Other available API versions: 2023-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MigrateProject_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var migrateProjectsControllerMigrateProject = new AzureNative.Migrate.MigrateProjectsControllerMigrateProject("migrateProjectsControllerMigrateProject", new()
///     {
///         Location = "eastus",
///         MigrateProjectName = "projTest1",
///         Properties = new AzureNative.Migrate.Inputs.MigrateProjectPropertiesArgs
///         {
///             PublicNetworkAccess = "Enabled",
///         },
///         ResourceGroupName = "pajindTest1",
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
/// 		_, err := migrate.NewMigrateProjectsControllerMigrateProject(ctx, "migrateProjectsControllerMigrateProject", &migrate.MigrateProjectsControllerMigrateProjectArgs{
/// 			Location:           pulumi.String("eastus"),
/// 			MigrateProjectName: pulumi.String("projTest1"),
/// 			Properties: &migrate.MigrateProjectPropertiesArgs{
/// 				PublicNetworkAccess: pulumi.String("Enabled"),
/// 			},
/// 			ResourceGroupName: pulumi.String("pajindTest1"),
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
/// resource "azure-native_migrate_migrateprojectscontrollermigrateproject" "migrateProjectsControllerMigrateProject" {
///   location             = "eastus"
///   migrate_project_name = "projTest1"
///   properties = {
///     public_network_access = "Enabled"
///   }
///   resource_group_name = "pajindTest1"
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
/// import com.pulumi.azurenative.migrate.MigrateProjectsControllerMigrateProject;
/// import com.pulumi.azurenative.migrate.MigrateProjectsControllerMigrateProjectArgs;
/// import com.pulumi.azurenative.migrate.inputs.MigrateProjectPropertiesArgs;
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
///         var migrateProjectsControllerMigrateProject = new MigrateProjectsControllerMigrateProject("migrateProjectsControllerMigrateProject", MigrateProjectsControllerMigrateProjectArgs.builder()
///             .location("eastus")
///             .migrateProjectName("projTest1")
///             .properties(MigrateProjectPropertiesArgs.builder()
///                 .publicNetworkAccess("Enabled")
///                 .build())
///             .resourceGroupName("pajindTest1")
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
/// const migrateProjectsControllerMigrateProject = new azure_native.migrate.MigrateProjectsControllerMigrateProject("migrateProjectsControllerMigrateProject", {
///     location: "eastus",
///     migrateProjectName: "projTest1",
///     properties: {
///         publicNetworkAccess: "Enabled",
///     },
///     resourceGroupName: "pajindTest1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// migrate_projects_controller_migrate_project = azure_native.migrate.MigrateProjectsControllerMigrateProject("migrateProjectsControllerMigrateProject",
///     location="eastus",
///     migrate_project_name="projTest1",
///     properties={
///         "public_network_access": "Enabled",
///     },
///     resource_group_name="pajindTest1")
///
/// ```
///
/// ```yaml
/// resources:
///   migrateProjectsControllerMigrateProject:
///     type: azure-native:migrate:MigrateProjectsControllerMigrateProject
///     properties:
///       location: eastus
///       migrateProjectName: projTest1
///       properties:
///         publicNetworkAccess: Enabled
///       resourceGroupName: pajindTest1
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
/// $ pulumi import azure-native:migrate:MigrateProjectsControllerMigrateProject proj90 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{migrateProjectName}
/// ```
class MigrateProjectsControllerMigrateProject extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// For optimistic concurrency control.
  late final pulumi.Output<String?> eTag;
  /// Azure location in which project is created.
  late final pulumi.Output<String?> location;
  /// Name of the project.
  late final pulumi.Output<String> name;
  /// Properties of a migrate project.
  late final pulumi.Output<MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the object = [Microsoft.Migrate/migrateProjects].
  late final pulumi.Output<String> type;

  /// Creates a new [MigrateProjectsControllerMigrateProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigrateProjectsControllerMigrateProject]. {@macro pulumi_migrate_migrate_projects_controller_migrate_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigrateProjectsControllerMigrateProject(
    String name, {
    MigrateProjectsControllerMigrateProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:MigrateProjectsControllerMigrateProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MigrateProjectPropertiesMigrateProjectsControllerMigrateProjectResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
