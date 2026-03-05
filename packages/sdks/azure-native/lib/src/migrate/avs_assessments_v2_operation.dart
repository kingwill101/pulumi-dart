import 'package:pulumi/pulumi.dart' as pulumi;
import 'avs_assessment_properties_v2_response.dart';
import 'avs_assessments_v2_operation_args.dart';
import 'system_data_response.dart';

/// AVS assessment V2 resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AvsAssessmentsV2Operations_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var avsAssessmentsV2Operation = new AzureNative.Migrate.AvsAssessmentsV2Operation("avsAssessmentsV2Operation", new()
///     {
///         AssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.AvsAssessmentPropertiesV2Args
///         {
///             FallbackMachineAssessmentArmId = "tpjvxfcyxsgngqdxyrrfh",
///             Scope = new AzureNative.Migrate.Inputs.ScopeArgs
///             {
///                 AzureResourceGraphQuery = "ylnfwgptlyzwzkotmunbx",
///                 ScopeType = AzureNative.Migrate.ScopeType.ServerGroupId,
///                 ServerGroupId = "fxonspfmzfuiaepr",
///             },
///             Settings = new AzureNative.Migrate.Inputs.AvsAssessmentSettingsArgs
///             {
///                 AvsAssessmentScenario = AzureNative.Migrate.AvsAssessmentScenario.Unknown,
///                 AzureLocation = "actuloeieva",
///                 BillingSettings = new AzureNative.Migrate.Inputs.BillingSettingsArgs
///                 {
///                     LicensingProgram = AzureNative.Migrate.LicensingProgram.Retail,
///                     SubscriptionId = "xvtuenxmmjuqlhgmvev",
///                 },
///                 CpuHeadroom = 27,
///                 Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///                 DedupeCompression = 26,
///                 DiscountPercentage = 27,
///                 EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///                 ExternalStorageTypes = new[]
///                 {
///                     AzureNative.Migrate.ExternalStorageType.Unknown,
///                 },
///                 FailuresToTolerateAndRaidLevelList = new[]
///                 {
///                     AzureNative.Migrate.FttAndRaidLevel.Unknown,
///                 },
///                 IsStretchClusterEnabled = true,
///                 IsVcfByolEnabled = true,
///                 MemOvercommit = 11,
///                 NodeTypes = new[]
///                 {
///                     AzureNative.Migrate.AzureAvsNodeType.Unknown,
///                 },
///                 PerformanceData = new AzureNative.Migrate.Inputs.PerformanceDataArgs
///                 {
///                     Percentile = "Unknown",
///                     PerfDataEndTime = "2025-02-21T05:36:34.751Z",
///                     PerfDataStartTime = "2025-02-21T05:36:34.751Z",
///                     TimeRange = AzureNative.Migrate.TimeRange.Day,
///                 },
///                 SavingsSettings = new AzureNative.Migrate.Inputs.SavingsSettingsArgs
///                 {
///                     AzureOfferCode = AzureNative.Migrate.AzureOffer.Unknown,
///                     SavingsOptions = AzureNative.Migrate.SavingsOptions.None,
///                 },
///                 ScalingFactor = 28,
///                 SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///                 VcpuOversubscription = 25,
///             },
///         },
///         ResourceGroupName = "rgavsAssessments",
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
/// 		_, err := migrate.NewAvsAssessmentsV2Operation(ctx, "avsAssessmentsV2Operation", &migrate.AvsAssessmentsV2OperationArgs{
/// 			AssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:    pulumi.String("contosoProject"),
/// 			Properties: &migrate.AvsAssessmentPropertiesV2Args{
/// 				FallbackMachineAssessmentArmId: pulumi.String("tpjvxfcyxsgngqdxyrrfh"),
/// 				Scope: &migrate.ScopeArgs{
/// 					AzureResourceGraphQuery: pulumi.String("ylnfwgptlyzwzkotmunbx"),
/// 					ScopeType:               pulumi.String(migrate.ScopeTypeServerGroupId),
/// 					ServerGroupId:           pulumi.String("fxonspfmzfuiaepr"),
/// 				},
/// 				Settings: &migrate.AvsAssessmentSettingsArgs{
/// 					AvsAssessmentScenario: pulumi.String(migrate.AvsAssessmentScenarioUnknown),
/// 					AzureLocation:         pulumi.String("actuloeieva"),
/// 					BillingSettings: &migrate.BillingSettingsArgs{
/// 						LicensingProgram: pulumi.String(migrate.LicensingProgramRetail),
/// 						SubscriptionId:   pulumi.String("xvtuenxmmjuqlhgmvev"),
/// 					},
/// 					CpuHeadroom:        pulumi.Float64(27),
/// 					Currency:           pulumi.String(migrate.AzureCurrencyUnknown),
/// 					DedupeCompression:  pulumi.Float64(26),
/// 					DiscountPercentage: pulumi.Float64(27),
/// 					EnvironmentType:    pulumi.String(migrate.EnvironmentTypeProduction),
/// 					ExternalStorageTypes: pulumi.StringArray{
/// 						pulumi.String(migrate.ExternalStorageTypeUnknown),
/// 					},
/// 					FailuresToTolerateAndRaidLevelList: pulumi.StringArray{
/// 						pulumi.String(migrate.FttAndRaidLevelUnknown),
/// 					},
/// 					IsStretchClusterEnabled: pulumi.Bool(true),
/// 					IsVcfByolEnabled:        pulumi.Bool(true),
/// 					MemOvercommit:           pulumi.Float64(11),
/// 					NodeTypes: pulumi.StringArray{
/// 						pulumi.String(migrate.AzureAvsNodeTypeUnknown),
/// 					},
/// 					PerformanceData: &migrate.PerformanceDataArgs{
/// 						Percentile:        pulumi.String("Unknown"),
/// 						PerfDataEndTime:   pulumi.String("2025-02-21T05:36:34.751Z"),
/// 						PerfDataStartTime: pulumi.String("2025-02-21T05:36:34.751Z"),
/// 						TimeRange:         pulumi.String(migrate.TimeRangeDay),
/// 					},
/// 					SavingsSettings: &migrate.SavingsSettingsArgs{
/// 						AzureOfferCode: pulumi.String(migrate.AzureOfferUnknown),
/// 						SavingsOptions: pulumi.String(migrate.SavingsOptionsNone),
/// 					},
/// 					ScalingFactor:        pulumi.Float64(28),
/// 					SizingCriterion:      pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 					VcpuOversubscription: pulumi.Float64(25),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgavsAssessments"),
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
/// import com.pulumi.azurenative.migrate.AvsAssessmentsV2Operation;
/// import com.pulumi.azurenative.migrate.AvsAssessmentsV2OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.AvsAssessmentPropertiesV2Args;
/// import com.pulumi.azurenative.migrate.inputs.ScopeArgs;
/// import com.pulumi.azurenative.migrate.inputs.AvsAssessmentSettingsArgs;
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
///         var avsAssessmentsV2Operation = new AvsAssessmentsV2Operation("avsAssessmentsV2Operation", AvsAssessmentsV2OperationArgs.builder()
///             .assessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(AvsAssessmentPropertiesV2Args.builder()
///                 .fallbackMachineAssessmentArmId("tpjvxfcyxsgngqdxyrrfh")
///                 .scope(ScopeArgs.builder()
///                     .azureResourceGraphQuery("ylnfwgptlyzwzkotmunbx")
///                     .scopeType("ServerGroupId")
///                     .serverGroupId("fxonspfmzfuiaepr")
///                     .build())
///                 .settings(AvsAssessmentSettingsArgs.builder()
///                     .avsAssessmentScenario("Unknown")
///                     .azureLocation("actuloeieva")
///                     .billingSettings(BillingSettingsArgs.builder()
///                         .licensingProgram("Retail")
///                         .subscriptionId("xvtuenxmmjuqlhgmvev")
///                         .build())
///                     .cpuHeadroom(27.0)
///                     .currency("Unknown")
///                     .dedupeCompression(26.0)
///                     .discountPercentage(27.0)
///                     .environmentType("Production")
///                     .externalStorageTypes("Unknown")
///                     .failuresToTolerateAndRaidLevelList("Unknown")
///                     .isStretchClusterEnabled(true)
///                     .isVcfByolEnabled(true)
///                     .memOvercommit(11.0)
///                     .nodeTypes("Unknown")
///                     .performanceData(PerformanceDataArgs.builder()
///                         .percentile("Unknown")
///                         .perfDataEndTime("2025-02-21T05:36:34.751Z")
///                         .perfDataStartTime("2025-02-21T05:36:34.751Z")
///                         .timeRange("Day")
///                         .build())
///                     .savingsSettings(SavingsSettingsArgs.builder()
///                         .azureOfferCode("Unknown")
///                         .savingsOptions("None")
///                         .build())
///                     .scalingFactor(28.0)
///                     .sizingCriterion("PerformanceBased")
///                     .vcpuOversubscription(25.0)
///                     .build())
///                 .build())
///             .resourceGroupName("rgavsAssessments")
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
/// const avsAssessmentsV2Operation = new azure_native.migrate.AvsAssessmentsV2Operation("avsAssessmentsV2Operation", {
///     assessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         fallbackMachineAssessmentArmId: "tpjvxfcyxsgngqdxyrrfh",
///         scope: {
///             azureResourceGraphQuery: "ylnfwgptlyzwzkotmunbx",
///             scopeType: azure_native.migrate.ScopeType.ServerGroupId,
///             serverGroupId: "fxonspfmzfuiaepr",
///         },
///         settings: {
///             avsAssessmentScenario: azure_native.migrate.AvsAssessmentScenario.Unknown,
///             azureLocation: "actuloeieva",
///             billingSettings: {
///                 licensingProgram: azure_native.migrate.LicensingProgram.Retail,
///                 subscriptionId: "xvtuenxmmjuqlhgmvev",
///             },
///             cpuHeadroom: 27,
///             currency: azure_native.migrate.AzureCurrency.Unknown,
///             dedupeCompression: 26,
///             discountPercentage: 27,
///             environmentType: azure_native.migrate.EnvironmentType.Production,
///             externalStorageTypes: [azure_native.migrate.ExternalStorageType.Unknown],
///             failuresToTolerateAndRaidLevelList: [azure_native.migrate.FttAndRaidLevel.Unknown],
///             isStretchClusterEnabled: true,
///             isVcfByolEnabled: true,
///             memOvercommit: 11,
///             nodeTypes: [azure_native.migrate.AzureAvsNodeType.Unknown],
///             performanceData: {
///                 percentile: "Unknown",
///                 perfDataEndTime: "2025-02-21T05:36:34.751Z",
///                 perfDataStartTime: "2025-02-21T05:36:34.751Z",
///                 timeRange: azure_native.migrate.TimeRange.Day,
///             },
///             savingsSettings: {
///                 azureOfferCode: azure_native.migrate.AzureOffer.Unknown,
///                 savingsOptions: azure_native.migrate.SavingsOptions.None,
///             },
///             scalingFactor: 28,
///             sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///             vcpuOversubscription: 25,
///         },
///     },
///     resourceGroupName: "rgavsAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// avs_assessments_v2_operation = azure_native.migrate.AvsAssessmentsV2Operation("avsAssessmentsV2Operation",
///     assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "fallback_machine_assessment_arm_id": "tpjvxfcyxsgngqdxyrrfh",
///         "scope": {
///             "azure_resource_graph_query": "ylnfwgptlyzwzkotmunbx",
///             "scope_type": azure_native.migrate.ScopeType.SERVER_GROUP_ID,
///             "server_group_id": "fxonspfmzfuiaepr",
///         },
///         "settings": {
///             "avs_assessment_scenario": azure_native.migrate.AvsAssessmentScenario.UNKNOWN,
///             "azure_location": "actuloeieva",
///             "billing_settings": {
///                 "licensing_program": azure_native.migrate.LicensingProgram.RETAIL,
///                 "subscription_id": "xvtuenxmmjuqlhgmvev",
///             },
///             "cpu_headroom": 27,
///             "currency": azure_native.migrate.AzureCurrency.UNKNOWN,
///             "dedupe_compression": 26,
///             "discount_percentage": 27,
///             "environment_type": azure_native.migrate.EnvironmentType.PRODUCTION,
///             "external_storage_types": [azure_native.migrate.ExternalStorageType.UNKNOWN],
///             "failures_to_tolerate_and_raid_level_list": [azure_native.migrate.FttAndRaidLevel.UNKNOWN],
///             "is_stretch_cluster_enabled": True,
///             "is_vcf_byol_enabled": True,
///             "mem_overcommit": 11,
///             "node_types": [azure_native.migrate.AzureAvsNodeType.UNKNOWN],
///             "performance_data": {
///                 "percentile": "Unknown",
///                 "perf_data_end_time": "2025-02-21T05:36:34.751Z",
///                 "perf_data_start_time": "2025-02-21T05:36:34.751Z",
///                 "time_range": azure_native.migrate.TimeRange.DAY,
///             },
///             "savings_settings": {
///                 "azure_offer_code": azure_native.migrate.AzureOffer.UNKNOWN,
///                 "savings_options": azure_native.migrate.SavingsOptions.NONE,
///             },
///             "scaling_factor": 28,
///             "sizing_criterion": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///             "vcpu_oversubscription": 25,
///         },
///     },
///     resource_group_name="rgavsAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   avsAssessmentsV2Operation:
///     type: azure-native:migrate:AvsAssessmentsV2Operation
///     properties:
///       assessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         fallbackMachineAssessmentArmId: tpjvxfcyxsgngqdxyrrfh
///         scope:
///           azureResourceGraphQuery: ylnfwgptlyzwzkotmunbx
///           scopeType: ServerGroupId
///           serverGroupId: fxonspfmzfuiaepr
///         settings:
///           avsAssessmentScenario: Unknown
///           azureLocation: actuloeieva
///           billingSettings:
///             licensingProgram: Retail
///             subscriptionId: xvtuenxmmjuqlhgmvev
///           cpuHeadroom: 27
///           currency: Unknown
///           dedupeCompression: 26
///           discountPercentage: 27
///           environmentType: Production
///           externalStorageTypes:
///             - Unknown
///           failuresToTolerateAndRaidLevelList:
///             - Unknown
///           isStretchClusterEnabled: true
///           isVcfByolEnabled: true
///           memOvercommit: 11
///           nodeTypes:
///             - Unknown
///           performanceData:
///             percentile: Unknown
///             perfDataEndTime: 2025-02-21T05:36:34.751Z
///             perfDataStartTime: 2025-02-21T05:36:34.751Z
///             timeRange: Day
///           savingsSettings:
///             azureOfferCode: Unknown
///             savingsOptions: None
///           scalingFactor: 28
///           sizingCriterion: PerformanceBased
///           vcpuOversubscription: 25
///       resourceGroupName: rgavsAssessments
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
/// $ pulumi import azure-native:migrate:AvsAssessmentsV2Operation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/avsAssessments/{assessmentName}
/// ```
class AvsAssessmentsV2Operation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AvsAssessmentPropertiesV2Response> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AvsAssessmentsV2Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvsAssessmentsV2Operation]. {@macro pulumi_migrate_avs_assessments_v2_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvsAssessmentsV2Operation(
    String name, {
    AvsAssessmentsV2OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:AvsAssessmentsV2Operation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AvsAssessmentPropertiesV2Response>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AvsAssessmentPropertiesV2Response.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
