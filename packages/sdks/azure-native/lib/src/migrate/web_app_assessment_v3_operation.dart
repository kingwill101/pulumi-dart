import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_assessment_v3_operation_args.dart';
import 'web_app_assessment_v3_properties_response.dart';

/// WebApp assessment resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebAppAssessmentV3Operations_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppAssessmentV3Operation = new AzureNative.Migrate.WebAppAssessmentV3Operation("webAppAssessmentV3Operation", new()
///     {
///         AssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.WebAppAssessmentV3PropertiesArgs
///         {
///             FallbackMachineAssessmentArmId = "gfjcubgnh",
///             Scope = new AzureNative.Migrate.Inputs.ScopeArgs
///             {
///                 AzureResourceGraphQuery = "mjonozzzflcglhdb",
///                 ScopeType = AzureNative.Migrate.ScopeType.ServerGroupId,
///                 ServerGroupId = "sxwigkygd",
///             },
///             Settings = new AzureNative.Migrate.Inputs.WebAppAssessmentSettingsArgs
///             {
///                 AppSvcContainerSettings = new AzureNative.Migrate.Inputs.AppSvcContainerSettingsArgs
///                 {
///                     IsolationRequired = true,
///                 },
///                 AppSvcNativeSettings = new AzureNative.Migrate.Inputs.AppSvcNativeSettingsArgs
///                 {
///                     IsolationRequired = true,
///                 },
///                 AzureLocation = "khzvggbrcnpkzrqdtvvyytc",
///                 AzureSecurityOfferingType = AzureNative.Migrate.AzureSecurityOfferingType.NO,
///                 BillingSettings = new AzureNative.Migrate.Inputs.BillingSettingsArgs
///                 {
///                     LicensingProgram = AzureNative.Migrate.LicensingProgram.Retail,
///                     SubscriptionId = "lakvxkjeqpajer",
///                 },
///                 Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///                 DiscountPercentage = 12,
///                 EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///                 PerformanceData = new AzureNative.Migrate.Inputs.PerformanceDataArgs
///                 {
///                     Percentile = "Unknown",
///                     PerfDataEndTime = "2025-02-21T06:18:34.789Z",
///                     PerfDataStartTime = "2025-02-21T06:18:34.789Z",
///                     TimeRange = AzureNative.Migrate.TimeRange.Day,
///                 },
///                 SavingsSettings = new AzureNative.Migrate.Inputs.SavingsSettingsArgs
///                 {
///                     AzureOfferCode = AzureNative.Migrate.AzureOffer.Unknown,
///                     SavingsOptions = AzureNative.Migrate.SavingsOptions.None,
///                 },
///                 ScalingFactor = 6,
///                 SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///             },
///         },
///         ResourceGroupName = "rgwebAppAssessments",
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
/// 		_, err := migrate.NewWebAppAssessmentV3Operation(ctx, "webAppAssessmentV3Operation", &migrate.WebAppAssessmentV3OperationArgs{
/// 			AssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:    pulumi.String("contosoProject"),
/// 			Properties: &migrate.WebAppAssessmentV3PropertiesArgs{
/// 				FallbackMachineAssessmentArmId: pulumi.String("gfjcubgnh"),
/// 				Scope: &migrate.ScopeArgs{
/// 					AzureResourceGraphQuery: pulumi.String("mjonozzzflcglhdb"),
/// 					ScopeType:               pulumi.String(migrate.ScopeTypeServerGroupId),
/// 					ServerGroupId:           pulumi.String("sxwigkygd"),
/// 				},
/// 				Settings: &migrate.WebAppAssessmentSettingsArgs{
/// 					AppSvcContainerSettings: &migrate.AppSvcContainerSettingsArgs{
/// 						IsolationRequired: pulumi.Bool(true),
/// 					},
/// 					AppSvcNativeSettings: &migrate.AppSvcNativeSettingsArgs{
/// 						IsolationRequired: pulumi.Bool(true),
/// 					},
/// 					AzureLocation:             pulumi.String("khzvggbrcnpkzrqdtvvyytc"),
/// 					AzureSecurityOfferingType: pulumi.String(migrate.AzureSecurityOfferingTypeNO),
/// 					BillingSettings: &migrate.BillingSettingsArgs{
/// 						LicensingProgram: pulumi.String(migrate.LicensingProgramRetail),
/// 						SubscriptionId:   pulumi.String("lakvxkjeqpajer"),
/// 					},
/// 					Currency:           pulumi.String(migrate.AzureCurrencyUnknown),
/// 					DiscountPercentage: pulumi.Float64(12),
/// 					EnvironmentType:    pulumi.String(migrate.EnvironmentTypeProduction),
/// 					PerformanceData: &migrate.PerformanceDataArgs{
/// 						Percentile:        pulumi.String("Unknown"),
/// 						PerfDataEndTime:   pulumi.String("2025-02-21T06:18:34.789Z"),
/// 						PerfDataStartTime: pulumi.String("2025-02-21T06:18:34.789Z"),
/// 						TimeRange:         pulumi.String(migrate.TimeRangeDay),
/// 					},
/// 					SavingsSettings: &migrate.SavingsSettingsArgs{
/// 						AzureOfferCode: pulumi.String(migrate.AzureOfferUnknown),
/// 						SavingsOptions: pulumi.String(migrate.SavingsOptionsNone),
/// 					},
/// 					ScalingFactor:   pulumi.Float64(6),
/// 					SizingCriterion: pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgwebAppAssessments"),
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
/// import com.pulumi.azurenative.migrate.WebAppAssessmentV3Operation;
/// import com.pulumi.azurenative.migrate.WebAppAssessmentV3OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.WebAppAssessmentV3PropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.ScopeArgs;
/// import com.pulumi.azurenative.migrate.inputs.WebAppAssessmentSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AppSvcContainerSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AppSvcNativeSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.BillingSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.PerformanceDataArgs;
/// import com.pulumi.azurenative.migrate.inputs.SavingsSettingsArgs;
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
///         var webAppAssessmentV3Operation = new WebAppAssessmentV3Operation("webAppAssessmentV3Operation", WebAppAssessmentV3OperationArgs.builder()
///             .assessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(WebAppAssessmentV3PropertiesArgs.builder()
///                 .fallbackMachineAssessmentArmId("gfjcubgnh")
///                 .scope(ScopeArgs.builder()
///                     .azureResourceGraphQuery("mjonozzzflcglhdb")
///                     .scopeType("ServerGroupId")
///                     .serverGroupId("sxwigkygd")
///                     .build())
///                 .settings(WebAppAssessmentSettingsArgs.builder()
///                     .appSvcContainerSettings(AppSvcContainerSettingsArgs.builder()
///                         .isolationRequired(true)
///                         .build())
///                     .appSvcNativeSettings(AppSvcNativeSettingsArgs.builder()
///                         .isolationRequired(true)
///                         .build())
///                     .azureLocation("khzvggbrcnpkzrqdtvvyytc")
///                     .azureSecurityOfferingType("NO")
///                     .billingSettings(BillingSettingsArgs.builder()
///                         .licensingProgram("Retail")
///                         .subscriptionId("lakvxkjeqpajer")
///                         .build())
///                     .currency("Unknown")
///                     .discountPercentage(12.0)
///                     .environmentType("Production")
///                     .performanceData(PerformanceDataArgs.builder()
///                         .percentile("Unknown")
///                         .perfDataEndTime("2025-02-21T06:18:34.789Z")
///                         .perfDataStartTime("2025-02-21T06:18:34.789Z")
///                         .timeRange("Day")
///                         .build())
///                     .savingsSettings(SavingsSettingsArgs.builder()
///                         .azureOfferCode("Unknown")
///                         .savingsOptions("None")
///                         .build())
///                     .scalingFactor(6.0)
///                     .sizingCriterion("PerformanceBased")
///                     .build())
///                 .build())
///             .resourceGroupName("rgwebAppAssessments")
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
/// const webAppAssessmentV3Operation = new azure_native.migrate.WebAppAssessmentV3Operation("webAppAssessmentV3Operation", {
///     assessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         fallbackMachineAssessmentArmId: "gfjcubgnh",
///         scope: {
///             azureResourceGraphQuery: "mjonozzzflcglhdb",
///             scopeType: azure_native.migrate.ScopeType.ServerGroupId,
///             serverGroupId: "sxwigkygd",
///         },
///         settings: {
///             appSvcContainerSettings: {
///                 isolationRequired: true,
///             },
///             appSvcNativeSettings: {
///                 isolationRequired: true,
///             },
///             azureLocation: "khzvggbrcnpkzrqdtvvyytc",
///             azureSecurityOfferingType: azure_native.migrate.AzureSecurityOfferingType.NO,
///             billingSettings: {
///                 licensingProgram: azure_native.migrate.LicensingProgram.Retail,
///                 subscriptionId: "lakvxkjeqpajer",
///             },
///             currency: azure_native.migrate.AzureCurrency.Unknown,
///             discountPercentage: 12,
///             environmentType: azure_native.migrate.EnvironmentType.Production,
///             performanceData: {
///                 percentile: "Unknown",
///                 perfDataEndTime: "2025-02-21T06:18:34.789Z",
///                 perfDataStartTime: "2025-02-21T06:18:34.789Z",
///                 timeRange: azure_native.migrate.TimeRange.Day,
///             },
///             savingsSettings: {
///                 azureOfferCode: azure_native.migrate.AzureOffer.Unknown,
///                 savingsOptions: azure_native.migrate.SavingsOptions.None,
///             },
///             scalingFactor: 6,
///             sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///         },
///     },
///     resourceGroupName: "rgwebAppAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_assessment_v3_operation = azure_native.migrate.WebAppAssessmentV3Operation("webAppAssessmentV3Operation",
///     assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "fallback_machine_assessment_arm_id": "gfjcubgnh",
///         "scope": {
///             "azure_resource_graph_query": "mjonozzzflcglhdb",
///             "scope_type": azure_native.migrate.ScopeType.SERVER_GROUP_ID,
///             "server_group_id": "sxwigkygd",
///         },
///         "settings": {
///             "app_svc_container_settings": {
///                 "isolation_required": True,
///             },
///             "app_svc_native_settings": {
///                 "isolation_required": True,
///             },
///             "azure_location": "khzvggbrcnpkzrqdtvvyytc",
///             "azure_security_offering_type": azure_native.migrate.AzureSecurityOfferingType.NO,
///             "billing_settings": {
///                 "licensing_program": azure_native.migrate.LicensingProgram.RETAIL,
///                 "subscription_id": "lakvxkjeqpajer",
///             },
///             "currency": azure_native.migrate.AzureCurrency.UNKNOWN,
///             "discount_percentage": 12,
///             "environment_type": azure_native.migrate.EnvironmentType.PRODUCTION,
///             "performance_data": {
///                 "percentile": "Unknown",
///                 "perf_data_end_time": "2025-02-21T06:18:34.789Z",
///                 "perf_data_start_time": "2025-02-21T06:18:34.789Z",
///                 "time_range": azure_native.migrate.TimeRange.DAY,
///             },
///             "savings_settings": {
///                 "azure_offer_code": azure_native.migrate.AzureOffer.UNKNOWN,
///                 "savings_options": azure_native.migrate.SavingsOptions.NONE,
///             },
///             "scaling_factor": 6,
///             "sizing_criterion": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///         },
///     },
///     resource_group_name="rgwebAppAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppAssessmentV3Operation:
///     type: azure-native:migrate:WebAppAssessmentV3Operation
///     properties:
///       assessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         fallbackMachineAssessmentArmId: gfjcubgnh
///         scope:
///           azureResourceGraphQuery: mjonozzzflcglhdb
///           scopeType: ServerGroupId
///           serverGroupId: sxwigkygd
///         settings:
///           appSvcContainerSettings:
///             isolationRequired: true
///           appSvcNativeSettings:
///             isolationRequired: true
///           azureLocation: khzvggbrcnpkzrqdtvvyytc
///           azureSecurityOfferingType: NO
///           billingSettings:
///             licensingProgram: Retail
///             subscriptionId: lakvxkjeqpajer
///           currency: Unknown
///           discountPercentage: 12
///           environmentType: Production
///           performanceData:
///             percentile: Unknown
///             perfDataEndTime: 2025-02-21T06:18:34.789Z
///             perfDataStartTime: 2025-02-21T06:18:34.789Z
///             timeRange: Day
///           savingsSettings:
///             azureOfferCode: Unknown
///             savingsOptions: None
///           scalingFactor: 6
///           sizingCriterion: PerformanceBased
///       resourceGroupName: rgwebAppAssessments
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
/// $ pulumi import azure-native:migrate:WebAppAssessmentV3Operation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/webAppAssessments/{assessmentName}
/// ```
class WebAppAssessmentV3Operation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<WebAppAssessmentV3PropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppAssessmentV3Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAssessmentV3Operation]. {@macro pulumi_migrate_web_app_assessment_v3_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAssessmentV3Operation(
    String name, {
    WebAppAssessmentV3OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:WebAppAssessmentV3Operation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<WebAppAssessmentV3PropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
