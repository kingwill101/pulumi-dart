import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_deployment_args.dart';
import 'workload_deployment_model_properties_response.dart';
import 'workload_deployment_model_response_system_data.dart';

/// Workload deployment model.
///
/// Uses Azure REST API version 2022-05-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WorkloadDeployment_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var workloadDeployment = new AzureNative.Migrate.WorkloadDeployment("workloadDeployment", new()
///     {
///         ModernizeProjectName = "tc",
///         ResourceGroupName = "rgmigrateEngine",
///         WorkloadDeploymentName = "wo2rs4",
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
/// 		_, err := migrate.NewWorkloadDeployment(ctx, "workloadDeployment", &migrate.WorkloadDeploymentArgs{
/// 			ModernizeProjectName:   pulumi.String("tc"),
/// 			ResourceGroupName:      pulumi.String("rgmigrateEngine"),
/// 			WorkloadDeploymentName: pulumi.String("wo2rs4"),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_migrate_workload_deployment" "workloadDeployment" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   modernize_project_name   = "tc"
///   resource_group_name      = "rgmigrateEngine"
///   workload_deployment_name = "wo2rs4"
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
/// import com.pulumi.azurenative.migrate.WorkloadDeployment;
/// import com.pulumi.azurenative.migrate.WorkloadDeploymentArgs;
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
///         var workloadDeployment = new WorkloadDeployment("workloadDeployment", WorkloadDeploymentArgs.builder()
///             .modernizeProjectName("tc")
///             .resourceGroupName("rgmigrateEngine")
///             .workloadDeploymentName("wo2rs4")
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
/// const workloadDeployment = new azure_native.migrate.WorkloadDeployment("workloadDeployment", {
///     modernizeProjectName: "tc",
///     resourceGroupName: "rgmigrateEngine",
///     workloadDeploymentName: "wo2rs4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// workload_deployment = azure_native.migrate.WorkloadDeployment("workloadDeployment",
///     modernize_project_name="tc",
///     resource_group_name="rgmigrateEngine",
///     workload_deployment_name="wo2rs4")
///
/// ```
///
/// ```yaml
/// resources:
///   workloadDeployment:
///     type: azure-native:migrate:WorkloadDeployment
///     properties:
///       modernizeProjectName: tc
///       resourceGroupName: rgmigrateEngine
///       workloadDeploymentName: wo2rs4
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
/// $ pulumi import azure-native:migrate:WorkloadDeployment obqwiueoajtezyusejl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/modernizeProjects/{modernizeProjectName}/workloadDeployments/{workloadDeploymentName}
/// ```
class WorkloadDeployment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Workload deployment model properties.
  late final pulumi.Output<WorkloadDeploymentModelPropertiesResponse> properties;
  late final pulumi.Output<WorkloadDeploymentModelResponseSystemData> systemData;
  /// Gets or sets the resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [WorkloadDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkloadDeployment]. {@macro pulumi_migrate_workload_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkloadDeployment(
    String name, {
    WorkloadDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:WorkloadDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkloadDeploymentModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadDeploymentModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<WorkloadDeploymentModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadDeploymentModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WorkloadDeployment] resource.
  WorkloadDeployment.reference(String urn)
    : super(
        'azure-native:migrate:WorkloadDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<WorkloadDeploymentModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadDeploymentModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<WorkloadDeploymentModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkloadDeploymentModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
