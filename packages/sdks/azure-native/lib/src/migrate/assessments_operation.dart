import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessments_operation_args.dart';
import 'system_data_response.dart';
import 'vm_uptime_assessments_operation_response.dart';

/// Machine assessment resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AssessmentsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessmentsOperation = new AzureNative.Migrate.AssessmentsOperation("assessmentsOperation", new()
///     {
///         AssessmentName = "asm1",
///         AzureDiskTypes = new[]
///         {
///             AzureNative.Migrate.AzureDiskType.Premium,
///             AzureNative.Migrate.AzureDiskType.PremiumV2,
///             AzureNative.Migrate.AzureDiskType.StandardSSD,
///         },
///         AzureHybridUseBenefit = AzureNative.Migrate.AzureHybridUseBenefit.Unknown,
///         AzureLocation = "njxbwdtsxzhichsnk",
///         AzureOfferCode = AzureNative.Migrate.AzureOfferCode.Unknown,
///         AzurePricingTier = AzureNative.Migrate.AzurePricingTier.Standard,
///         AzureStorageRedundancy = AzureNative.Migrate.AzureStorageRedundancy.Unknown,
///         AzureVmFamilies = new[]
///         {
///             AzureNative.Migrate.AzureVmFamily.DSeries,
///             AzureNative.Migrate.AzureVmFamily.Lsv2Series,
///             AzureNative.Migrate.AzureVmFamily.MSeries,
///             AzureNative.Migrate.AzureVmFamily.Mdsv2Series,
///             AzureNative.Migrate.AzureVmFamily.Msv2Series,
///             AzureNative.Migrate.AzureVmFamily.Mv2Series,
///         },
///         Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///         DiscountPercentage = 6,
///         EaSubscriptionId = "kwsu",
///         GroupName = "kuchatur-test",
///         LinuxAzureHybridUseBenefit = AzureNative.Migrate.AzureHybridUseBenefit.Unknown,
///         Percentile = AzureNative.Migrate.Percentile.Percentile50,
///         PerfDataEndTime = "2023-09-26T09:36:48.491Z",
///         PerfDataStartTime = "2023-09-26T09:36:48.491Z",
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ReservedInstance = AzureNative.Migrate.AzureReservedInstance.None,
///         ResourceGroupName = "ayagrawrg",
///         ScalingFactor = 24,
///         SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///         TimeRange = AzureNative.Migrate.TimeRange.Day,
///         VmUptime = new AzureNative.Migrate.Inputs.VmUptimeArgs
///         {
///             DaysPerMonth = 13,
///             HoursPerDay = 26,
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
/// 		_, err := migrate.NewAssessmentsOperation(ctx, "assessmentsOperation", &migrate.AssessmentsOperationArgs{
/// 			AssessmentName: pulumi.String("asm1"),
/// 			AzureDiskTypes: pulumi.StringArray{
/// 				pulumi.String(migrate.AzureDiskTypePremium),
/// 				pulumi.String(migrate.AzureDiskTypePremiumV2),
/// 				pulumi.String(migrate.AzureDiskTypeStandardSSD),
/// 			},
/// 			AzureHybridUseBenefit:  pulumi.String(migrate.AzureHybridUseBenefitUnknown),
/// 			AzureLocation:          pulumi.String("njxbwdtsxzhichsnk"),
/// 			AzureOfferCode:         pulumi.String(migrate.AzureOfferCodeUnknown),
/// 			AzurePricingTier:       pulumi.String(migrate.AzurePricingTierStandard),
/// 			AzureStorageRedundancy: pulumi.String(migrate.AzureStorageRedundancyUnknown),
/// 			AzureVmFamilies: pulumi.StringArray{
/// 				pulumi.String(migrate.AzureVmFamilyDSeries),
/// 				pulumi.String(migrate.AzureVmFamilyLsv2Series),
/// 				pulumi.String(migrate.AzureVmFamilyMSeries),
/// 				pulumi.String(migrate.AzureVmFamilyMdsv2Series),
/// 				pulumi.String(migrate.AzureVmFamilyMsv2Series),
/// 				pulumi.String(migrate.AzureVmFamilyMv2Series),
/// 			},
/// 			Currency:                   pulumi.String(migrate.AzureCurrencyUnknown),
/// 			DiscountPercentage:         pulumi.Float64(6),
/// 			EaSubscriptionId:           pulumi.String("kwsu"),
/// 			GroupName:                  pulumi.String("kuchatur-test"),
/// 			LinuxAzureHybridUseBenefit: pulumi.String(migrate.AzureHybridUseBenefitUnknown),
/// 			Percentile:                 pulumi.String(migrate.PercentilePercentile50),
/// 			PerfDataEndTime:            pulumi.String("2023-09-26T09:36:48.491Z"),
/// 			PerfDataStartTime:          pulumi.String("2023-09-26T09:36:48.491Z"),
/// 			ProjectName:                pulumi.String("app18700project"),
/// 			ProvisioningState:          pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ReservedInstance:           pulumi.String(migrate.AzureReservedInstanceNone),
/// 			ResourceGroupName:          pulumi.String("ayagrawrg"),
/// 			ScalingFactor:              pulumi.Float64(24),
/// 			SizingCriterion:            pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 			TimeRange:                  pulumi.String(migrate.TimeRangeDay),
/// 			VmUptime: &migrate.VmUptimeArgs{
/// 				DaysPerMonth: pulumi.Float64(13),
/// 				HoursPerDay:  pulumi.Float64(26),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_migrate_assessmentsoperation" "assessmentsOperation" {
///   assessment_name                = "asm1"
///   azure_disk_types               = ["Premium", "PremiumV2", "StandardSSD"]
///   azure_hybrid_use_benefit       = "Unknown"
///   azure_location                 = "njxbwdtsxzhichsnk"
///   azure_offer_code               = "Unknown"
///   azure_pricing_tier             = "Standard"
///   azure_storage_redundancy       = "Unknown"
///   azure_vm_families              = ["D_series", "Lsv2_series", "M_series", "Mdsv2_series", "Msv2_series", "Mv2_series"]
///   currency                       = "Unknown"
///   discount_percentage            = 6
///   ea_subscription_id             = "kwsu"
///   group_name                     = "kuchatur-test"
///   linux_azure_hybrid_use_benefit = "Unknown"
///   percentile                     = "Percentile50"
///   perf_data_end_time             = "2023-09-26T09:36:48.491Z"
///   perf_data_start_time           = "2023-09-26T09:36:48.491Z"
///   project_name                   = "app18700project"
///   provisioning_state             = "Succeeded"
///   reserved_instance              = "None"
///   resource_group_name            = "ayagrawrg"
///   scaling_factor                 = 24
///   sizing_criterion               = "PerformanceBased"
///   time_range                     = "Day"
///   vm_uptime = {
///     days_per_month = 13
///     hours_per_day  = 26
///   }
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
/// import com.pulumi.azurenative.migrate.AssessmentsOperation;
/// import com.pulumi.azurenative.migrate.AssessmentsOperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.VmUptimeArgs;
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
///         var assessmentsOperation = new AssessmentsOperation("assessmentsOperation", AssessmentsOperationArgs.builder()
///             .assessmentName("asm1")
///             .azureDiskTypes(
///                 "Premium",
///                 "PremiumV2",
///                 "StandardSSD")
///             .azureHybridUseBenefit("Unknown")
///             .azureLocation("njxbwdtsxzhichsnk")
///             .azureOfferCode("Unknown")
///             .azurePricingTier("Standard")
///             .azureStorageRedundancy("Unknown")
///             .azureVmFamilies(
///                 "D_series",
///                 "Lsv2_series",
///                 "M_series",
///                 "Mdsv2_series",
///                 "Msv2_series",
///                 "Mv2_series")
///             .currency("Unknown")
///             .discountPercentage(6.0)
///             .eaSubscriptionId("kwsu")
///             .groupName("kuchatur-test")
///             .linuxAzureHybridUseBenefit("Unknown")
///             .percentile("Percentile50")
///             .perfDataEndTime("2023-09-26T09:36:48.491Z")
///             .perfDataStartTime("2023-09-26T09:36:48.491Z")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .reservedInstance("None")
///             .resourceGroupName("ayagrawrg")
///             .scalingFactor(24.0)
///             .sizingCriterion("PerformanceBased")
///             .timeRange("Day")
///             .vmUptime(VmUptimeArgs.builder()
///                 .daysPerMonth(13.0)
///                 .hoursPerDay(26.0)
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
/// const assessmentsOperation = new azure_native.migrate.AssessmentsOperation("assessmentsOperation", {
///     assessmentName: "asm1",
///     azureDiskTypes: [
///         azure_native.migrate.AzureDiskType.Premium,
///         azure_native.migrate.AzureDiskType.PremiumV2,
///         azure_native.migrate.AzureDiskType.StandardSSD,
///     ],
///     azureHybridUseBenefit: azure_native.migrate.AzureHybridUseBenefit.Unknown,
///     azureLocation: "njxbwdtsxzhichsnk",
///     azureOfferCode: azure_native.migrate.AzureOfferCode.Unknown,
///     azurePricingTier: azure_native.migrate.AzurePricingTier.Standard,
///     azureStorageRedundancy: azure_native.migrate.AzureStorageRedundancy.Unknown,
///     azureVmFamilies: [
///         azure_native.migrate.AzureVmFamily.DSeries,
///         azure_native.migrate.AzureVmFamily.Lsv2Series,
///         azure_native.migrate.AzureVmFamily.MSeries,
///         azure_native.migrate.AzureVmFamily.Mdsv2Series,
///         azure_native.migrate.AzureVmFamily.Msv2Series,
///         azure_native.migrate.AzureVmFamily.Mv2Series,
///     ],
///     currency: azure_native.migrate.AzureCurrency.Unknown,
///     discountPercentage: 6,
///     eaSubscriptionId: "kwsu",
///     groupName: "kuchatur-test",
///     linuxAzureHybridUseBenefit: azure_native.migrate.AzureHybridUseBenefit.Unknown,
///     percentile: azure_native.migrate.Percentile.Percentile50,
///     perfDataEndTime: "2023-09-26T09:36:48.491Z",
///     perfDataStartTime: "2023-09-26T09:36:48.491Z",
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     reservedInstance: azure_native.migrate.AzureReservedInstance.None,
///     resourceGroupName: "ayagrawrg",
///     scalingFactor: 24,
///     sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///     timeRange: azure_native.migrate.TimeRange.Day,
///     vmUptime: {
///         daysPerMonth: 13,
///         hoursPerDay: 26,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessments_operation = azure_native.migrate.AssessmentsOperation("assessmentsOperation",
///     assessment_name="asm1",
///     azure_disk_types=[
///         azure_native.migrate.AzureDiskType.PREMIUM,
///         azure_native.migrate.AzureDiskType.PREMIUM_V2,
///         azure_native.migrate.AzureDiskType.STANDARD_SSD,
///     ],
///     azure_hybrid_use_benefit=azure_native.migrate.AzureHybridUseBenefit.UNKNOWN,
///     azure_location="njxbwdtsxzhichsnk",
///     azure_offer_code=azure_native.migrate.AzureOfferCode.UNKNOWN,
///     azure_pricing_tier=azure_native.migrate.AzurePricingTier.STANDARD,
///     azure_storage_redundancy=azure_native.migrate.AzureStorageRedundancy.UNKNOWN,
///     azure_vm_families=[
///         azure_native.migrate.AzureVmFamily.D_SERIES,
///         azure_native.migrate.AzureVmFamily.LSV2_SERIES,
///         azure_native.migrate.AzureVmFamily.M_SERIES,
///         azure_native.migrate.AzureVmFamily.MDSV2_SERIES,
///         azure_native.migrate.AzureVmFamily.MSV2_SERIES,
///         azure_native.migrate.AzureVmFamily.MV2_SERIES,
///     ],
///     currency=azure_native.migrate.AzureCurrency.UNKNOWN,
///     discount_percentage=float(6),
///     ea_subscription_id="kwsu",
///     group_name="kuchatur-test",
///     linux_azure_hybrid_use_benefit=azure_native.migrate.AzureHybridUseBenefit.UNKNOWN,
///     percentile=azure_native.migrate.Percentile.PERCENTILE50,
///     perf_data_end_time="2023-09-26T09:36:48.491Z",
///     perf_data_start_time="2023-09-26T09:36:48.491Z",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     reserved_instance=azure_native.migrate.AzureReservedInstance.NONE,
///     resource_group_name="ayagrawrg",
///     scaling_factor=float(24),
///     sizing_criterion=azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///     time_range=azure_native.migrate.TimeRange.DAY,
///     vm_uptime={
///         "days_per_month": float(13),
///         "hours_per_day": float(26),
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   assessmentsOperation:
///     type: azure-native:migrate:AssessmentsOperation
///     properties:
///       assessmentName: asm1
///       azureDiskTypes:
///         - Premium
///         - PremiumV2
///         - StandardSSD
///       azureHybridUseBenefit: Unknown
///       azureLocation: njxbwdtsxzhichsnk
///       azureOfferCode: Unknown
///       azurePricingTier: Standard
///       azureStorageRedundancy: Unknown
///       azureVmFamilies:
///         - D_series
///         - Lsv2_series
///         - M_series
///         - Mdsv2_series
///         - Msv2_series
///         - Mv2_series
///       currency: Unknown
///       discountPercentage: 6
///       eaSubscriptionId: kwsu
///       groupName: kuchatur-test
///       linuxAzureHybridUseBenefit: Unknown
///       percentile: Percentile50
///       perfDataEndTime: 2023-09-26T09:36:48.491Z
///       perfDataStartTime: 2023-09-26T09:36:48.491Z
///       projectName: app18700project
///       provisioningState: Succeeded
///       reservedInstance: None
///       resourceGroupName: ayagrawrg
///       scalingFactor: 24
///       sizingCriterion: PerformanceBased
///       timeRange: Day
///       vmUptime:
///         daysPerMonth: 13
///         hoursPerDay: 26
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
/// $ pulumi import azure-native:migrate:AssessmentsOperation asm1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/assessments/{assessmentName}
/// ```
class AssessmentsOperation extends pulumi.CustomResource {
  /// Gets or sets the assessment error summary.
  /// This is the number of
  /// machines affected by each type of error in this assessment.
  late final pulumi.Output<Map<String, int>> assessmentErrorSummary;
  /// Assessment type of the assessment.
  late final pulumi.Output<String> assessmentType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the azure storage type. Premium, Standard etc.
  late final pulumi.Output<List<String>?> azureDiskTypes;
  /// Gets or sets the user configurable setting to display the azure hybrid use
  /// benefit.
  late final pulumi.Output<String?> azureHybridUseBenefit;
  /// Azure Location or Azure region where to which the machines will be migrated.
  late final pulumi.Output<String?> azureLocation;
  /// Azure Offer Code.
  late final pulumi.Output<String?> azureOfferCode;
  /// Gets or sets Azure Pricing Tier - Free, Basic, etc.
  late final pulumi.Output<String?> azurePricingTier;
  /// Gets or sets the Azure Storage Redundancy. Example: Locally Redundant Storage.
  late final pulumi.Output<String?> azureStorageRedundancy;
  /// Gets or sets the Azure VM families.
  late final pulumi.Output<List<String>?> azureVmFamilies;
  /// Confidence Rating in Percentage.
  late final pulumi.Output<double> confidenceRatingInPercentage;
  /// Gets the collection of cost components.
  late final pulumi.Output<List<Map<String, dynamic>>> costComponents;
  /// Date and Time when assessment was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Currency in which prices should be reported.
  late final pulumi.Output<String?> currency;
  /// Custom discount percentage.
  late final pulumi.Output<double?> discountPercentage;
  /// Gets the distribution by os name.
  late final pulumi.Output<Map<String, int>> distributionByOsName;
  /// Gets the distribution distribution of sqlInstances by service pack insight.
  late final pulumi.Output<Map<String, int>> distributionByServicePackInsight;
  /// Gets the distribution of sqlInstances by support status.
  late final pulumi.Output<Map<String, int>> distributionBySupportStatus;
  /// Gets or sets enterprise agreement subscription id.
  late final pulumi.Output<String?> eaSubscriptionId;
  /// Gets the group type for the assessment.
  late final pulumi.Output<String> groupType;
  /// Gets or sets the user configurable setting to display the linux azure hybrid use
  /// benefit.
  late final pulumi.Output<String?> linuxAzureHybridUseBenefit;
  /// Gets or sets the aggregate Bandwidth Cost for all machines in the assessment.
  late final pulumi.Output<double> monthlyBandwidthCost;
  /// Gets or sets the aggregate Compute Cost for all machines in the assessment.
  late final pulumi.Output<double> monthlyComputeCost;
  /// Gets or sets the aggregate premium storage cost for all machines in the
  /// assessment.
  late final pulumi.Output<double> monthlyPremiumStorageCost;
  /// Gets or sets the aggregate standard SSD storage cost for all the machines in
  /// the assessment.
  late final pulumi.Output<double> monthlyStandardSsdStorageCost;
  /// Gets or sets the aggregate Storage Cost for all machines in the assessment.
  late final pulumi.Output<double> monthlyStorageCost;
  /// Gets or sets the aggregate ultra storage cost for all machines in the
  /// assessment.
  late final pulumi.Output<double> monthlyUltraStorageCost;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the Number of machines part of the assessment.
  late final pulumi.Output<int> numberOfMachines;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  late final pulumi.Output<String?> percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  late final pulumi.Output<String?> perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  late final pulumi.Output<String?> perfDataStartTime;
  /// Last time when rates were queried.
  late final pulumi.Output<String> pricesTimestamp;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Gets or sets the Azure Reserved Instance - 1-Year, 3-Year.
  late final pulumi.Output<String?> reservedInstance;
  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  late final pulumi.Output<double?> scalingFactor;
  /// Schema version.
  late final pulumi.Output<String> schemaVersion;
  /// Assessment sizing criterion.
  late final pulumi.Output<String?> sizingCriterion;
  /// User configurable setting to display the Stage of Assessment.
  late final pulumi.Output<String> stage;
  /// Whether assessment is in valid state and all machines have been assessed.
  late final pulumi.Output<String> status;
  /// Gets or sets the Cloud suitability summary for all the machines in the
  /// assessment.
  late final pulumi.Output<Map<String, int>> suitabilitySummary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  late final pulumi.Output<String?> timeRange;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Date and Time when assessment was last updated.
  late final pulumi.Output<String> updatedTimestamp;
  /// Gets or sets the duration for which the VMs are up in the on-premises
  /// environment.
  late final pulumi.Output<VmUptimeAssessmentsOperationResponse?> vmUptime;

