import 'package:pulumi/pulumi.dart' as pulumi;
import 'heterogeneous_assessment_operation_args.dart';
import 'heterogeneous_assessment_properties_response.dart';
import 'system_data_response.dart';

/// Heterogeneous assessment resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### HeterogeneousAssessmentOperations_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var heterogeneousAssessmentOperation = new AzureNative.Migrate.HeterogeneousAssessmentOperation("heterogeneousAssessmentOperation", new()
///     {
///         AssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.HeterogeneousAssessmentPropertiesArgs
///         {
///             AssessmentArmIds = new[]
///             {
///                 "gartykxgfvqccfs",
///             },
///         },
///         ResourceGroupName = "rgheterogeneousAssessments",
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
/// 		_, err := migrate.NewHeterogeneousAssessmentOperation(ctx, "heterogeneousAssessmentOperation", &migrate.HeterogeneousAssessmentOperationArgs{
/// 			AssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:    pulumi.String("contosoProject"),
/// 			Properties: &migrate.HeterogeneousAssessmentPropertiesArgs{
/// 				AssessmentArmIds: pulumi.StringArray{
/// 					pulumi.String("gartykxgfvqccfs"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgheterogeneousAssessments"),
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
/// resource "azure-native_migrate_heterogeneousassessmentoperation" "heterogeneousAssessmentOperation" {
///   assessment_name = "assessmentName"
///   project_name    = "contosoProject"
///   properties = {
///     assessment_arm_ids = ["gartykxgfvqccfs"]
///   }
///   resource_group_name = "rgheterogeneousAssessments"
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
/// import com.pulumi.azurenative.migrate.HeterogeneousAssessmentOperation;
/// import com.pulumi.azurenative.migrate.HeterogeneousAssessmentOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.HeterogeneousAssessmentPropertiesArgs;
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
///         var heterogeneousAssessmentOperation = new HeterogeneousAssessmentOperation("heterogeneousAssessmentOperation", HeterogeneousAssessmentOperationArgs.builder()
///             .assessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(HeterogeneousAssessmentPropertiesArgs.builder()
///                 .assessmentArmIds("gartykxgfvqccfs")
///                 .build())
///             .resourceGroupName("rgheterogeneousAssessments")
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
/// const heterogeneousAssessmentOperation = new azure_native.migrate.HeterogeneousAssessmentOperation("heterogeneousAssessmentOperation", {
///     assessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         assessmentArmIds: ["gartykxgfvqccfs"],
///     },
///     resourceGroupName: "rgheterogeneousAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// heterogeneous_assessment_operation = azure_native.migrate.HeterogeneousAssessmentOperation("heterogeneousAssessmentOperation",
///     assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "assessment_arm_ids": ["gartykxgfvqccfs"],
///     },
///     resource_group_name="rgheterogeneousAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   heterogeneousAssessmentOperation:
///     type: azure-native:migrate:HeterogeneousAssessmentOperation
///     properties:
///       assessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         assessmentArmIds:
///           - gartykxgfvqccfs
///       resourceGroupName: rgheterogeneousAssessments
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
/// $ pulumi import azure-native:migrate:HeterogeneousAssessmentOperation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/heterogeneousAssessments/{assessmentName}
/// ```
class HeterogeneousAssessmentOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<HeterogeneousAssessmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HeterogeneousAssessmentOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HeterogeneousAssessmentOperation]. {@macro pulumi_migrate_heterogeneous_assessment_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HeterogeneousAssessmentOperation(
    String name, {
    HeterogeneousAssessmentOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:HeterogeneousAssessmentOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HeterogeneousAssessmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HeterogeneousAssessmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
