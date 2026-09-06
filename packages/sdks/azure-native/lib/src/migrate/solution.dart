import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_args.dart';
import 'solution_properties_response.dart';

/// Solution REST Resource.
///
/// Uses Azure REST API version 2018-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Solutions_Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solution = new AzureNative.Migrate.Solution("solution", new()
///     {
///         MigrateProjectName = "project01",
///         Properties = new AzureNative.Migrate.Inputs.SolutionPropertiesArgs
///         {
///             Goal = "Databases",
///             Purpose = "Assessment",
///             Tool = "DataMigrationAssistant",
///         },
///         ResourceGroupName = "myResourceGroup",
///         SolutionName = "dbsolution",
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
/// 		_, err := migrate.NewSolution(ctx, "solution", &migrate.SolutionArgs{
/// 			MigrateProjectName: pulumi.String("project01"),
/// 			Properties: &migrate.SolutionPropertiesArgs{
/// 				Goal:    pulumi.String("Databases"),
/// 				Purpose: pulumi.String("Assessment"),
/// 				Tool:    pulumi.String("DataMigrationAssistant"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			SolutionName:      pulumi.String("dbsolution"),
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
/// resource "azure-native_migrate_solution" "solution" {
///   migrate_project_name = "project01"
///   properties = {
///     goal    = "Databases"
///     purpose = "Assessment"
///     tool    = "DataMigrationAssistant"
///   }
///   resource_group_name = "myResourceGroup"
///   solution_name       = "dbsolution"
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
/// import com.pulumi.azurenative.migrate.Solution;
/// import com.pulumi.azurenative.migrate.SolutionArgs;
/// import com.pulumi.azurenative.migrate.inputs.SolutionPropertiesArgs;
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
///         var solution = new Solution("solution", SolutionArgs.builder()
///             .migrateProjectName("project01")
///             .properties(SolutionPropertiesArgs.builder()
///                 .goal("Databases")
///                 .purpose("Assessment")
///                 .tool("DataMigrationAssistant")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .solutionName("dbsolution")
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
/// const solution = new azure_native.migrate.Solution("solution", {
///     migrateProjectName: "project01",
///     properties: {
///         goal: "Databases",
///         purpose: "Assessment",
///         tool: "DataMigrationAssistant",
///     },
///     resourceGroupName: "myResourceGroup",
///     solutionName: "dbsolution",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution = azure_native.migrate.Solution("solution",
///     migrate_project_name="project01",
///     properties={
///         "goal": "Databases",
///         "purpose": "Assessment",
///         "tool": "DataMigrationAssistant",
///     },
///     resource_group_name="myResourceGroup",
///     solution_name="dbsolution")
///
/// ```
///
/// ```yaml
/// resources:
///   solution:
///     type: azure-native:migrate:Solution
///     properties:
///       migrateProjectName: project01
///       properties:
///         goal: Databases
///         purpose: Assessment
///         tool: DataMigrationAssistant
///       resourceGroupName: myResourceGroup
///       solutionName: dbsolution
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
/// $ pulumi import azure-native:migrate:Solution dbsolution /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/migrateProjects/{migrateProjectName}/solutions/{solutionName}
/// ```
class Solution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the ETAG for optimistic concurrency control.
  late final pulumi.Output<String?> etag;
  /// Gets the name of this REST resource.
  late final pulumi.Output<String> name;
  /// Gets or sets the properties of the solution.
  late final pulumi.Output<SolutionPropertiesResponse> properties;
  /// Gets the type of this REST resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Solution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Solution]. {@macro pulumi_migrate_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Solution(
    String name, {
    SolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:Solution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Solution] resource.
  Solution.reference(String urn)
    : super(
        'azure-native:migrate:Solution',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String?>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SolutionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
