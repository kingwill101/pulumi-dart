import 'package:pulumi/pulumi.dart' as pulumi;
import 'compound_assessment_operation_args.dart';
import 'compound_assessment_properties_response.dart';
import 'system_data_response.dart';

/// Compound assessment resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CompoundAssessmentOperations_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var compoundAssessmentOperation = new AzureNative.Migrate.CompoundAssessmentOperation("compoundAssessmentOperation", new()
///     {
///         CompoundAssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.CompoundAssessmentPropertiesArgs
///         {
///             FallbackMachineAssessmentArmId = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment",
///             TargetAssessmentArmIds = new AzureNative.Migrate.Inputs.TargetAssessmentArmIdsArgs
///             {
///                 Aks = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment",
///                 AzureAppService = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///                 AzureAppServiceContainer = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///             },
///         },
///         ResourceGroupName = "rgwebAppCompoundAssessments",
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
/// 		_, err := migrate.NewCompoundAssessmentOperation(ctx, "compoundAssessmentOperation", &migrate.CompoundAssessmentOperationArgs{
/// 			CompoundAssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:            pulumi.String("contosoProject"),
/// 			Properties: &migrate.CompoundAssessmentPropertiesArgs{
/// 				FallbackMachineAssessmentArmId: pulumi.String("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment"),
/// 				TargetAssessmentArmIds: &migrate.TargetAssessmentArmIdsArgs{
/// 					Aks:                      pulumi.String("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment"),
/// 					AzureAppService:          pulumi.String("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment"),
/// 					AzureAppServiceContainer: pulumi.String("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgwebAppCompoundAssessments"),
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
/// resource "azure-native_migrate_compoundassessmentoperation" "compoundAssessmentOperation" {
///   compound_assessment_name = "assessmentName"
///   project_name             = "contosoProject"
///   properties = {
///     fallback_machine_assessment_arm_id = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment"
///     target_assessment_arm_ids = {
///       aks                         = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment"
///       azure_app_service           = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment"
///       azure_app_service_container = "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment"
///     }
///   }
///   resource_group_name = "rgwebAppCompoundAssessments"
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
/// import com.pulumi.azurenative.migrate.CompoundAssessmentOperation;
/// import com.pulumi.azurenative.migrate.CompoundAssessmentOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.CompoundAssessmentPropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.TargetAssessmentArmIdsArgs;
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
///         var compoundAssessmentOperation = new CompoundAssessmentOperation("compoundAssessmentOperation", CompoundAssessmentOperationArgs.builder()
///             .compoundAssessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(CompoundAssessmentPropertiesArgs.builder()
///                 .fallbackMachineAssessmentArmId("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment")
///                 .targetAssessmentArmIds(TargetAssessmentArmIdsArgs.builder()
///                     .aks("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment")
///                     .azureAppService("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment")
///                     .azureAppServiceContainer("/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment")
///                     .build())
///                 .build())
///             .resourceGroupName("rgwebAppCompoundAssessments")
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
/// const compoundAssessmentOperation = new azure_native.migrate.CompoundAssessmentOperation("compoundAssessmentOperation", {
///     compoundAssessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         fallbackMachineAssessmentArmId: "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment",
///         targetAssessmentArmIds: {
///             aks: "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment",
///             azureAppService: "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///             azureAppServiceContainer: "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///         },
///     },
///     resourceGroupName: "rgwebAppCompoundAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// compound_assessment_operation = azure_native.migrate.CompoundAssessmentOperation("compoundAssessmentOperation",
///     compound_assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "fallback_machine_assessment_arm_id": "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment",
///         "target_assessment_arm_ids": {
///             "aks": "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment",
///             "azure_app_service": "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///             "azure_app_service_container": "/subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment",
///         },
///     },
///     resource_group_name="rgwebAppCompoundAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   compoundAssessmentOperation:
///     type: azure-native:migrate:CompoundAssessmentOperation
///     properties:
///       compoundAssessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         fallbackMachineAssessmentArmId: /subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/assessments/nameOfAssessment
///         targetAssessmentArmIds:
///           aks: /subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/aksAssessments/nameOfAssessment
///           azureAppService: /subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment
///           azureAppServiceContainer: /subscriptions/6898488D-BBF0-40FC-A5E3-3DF2C00C5F21/resourceGroups/rgwebAppCompoundAssessments/providers/Microsoft.Migrate/assessmentprojects/contosoProject/webAppAssessments/nameOfAssessment
///       resourceGroupName: rgwebAppCompoundAssessments
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
/// $ pulumi import azure-native:migrate:CompoundAssessmentOperation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/webAppCompoundAssessments/{compoundAssessmentName}
/// ```
class CompoundAssessmentOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<CompoundAssessmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CompoundAssessmentOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompoundAssessmentOperation]. {@macro pulumi_migrate_compound_assessment_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompoundAssessmentOperation(
    String name, {
    CompoundAssessmentOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:CompoundAssessmentOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CompoundAssessmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CompoundAssessmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
