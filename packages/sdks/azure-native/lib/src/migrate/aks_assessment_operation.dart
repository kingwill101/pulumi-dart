import 'package:pulumi/pulumi.dart' as pulumi;
import 'aks_assessment_operation_args.dart';
import 'aksassessment_details_response.dart';
import 'aksassessment_settings_response.dart';
import 'assessment_scope_parameters_response.dart';
import 'system_data_response.dart';

/// ARM model of AKS Assessment.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AksAssessmentOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var aksAssessmentOperation = new AzureNative.Migrate.AksAssessmentOperation("aksAssessmentOperation", new()
///     {
///         AssessmentName = "testaksassessment",
///         ProjectName = "testproject",
///         ResourceGroupName = "rgaksswagger",
///         Scope = new AzureNative.Migrate.Inputs.AssessmentScopeParametersArgs
///         {
///             ServerGroupId = "/subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp",
///         },
///         Settings = new AzureNative.Migrate.Inputs.AKSAssessmentSettingsArgs
///         {
///             AzureLocation = "Unknown",
///             Category = AzureNative.Migrate.AzureVmCategory.All,
///             Consolidation = AzureNative.Migrate.ConsolidationType.Full,
///             Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///             DiscountPercentage = 15,
///             EnvironmentType = AzureNative.Migrate.AzureEnvironmentType.Unknown,
///             LicensingProgram = "Default",
///             PerformanceData = new AzureNative.Migrate.Inputs.PerfDataSettingsArgs
///             {
///                 Percentile = AzureNative.Migrate.Percentile.Percentile50,
///                 PerfDataEndTime = "2023-11-07T06:51:24.320Z",
///                 PerfDataStartTime = "2023-11-07T06:51:24.320Z",
///                 TimeRange = AzureNative.Migrate.TimeRange.Day,
///             },
///             PricingTier = AzureNative.Migrate.PricingTier.Standard,
///             SavingsOptions = AzureNative.Migrate.SavingsOptions.None,
///             ScalingFactor = 3,
///             SizingCriteria = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
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
/// 		_, err := migrate.NewAksAssessmentOperation(ctx, "aksAssessmentOperation", &migrate.AksAssessmentOperationArgs{
/// 			AssessmentName:    pulumi.String("testaksassessment"),
/// 			ProjectName:       pulumi.String("testproject"),
/// 			ResourceGroupName: pulumi.String("rgaksswagger"),
/// 			Scope: &migrate.AssessmentScopeParametersArgs{
/// 				ServerGroupId: pulumi.String("/subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp"),
/// 			},
/// 			Settings: &migrate.AKSAssessmentSettingsArgs{
/// 				AzureLocation:      pulumi.String("Unknown"),
/// 				Category:           pulumi.String(migrate.AzureVmCategoryAll),
/// 				Consolidation:      pulumi.String(migrate.ConsolidationTypeFull),
/// 				Currency:           pulumi.String(migrate.AzureCurrencyUnknown),
/// 				DiscountPercentage: pulumi.Float64(15),
/// 				EnvironmentType:    pulumi.String(migrate.AzureEnvironmentTypeUnknown),
/// 				LicensingProgram:   pulumi.String("Default"),
/// 				PerformanceData: &migrate.PerfDataSettingsArgs{
/// 					Percentile:        pulumi.String(migrate.PercentilePercentile50),
/// 					PerfDataEndTime:   pulumi.String("2023-11-07T06:51:24.320Z"),
/// 					PerfDataStartTime: pulumi.String("2023-11-07T06:51:24.320Z"),
/// 					TimeRange:         pulumi.String(migrate.TimeRangeDay),
/// 				},
/// 				PricingTier:    pulumi.String(migrate.PricingTierStandard),
/// 				SavingsOptions: pulumi.String(migrate.SavingsOptionsNone),
/// 				ScalingFactor:  pulumi.Float64(3),
/// 				SizingCriteria: pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
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
/// import com.pulumi.azurenative.migrate.AksAssessmentOperation;
/// import com.pulumi.azurenative.migrate.AksAssessmentOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.AssessmentScopeParametersArgs;
/// import com.pulumi.azurenative.migrate.inputs.AKSAssessmentSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.PerfDataSettingsArgs;
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
///         var aksAssessmentOperation = new AksAssessmentOperation("aksAssessmentOperation", AksAssessmentOperationArgs.builder()
///             .assessmentName("testaksassessment")
///             .projectName("testproject")
///             .resourceGroupName("rgaksswagger")
///             .scope(AssessmentScopeParametersArgs.builder()
///                 .serverGroupId("/subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp")
///                 .build())
///             .settings(AKSAssessmentSettingsArgs.builder()
///                 .azureLocation("Unknown")
///                 .category("All")
///                 .consolidation("Full")
///                 .currency("Unknown")
///                 .discountPercentage(15.0)
///                 .environmentType("Unknown")
///                 .licensingProgram("Default")
///                 .performanceData(PerfDataSettingsArgs.builder()
///                     .percentile("Percentile50")
///                     .perfDataEndTime("2023-11-07T06:51:24.320Z")
///                     .perfDataStartTime("2023-11-07T06:51:24.320Z")
///                     .timeRange("Day")
///                     .build())
///                 .pricingTier("Standard")
///                 .savingsOptions("None")
///                 .scalingFactor(3.0)
///                 .sizingCriteria("PerformanceBased")
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
/// const aksAssessmentOperation = new azure_native.migrate.AksAssessmentOperation("aksAssessmentOperation", {
///     assessmentName: "testaksassessment",
///     projectName: "testproject",
///     resourceGroupName: "rgaksswagger",
///     scope: {
///         serverGroupId: "/subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp",
///     },
///     settings: {
///         azureLocation: "Unknown",
///         category: azure_native.migrate.AzureVmCategory.All,
///         consolidation: azure_native.migrate.ConsolidationType.Full,
///         currency: azure_native.migrate.AzureCurrency.Unknown,
///         discountPercentage: 15,
///         environmentType: azure_native.migrate.AzureEnvironmentType.Unknown,
///         licensingProgram: "Default",
///         performanceData: {
///             percentile: azure_native.migrate.Percentile.Percentile50,
///             perfDataEndTime: "2023-11-07T06:51:24.320Z",
///             perfDataStartTime: "2023-11-07T06:51:24.320Z",
///             timeRange: azure_native.migrate.TimeRange.Day,
///         },
///         pricingTier: azure_native.migrate.PricingTier.Standard,
///         savingsOptions: azure_native.migrate.SavingsOptions.None,
///         scalingFactor: 3,
///         sizingCriteria: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// aks_assessment_operation = azure_native.migrate.AksAssessmentOperation("aksAssessmentOperation",
///     assessment_name="testaksassessment",
///     project_name="testproject",
///     resource_group_name="rgaksswagger",
///     scope={
///         "server_group_id": "/subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp",
///     },
///     settings={
///         "azure_location": "Unknown",
///         "category": azure_native.migrate.AzureVmCategory.ALL,
///         "consolidation": azure_native.migrate.ConsolidationType.FULL,
///         "currency": azure_native.migrate.AzureCurrency.UNKNOWN,
///         "discount_percentage": 15,
///         "environment_type": azure_native.migrate.AzureEnvironmentType.UNKNOWN,
///         "licensing_program": "Default",
///         "performance_data": {
///             "percentile": azure_native.migrate.Percentile.PERCENTILE50,
///             "perf_data_end_time": "2023-11-07T06:51:24.320Z",
///             "perf_data_start_time": "2023-11-07T06:51:24.320Z",
///             "time_range": azure_native.migrate.TimeRange.DAY,
///         },
///         "pricing_tier": azure_native.migrate.PricingTier.STANDARD,
///         "savings_options": azure_native.migrate.SavingsOptions.NONE,
///         "scaling_factor": 3,
///         "sizing_criteria": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   aksAssessmentOperation:
///     type: azure-native:migrate:AksAssessmentOperation
///     properties:
///       assessmentName: testaksassessment
///       projectName: testproject
///       resourceGroupName: rgaksswagger
///       scope:
///         serverGroupId: /subscriptions/D6F60DF4-CE70-4E39-8217-B8FBE7CA85AA/resourceGroups/rgaksswagger/providers/Microsoft.Migrate/assessmentProjects/testproject/groups/testgrp
///       settings:
///         azureLocation: Unknown
///         category: All
///         consolidation: Full
///         currency: Unknown
///         discountPercentage: 15
///         environmentType: Unknown
///         licensingProgram: Default
///         performanceData:
///           percentile: Percentile50
///           perfDataEndTime: 2023-11-07T06:51:24.320Z
///           perfDataStartTime: 2023-11-07T06:51:24.320Z
///           timeRange: Day
///         pricingTier: Standard
///         savingsOptions: None
///         scalingFactor: 3
///         sizingCriteria: PerformanceBased
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
/// $ pulumi import azure-native:migrate:AksAssessmentOperation testaksassessment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/aksAssessments/{assessmentName}
/// ```
class AksAssessmentOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets AKS Assessment Details.
  late final pulumi.Output<AKSAssessmentDetailsResponse> details;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Gets or sets scope parameters to identify inventory items for assessment.
  late final pulumi.Output<AssessmentScopeParametersResponse?> scope;

  /// Gets or sets AKS Assessment Settings.
  late final pulumi.Output<AKSAssessmentSettingsResponse> settings;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AksAssessmentOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AksAssessmentOperation]. {@macro pulumi_migrate_aks_assessment_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AksAssessmentOperation(
    String name, {
    AksAssessmentOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:AksAssessmentOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    details = registerOutput<AKSAssessmentDetailsResponse>(
      'details',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AKSAssessmentDetailsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    eTag = registerOutput<String>('eTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    scope = registerOutput<AssessmentScopeParametersResponse?>(
      'scope',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AssessmentScopeParametersResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    settings = registerOutput<AKSAssessmentSettingsResponse>(
      'settings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AKSAssessmentSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    type = registerOutput<String>('type');
  }
}