  /// Creates a new [AssessmentsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentsOperation]. {@macro pulumi_migrate_assessments_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentsOperation(
    String name, {
    AssessmentsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:AssessmentsOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assessmentErrorSummary = registerOutput<Map<String, int>>('assessmentErrorSummary');
    assessmentType = registerOutput<String>('assessmentType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureDiskTypes = registerOutput<List<String>?>('azureDiskTypes');
    azureHybridUseBenefit = registerOutput<String?>('azureHybridUseBenefit');
    azureLocation = registerOutput<String?>('azureLocation');
    azureOfferCode = registerOutput<String?>('azureOfferCode');
    azurePricingTier = registerOutput<String?>('azurePricingTier');
    azureStorageRedundancy = registerOutput<String?>('azureStorageRedundancy');
    azureVmFamilies = registerOutput<List<String>?>('azureVmFamilies');
    confidenceRatingInPercentage = registerOutput<double>('confidenceRatingInPercentage');
    costComponents = registerOutput<List<Map<String, dynamic>>>('costComponents');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    currency = registerOutput<String?>('currency');
    discountPercentage = registerOutput<double?>('discountPercentage');
    distributionByOsName = registerOutput<Map<String, int>>('distributionByOsName');
    distributionByServicePackInsight = registerOutput<Map<String, int>>('distributionByServicePackInsight');
    distributionBySupportStatus = registerOutput<Map<String, int>>('distributionBySupportStatus');
    eaSubscriptionId = registerOutput<String?>('eaSubscriptionId');
    groupType = registerOutput<String>('groupType');
    linuxAzureHybridUseBenefit = registerOutput<String?>('linuxAzureHybridUseBenefit');
    monthlyBandwidthCost = registerOutput<double>('monthlyBandwidthCost');
    monthlyComputeCost = registerOutput<double>('monthlyComputeCost');
    monthlyPremiumStorageCost = registerOutput<double>('monthlyPremiumStorageCost');
    monthlyStandardSsdStorageCost = registerOutput<double>('monthlyStandardSsdStorageCost');
    monthlyStorageCost = registerOutput<double>('monthlyStorageCost');
    monthlyUltraStorageCost = registerOutput<double>('monthlyUltraStorageCost');
    this.name = registerOutput<String>('name');
    numberOfMachines = registerOutput<int>('numberOfMachines');
    percentile = registerOutput<String?>('percentile');
    perfDataEndTime = registerOutput<String?>('perfDataEndTime');
    perfDataStartTime = registerOutput<String?>('perfDataStartTime');
    pricesTimestamp = registerOutput<String>('pricesTimestamp');
    provisioningState = registerOutput<String?>('provisioningState');
    reservedInstance = registerOutput<String?>('reservedInstance');
    scalingFactor = registerOutput<double?>('scalingFactor');
    schemaVersion = registerOutput<String>('schemaVersion');
    sizingCriterion = registerOutput<String?>('sizingCriterion');
    stage = registerOutput<String>('stage');
    status = registerOutput<String>('status');
    suitabilitySummary = registerOutput<Map<String, int>>('suitabilitySummary');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeRange = registerOutput<String?>('timeRange');
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
    vmUptime = registerOutput<VmUptimeAssessmentsOperationResponse?>('vmUptime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VmUptimeAssessmentsOperationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
