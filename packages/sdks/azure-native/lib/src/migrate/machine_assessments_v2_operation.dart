import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_assessment_v2_properties_response.dart';
import 'machine_assessments_v2_operation_args.dart';
import 'system_data_response.dart';

/// Machine assessment V2 resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### MachineAssessmentsV2Operations_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var machineAssessmentsV2Operation = new AzureNative.Migrate.MachineAssessmentsV2Operation("machineAssessmentsV2Operation", new()
///     {
///         AssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.MachineAssessmentV2PropertiesArgs
///         {
///             Scope = new AzureNative.Migrate.Inputs.ScopeArgs
///             {
///                 AzureResourceGraphQuery = "hfhwuqalmenpcttboxvo",
///                 ScopeType = AzureNative.Migrate.ScopeType.ServerGroupId,
///                 ServerGroupId = "f",
///             },
///             Settings = new AzureNative.Migrate.Inputs.MachineAssessmentSettingsArgs
///             {
///                 AzureDiskTypes = new[]
///                 {
///                     AzureNative.Migrate.AzureDiskType.Unknown,
///                 },
///                 AzureHybridUseBenefit = AzureNative.Migrate.AzureHybridUseBenefit.Unknown,
///                 AzureLocation = "rsequlcso",
///                 AzurePricingTier = AzureNative.Migrate.AzurePricingTier.Standard,
///                 AzureSecurityOfferingType = AzureNative.Migrate.AzureSecurityOfferingType.NO,
///                 AzureStorageRedundancy = AzureNative.Migrate.AzureStorageRedundancy.Unknown,
///                 AzureVmFamilies = new[]
///                 {
///                     AzureNative.Migrate.AzureVmFamily.Unknown,
///                 },
///                 AzureVmSecurityOptions = new[]
///                 {
///                     AzureNative.Migrate.AzureVmSecurityType.TVM,
///                 },
///                 BillingSettings = new AzureNative.Migrate.Inputs.BillingSettingsArgs
///                 {
///                     LicensingProgram = AzureNative.Migrate.LicensingProgram.Retail,
///                     SubscriptionId = "lee",
///                 },
///                 Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///                 DiscountPercentage = 5,
///                 EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///                 LinuxAzureHybridUseBenefit = AzureNative.Migrate.AzureHybridUseBenefit.Unknown,
///                 PerformanceData = new AzureNative.Migrate.Inputs.PerformanceDataArgs
///                 {
///                     Percentile = "Unknown",
///                     PerfDataEndTime = "2025-02-21T05:47:51.336Z",
///                     PerfDataStartTime = "2025-02-21T05:47:51.336Z",
///                     TimeRange = AzureNative.Migrate.TimeRange.Day,
///                 },
///                 SavingsSettings = new AzureNative.Migrate.Inputs.SavingsSettingsArgs
///                 {
///                     AzureOfferCode = AzureNative.Migrate.AzureOffer.Unknown,
///                     SavingsOptions = AzureNative.Migrate.SavingsOptions.None,
///                 },
///                 ScalingFactor = 9,
///                 SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///                 VmUptime = new AzureNative.Migrate.Inputs.VmUptimeArgs
///                 {
///                     DaysPerMonth = 9,
///                     HoursPerDay = 10,
///                 },
///             },
///         },
///         ResourceGroupName = "rgmachineAssessments",
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
/// 		_, err := migrate.NewMachineAssessmentsV2Operation(ctx, "machineAssessmentsV2Operation", &migrate.MachineAssessmentsV2OperationArgs{
/// 			AssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:    pulumi.String("contosoProject"),
/// 			Properties: &migrate.MachineAssessmentV2PropertiesArgs{
/// 				Scope: &migrate.ScopeArgs{
/// 					AzureResourceGraphQuery: pulumi.String("hfhwuqalmenpcttboxvo"),
/// 					ScopeType:               pulumi.String(migrate.ScopeTypeServerGroupId),
/// 					ServerGroupId:           pulumi.String("f"),
/// 				},
/// 				Settings: &migrate.MachineAssessmentSettingsArgs{
/// 					AzureDiskTypes: pulumi.StringArray{
/// 						pulumi.String(migrate.AzureDiskTypeUnknown),
/// 					},
/// 					AzureHybridUseBenefit:     pulumi.String(migrate.AzureHybridUseBenefitUnknown),
/// 					AzureLocation:             pulumi.String("rsequlcso"),
/// 					AzurePricingTier:          pulumi.String(migrate.AzurePricingTierStandard),
/// 					AzureSecurityOfferingType: pulumi.String(migrate.AzureSecurityOfferingTypeNO),
/// 					AzureStorageRedundancy:    pulumi.String(migrate.AzureStorageRedundancyUnknown),
/// 					AzureVmFamilies: pulumi.StringArray{
/// 						pulumi.String(migrate.AzureVmFamilyUnknown),
/// 					},
/// 					AzureVmSecurityOptions: pulumi.StringArray{
/// 						pulumi.String(migrate.AzureVmSecurityTypeTVM),
/// 					},
/// 					BillingSettings: &migrate.BillingSettingsArgs{
/// 						LicensingProgram: pulumi.String(migrate.LicensingProgramRetail),
/// 						SubscriptionId:   pulumi.String("lee"),
/// 					},
/// 					Currency:                   pulumi.String(migrate.AzureCurrencyUnknown),
/// 					DiscountPercentage:         pulumi.Float64(5),
/// 					EnvironmentType:            pulumi.String(migrate.EnvironmentTypeProduction),
/// 					LinuxAzureHybridUseBenefit: pulumi.String(migrate.AzureHybridUseBenefitUnknown),
/// 					PerformanceData: &migrate.PerformanceDataArgs{
/// 						Percentile:        pulumi.String("Unknown"),
/// 						PerfDataEndTime:   pulumi.String("2025-02-21T05:47:51.336Z"),
/// 						PerfDataStartTime: pulumi.String("2025-02-21T05:47:51.336Z"),
/// 						TimeRange:         pulumi.String(migrate.TimeRangeDay),
/// 					},
/// 					SavingsSettings: &migrate.SavingsSettingsArgs{
/// 						AzureOfferCode: pulumi.String(migrate.AzureOfferUnknown),
/// 						SavingsOptions: pulumi.String(migrate.SavingsOptionsNone),
/// 					},
/// 					ScalingFactor:   pulumi.Float64(9),
/// 					SizingCriterion: pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 					VmUptime: &migrate.VmUptimeArgs{
/// 						DaysPerMonth: pulumi.Float64(9),
/// 						HoursPerDay:  pulumi.Float64(10),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgmachineAssessments"),
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
/// import com.pulumi.azurenative.migrate.MachineAssessmentsV2Operation;
/// import com.pulumi.azurenative.migrate.MachineAssessmentsV2OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.MachineAssessmentV2PropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.ScopeArgs;
/// import com.pulumi.azurenative.migrate.inputs.MachineAssessmentSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.BillingSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.PerformanceDataArgs;
/// import com.pulumi.azurenative.migrate.inputs.SavingsSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.VmUptimeArgs;
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
///         var machineAssessmentsV2Operation = new MachineAssessmentsV2Operation("machineAssessmentsV2Operation", MachineAssessmentsV2OperationArgs.builder()
///             .assessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(MachineAssessmentV2PropertiesArgs.builder()
///                 .scope(ScopeArgs.builder()
///                     .azureResourceGraphQuery("hfhwuqalmenpcttboxvo")
///                     .scopeType("ServerGroupId")
///                     .serverGroupId("f")
///                     .build())
///                 .settings(MachineAssessmentSettingsArgs.builder()
///                     .azureDiskTypes("Unknown")
///                     .azureHybridUseBenefit("Unknown")
///                     .azureLocation("rsequlcso")
///                     .azurePricingTier("Standard")
///                     .azureSecurityOfferingType("NO")
///                     .azureStorageRedundancy("Unknown")
///                     .azureVmFamilies("Unknown")
///                     .azureVmSecurityOptions("TVM")
///                     .billingSettings(BillingSettingsArgs.builder()
///                         .licensingProgram("Retail")
///                         .subscriptionId("lee")
///                         .build())
///                     .currency("Unknown")
///                     .discountPercentage(5.0)
///                     .environmentType("Production")
///                     .linuxAzureHybridUseBenefit("Unknown")
///                     .performanceData(PerformanceDataArgs.builder()
///                         .percentile("Unknown")
///                         .perfDataEndTime("2025-02-21T05:47:51.336Z")
///                         .perfDataStartTime("2025-02-21T05:47:51.336Z")
///                         .timeRange("Day")
///                         .build())
///                     .savingsSettings(SavingsSettingsArgs.builder()
///                         .azureOfferCode("Unknown")
///                         .savingsOptions("None")
///                         .build())
///                     .scalingFactor(9.0)
///                     .sizingCriterion("PerformanceBased")
///                     .vmUptime(VmUptimeArgs.builder()
///                         .daysPerMonth(9.0)
///                         .hoursPerDay(10.0)
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rgmachineAssessments")
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
/// const machineAssessmentsV2Operation = new azure_native.migrate.MachineAssessmentsV2Operation("machineAssessmentsV2Operation", {
///     assessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         scope: {
///             azureResourceGraphQuery: "hfhwuqalmenpcttboxvo",
///             scopeType: azure_native.migrate.ScopeType.ServerGroupId,
///             serverGroupId: "f",
///         },
///         settings: {
///             azureDiskTypes: [azure_native.migrate.AzureDiskType.Unknown],
///             azureHybridUseBenefit: azure_native.migrate.AzureHybridUseBenefit.Unknown,
///             azureLocation: "rsequlcso",
///             azurePricingTier: azure_native.migrate.AzurePricingTier.Standard,
///             azureSecurityOfferingType: azure_native.migrate.AzureSecurityOfferingType.NO,
///             azureStorageRedundancy: azure_native.migrate.AzureStorageRedundancy.Unknown,
///             azureVmFamilies: [azure_native.migrate.AzureVmFamily.Unknown],
///             azureVmSecurityOptions: [azure_native.migrate.AzureVmSecurityType.TVM],
///             billingSettings: {
///                 licensingProgram: azure_native.migrate.LicensingProgram.Retail,
///                 subscriptionId: "lee",
///             },
///             currency: azure_native.migrate.AzureCurrency.Unknown,
///             discountPercentage: 5,
///             environmentType: azure_native.migrate.EnvironmentType.Production,
///             linuxAzureHybridUseBenefit: azure_native.migrate.AzureHybridUseBenefit.Unknown,
///             performanceData: {
///                 percentile: "Unknown",
///                 perfDataEndTime: "2025-02-21T05:47:51.336Z",
///                 perfDataStartTime: "2025-02-21T05:47:51.336Z",
///                 timeRange: azure_native.migrate.TimeRange.Day,
///             },
///             savingsSettings: {
///                 azureOfferCode: azure_native.migrate.AzureOffer.Unknown,
///                 savingsOptions: azure_native.migrate.SavingsOptions.None,
///             },
///             scalingFactor: 9,
///             sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///             vmUptime: {
///                 daysPerMonth: 9,
///                 hoursPerDay: 10,
///             },
///         },
///     },
///     resourceGroupName: "rgmachineAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// machine_assessments_v2_operation = azure_native.migrate.MachineAssessmentsV2Operation("machineAssessmentsV2Operation",
///     assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "scope": {
///             "azure_resource_graph_query": "hfhwuqalmenpcttboxvo",
///             "scope_type": azure_native.migrate.ScopeType.SERVER_GROUP_ID,
///             "server_group_id": "f",
///         },
///         "settings": {
///             "azure_disk_types": [azure_native.migrate.AzureDiskType.UNKNOWN],
///             "azure_hybrid_use_benefit": azure_native.migrate.AzureHybridUseBenefit.UNKNOWN,
///             "azure_location": "rsequlcso",
///             "azure_pricing_tier": azure_native.migrate.AzurePricingTier.STANDARD,
///             "azure_security_offering_type": azure_native.migrate.AzureSecurityOfferingType.NO,
///             "azure_storage_redundancy": azure_native.migrate.AzureStorageRedundancy.UNKNOWN,
///             "azure_vm_families": [azure_native.migrate.AzureVmFamily.UNKNOWN],
///             "azure_vm_security_options": [azure_native.migrate.AzureVmSecurityType.TVM],
///             "billing_settings": {
///                 "licensing_program": azure_native.migrate.LicensingProgram.RETAIL,
///                 "subscription_id": "lee",
///             },
///             "currency": azure_native.migrate.AzureCurrency.UNKNOWN,
///             "discount_percentage": 5,
///             "environment_type": azure_native.migrate.EnvironmentType.PRODUCTION,
///             "linux_azure_hybrid_use_benefit": azure_native.migrate.AzureHybridUseBenefit.UNKNOWN,
///             "performance_data": {
///                 "percentile": "Unknown",
///                 "perf_data_end_time": "2025-02-21T05:47:51.336Z",
///                 "perf_data_start_time": "2025-02-21T05:47:51.336Z",
///                 "time_range": azure_native.migrate.TimeRange.DAY,
///             },
///             "savings_settings": {
///                 "azure_offer_code": azure_native.migrate.AzureOffer.UNKNOWN,
///                 "savings_options": azure_native.migrate.SavingsOptions.NONE,
///             },
///             "scaling_factor": 9,
///             "sizing_criterion": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///             "vm_uptime": {
///                 "days_per_month": 9,
///                 "hours_per_day": 10,
///             },
///         },
///     },
///     resource_group_name="rgmachineAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   machineAssessmentsV2Operation:
///     type: azure-native:migrate:MachineAssessmentsV2Operation
///     properties:
///       assessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         scope:
///           azureResourceGraphQuery: hfhwuqalmenpcttboxvo
///           scopeType: ServerGroupId
///           serverGroupId: f
///         settings:
///           azureDiskTypes:
///             - Unknown
///           azureHybridUseBenefit: Unknown
///           azureLocation: rsequlcso
///           azurePricingTier: Standard
///           azureSecurityOfferingType: NO
///           azureStorageRedundancy: Unknown
///           azureVmFamilies:
///             - Unknown
///           azureVmSecurityOptions:
///             - TVM
///           billingSettings:
///             licensingProgram: Retail
///             subscriptionId: lee
///           currency: Unknown
///           discountPercentage: 5
///           environmentType: Production
///           linuxAzureHybridUseBenefit: Unknown
///           performanceData:
///             percentile: Unknown
///             perfDataEndTime: 2025-02-21T05:47:51.336Z
///             perfDataStartTime: 2025-02-21T05:47:51.336Z
///             timeRange: Day
///           savingsSettings:
///             azureOfferCode: Unknown
///             savingsOptions: None
///           scalingFactor: 9
///           sizingCriterion: PerformanceBased
///           vmUptime:
///             daysPerMonth: 9
///             hoursPerDay: 10
///       resourceGroupName: rgmachineAssessments
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
/// $ pulumi import azure-native:migrate:MachineAssessmentsV2Operation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/assessments/{assessmentName}
/// ```
class MachineAssessmentsV2Operation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<MachineAssessmentV2PropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MachineAssessmentsV2Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MachineAssessmentsV2Operation]. {@macro pulumi_migrate_machine_assessments_v2_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MachineAssessmentsV2Operation(
    String name, {
    MachineAssessmentsV2OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:MachineAssessmentsV2Operation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MachineAssessmentV2PropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MachineAssessmentV2PropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
