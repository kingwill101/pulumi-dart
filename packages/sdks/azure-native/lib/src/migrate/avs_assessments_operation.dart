import 'package:pulumi/pulumi.dart' as pulumi;
import 'avs_assessments_operation_args.dart';
import 'avs_estimated_external_storage_response.dart';
import 'avs_estimated_network_response.dart';
import 'avs_estimated_node_response.dart';
import 'cost_component_response.dart';
import 'system_data_response.dart';

/// AVS assessment resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AvsAssessmentsOperations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var avsAssessmentsOperation = new AzureNative.Migrate.AvsAssessmentsOperation("avsAssessmentsOperation", new()
///     {
///         AssessmentName = "asm2",
///         AvsAssessmentScenario = AzureNative.Migrate.AvsAssessmentScenario.NewAvsSddc,
///         AzureLocation = AzureNative.Migrate.AzureLocation.EastUs,
///         AzureOfferCode = AzureNative.Migrate.AzureOfferCode.Msazr0003P,
///         CpuHeadroom = 12,
///         Currency = AzureNative.Migrate.AzureCurrency.USD,
///         DedupeCompression = 1.5,
///         DiscountPercentage = 0,
///         ExternalStorageTypes = new[]
///         {
///             AzureNative.Migrate.ExternalStorageType.AnfStandard,
///             AzureNative.Migrate.ExternalStorageType.AnfPremium,
///             AzureNative.Migrate.ExternalStorageType.AnfUltra,
///         },
///         FailuresToTolerateAndRaidLevel = AzureNative.Migrate.FttAndRaidLevel.Unknown,
///         FailuresToTolerateAndRaidLevelList = new[]
///         {
///             AzureNative.Migrate.FttAndRaidLevel.Ftt1Raid1,
///             AzureNative.Migrate.FttAndRaidLevel.Ftt1Raid5,
///             AzureNative.Migrate.FttAndRaidLevel.Ftt3Raid1,
///         },
///         GroupName = "kuchatur-test",
///         IsStretchClusterEnabled = true,
///         IsVcfByolEnabled = true,
///         MemOvercommit = 1,
///         NodeType = AzureNative.Migrate.AzureAvsNodeType.Unknown,
///         NodeTypes = new[]
///         {
///             AzureNative.Migrate.AzureAvsNodeType.AV36,
///             AzureNative.Migrate.AzureAvsNodeType.AV52,
///             AzureNative.Migrate.AzureAvsNodeType.AV36P,
///             AzureNative.Migrate.AzureAvsNodeType.AV64,
///         },
///         Percentile = AzureNative.Migrate.Percentile.Percentile95,
///         PerfDataEndTime = "2023-09-26T13:35:56.5671462Z",
///         PerfDataStartTime = "2023-09-25T13:35:56.5671462Z",
///         ProjectName = "app18700project",
///         ProvisioningState = AzureNative.Migrate.ProvisioningState.Succeeded,
///         ReservedInstance = AzureNative.Migrate.AzureReservedInstance.RI3Year,
///         ResourceGroupName = "ayagrawrg",
///         ScalingFactor = 1,
///         SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.AsOnPremises,
///         TimeRange = AzureNative.Migrate.TimeRange.Day,
///         VcpuOversubscription = 4,
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
/// 		_, err := migrate.NewAvsAssessmentsOperation(ctx, "avsAssessmentsOperation", &migrate.AvsAssessmentsOperationArgs{
/// 			AssessmentName:        pulumi.String("asm2"),
/// 			AvsAssessmentScenario: pulumi.String(migrate.AvsAssessmentScenarioNewAvsSddc),
/// 			AzureLocation:         pulumi.String(migrate.AzureLocationEastUs),
/// 			AzureOfferCode:        pulumi.String(migrate.AzureOfferCodeMsazr0003P),
/// 			CpuHeadroom:           pulumi.Float64(12),
/// 			Currency:              pulumi.String(migrate.AzureCurrencyUSD),
/// 			DedupeCompression:     pulumi.Float64(1.5),
/// 			DiscountPercentage:    pulumi.Float64(0),
/// 			ExternalStorageTypes: pulumi.StringArray{
/// 				pulumi.String(migrate.ExternalStorageTypeAnfStandard),
/// 				pulumi.String(migrate.ExternalStorageTypeAnfPremium),
/// 				pulumi.String(migrate.ExternalStorageTypeAnfUltra),
/// 			},
/// 			FailuresToTolerateAndRaidLevel: pulumi.String(migrate.FttAndRaidLevelUnknown),
/// 			FailuresToTolerateAndRaidLevelList: pulumi.StringArray{
/// 				pulumi.String(migrate.FttAndRaidLevelFtt1Raid1),
/// 				pulumi.String(migrate.FttAndRaidLevelFtt1Raid5),
/// 				pulumi.String(migrate.FttAndRaidLevelFtt3Raid1),
/// 			},
/// 			GroupName:               pulumi.String("kuchatur-test"),
/// 			IsStretchClusterEnabled: pulumi.Bool(true),
/// 			IsVcfByolEnabled:        pulumi.Bool(true),
/// 			MemOvercommit:           pulumi.Float64(1),
/// 			NodeType:                pulumi.String(migrate.AzureAvsNodeTypeUnknown),
/// 			NodeTypes: pulumi.StringArray{
/// 				pulumi.String(migrate.AzureAvsNodeTypeAV36),
/// 				pulumi.String(migrate.AzureAvsNodeTypeAV52),
/// 				pulumi.String(migrate.AzureAvsNodeTypeAV36P),
/// 				pulumi.String(migrate.AzureAvsNodeTypeAV64),
/// 			},
/// 			Percentile:           pulumi.String(migrate.PercentilePercentile95),
/// 			PerfDataEndTime:      pulumi.String("2023-09-26T13:35:56.5671462Z"),
/// 			PerfDataStartTime:    pulumi.String("2023-09-25T13:35:56.5671462Z"),
/// 			ProjectName:          pulumi.String("app18700project"),
/// 			ProvisioningState:    pulumi.String(migrate.ProvisioningStateSucceeded),
/// 			ReservedInstance:     pulumi.String(migrate.AzureReservedInstanceRI3Year),
/// 			ResourceGroupName:    pulumi.String("ayagrawrg"),
/// 			ScalingFactor:        pulumi.Float64(1),
/// 			SizingCriterion:      pulumi.String(migrate.AssessmentSizingCriterionAsOnPremises),
/// 			TimeRange:            pulumi.String(migrate.TimeRangeDay),
/// 			VcpuOversubscription: pulumi.Float64(4),
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
/// import com.pulumi.azurenative.migrate.AvsAssessmentsOperation;
/// import com.pulumi.azurenative.migrate.AvsAssessmentsOperationArgs;
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
///         var avsAssessmentsOperation = new AvsAssessmentsOperation("avsAssessmentsOperation", AvsAssessmentsOperationArgs.builder()
///             .assessmentName("asm2")
///             .avsAssessmentScenario("NewAvsSddc")
///             .azureLocation("EastUs")
///             .azureOfferCode("MSAZR0003P")
///             .cpuHeadroom(12.0)
///             .currency("USD")
///             .dedupeCompression(1.5)
///             .discountPercentage(0.0)
///             .externalStorageTypes(
///                 "AnfStandard",
///                 "AnfPremium",
///                 "AnfUltra")
///             .failuresToTolerateAndRaidLevel("Unknown")
///             .failuresToTolerateAndRaidLevelList(
///                 "Ftt1Raid1",
///                 "Ftt1Raid5",
///                 "Ftt3Raid1")
///             .groupName("kuchatur-test")
///             .isStretchClusterEnabled(true)
///             .isVcfByolEnabled(true)
///             .memOvercommit(1.0)
///             .nodeType("Unknown")
///             .nodeTypes(
///                 "AV36",
///                 "AV52",
///                 "AV36P",
///                 "AV64")
///             .percentile("Percentile95")
///             .perfDataEndTime("2023-09-26T13:35:56.5671462Z")
///             .perfDataStartTime("2023-09-25T13:35:56.5671462Z")
///             .projectName("app18700project")
///             .provisioningState("Succeeded")
///             .reservedInstance("RI3Year")
///             .resourceGroupName("ayagrawrg")
///             .scalingFactor(1.0)
///             .sizingCriterion("AsOnPremises")
///             .timeRange("Day")
///             .vcpuOversubscription(4.0)
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
/// const avsAssessmentsOperation = new azure_native.migrate.AvsAssessmentsOperation("avsAssessmentsOperation", {
///     assessmentName: "asm2",
///     avsAssessmentScenario: azure_native.migrate.AvsAssessmentScenario.NewAvsSddc,
///     azureLocation: azure_native.migrate.AzureLocation.EastUs,
///     azureOfferCode: azure_native.migrate.AzureOfferCode.Msazr0003P,
///     cpuHeadroom: 12,
///     currency: azure_native.migrate.AzureCurrency.USD,
///     dedupeCompression: 1.5,
///     discountPercentage: 0,
///     externalStorageTypes: [
///         azure_native.migrate.ExternalStorageType.AnfStandard,
///         azure_native.migrate.ExternalStorageType.AnfPremium,
///         azure_native.migrate.ExternalStorageType.AnfUltra,
///     ],
///     failuresToTolerateAndRaidLevel: azure_native.migrate.FttAndRaidLevel.Unknown,
///     failuresToTolerateAndRaidLevelList: [
///         azure_native.migrate.FttAndRaidLevel.Ftt1Raid1,
///         azure_native.migrate.FttAndRaidLevel.Ftt1Raid5,
///         azure_native.migrate.FttAndRaidLevel.Ftt3Raid1,
///     ],
///     groupName: "kuchatur-test",
///     isStretchClusterEnabled: true,
///     isVcfByolEnabled: true,
///     memOvercommit: 1,
///     nodeType: azure_native.migrate.AzureAvsNodeType.Unknown,
///     nodeTypes: [
///         azure_native.migrate.AzureAvsNodeType.AV36,
///         azure_native.migrate.AzureAvsNodeType.AV52,
///         azure_native.migrate.AzureAvsNodeType.AV36P,
///         azure_native.migrate.AzureAvsNodeType.AV64,
///     ],
///     percentile: azure_native.migrate.Percentile.Percentile95,
///     perfDataEndTime: "2023-09-26T13:35:56.5671462Z",
///     perfDataStartTime: "2023-09-25T13:35:56.5671462Z",
///     projectName: "app18700project",
///     provisioningState: azure_native.migrate.ProvisioningState.Succeeded,
///     reservedInstance: azure_native.migrate.AzureReservedInstance.RI3Year,
///     resourceGroupName: "ayagrawrg",
///     scalingFactor: 1,
///     sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.AsOnPremises,
///     timeRange: azure_native.migrate.TimeRange.Day,
///     vcpuOversubscription: 4,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// avs_assessments_operation = azure_native.migrate.AvsAssessmentsOperation("avsAssessmentsOperation",
///     assessment_name="asm2",
///     avs_assessment_scenario=azure_native.migrate.AvsAssessmentScenario.NEW_AVS_SDDC,
///     azure_location=azure_native.migrate.AzureLocation.EAST_US,
///     azure_offer_code=azure_native.migrate.AzureOfferCode.MSAZR0003_P,
///     cpu_headroom=12,
///     currency=azure_native.migrate.AzureCurrency.USD,
///     dedupe_compression=1.5,
///     discount_percentage=0,
///     external_storage_types=[
///         azure_native.migrate.ExternalStorageType.ANF_STANDARD,
///         azure_native.migrate.ExternalStorageType.ANF_PREMIUM,
///         azure_native.migrate.ExternalStorageType.ANF_ULTRA,
///     ],
///     failures_to_tolerate_and_raid_level=azure_native.migrate.FttAndRaidLevel.UNKNOWN,
///     failures_to_tolerate_and_raid_level_list=[
///         azure_native.migrate.FttAndRaidLevel.FTT1_RAID1,
///         azure_native.migrate.FttAndRaidLevel.FTT1_RAID5,
///         azure_native.migrate.FttAndRaidLevel.FTT3_RAID1,
///     ],
///     group_name="kuchatur-test",
///     is_stretch_cluster_enabled=True,
///     is_vcf_byol_enabled=True,
///     mem_overcommit=1,
///     node_type=azure_native.migrate.AzureAvsNodeType.UNKNOWN,
///     node_types=[
///         azure_native.migrate.AzureAvsNodeType.AV36,
///         azure_native.migrate.AzureAvsNodeType.AV52,
///         azure_native.migrate.AzureAvsNodeType.AV36_P,
///         azure_native.migrate.AzureAvsNodeType.AV64,
///     ],
///     percentile=azure_native.migrate.Percentile.PERCENTILE95,
///     perf_data_end_time="2023-09-26T13:35:56.5671462Z",
///     perf_data_start_time="2023-09-25T13:35:56.5671462Z",
///     project_name="app18700project",
///     provisioning_state=azure_native.migrate.ProvisioningState.SUCCEEDED,
///     reserved_instance=azure_native.migrate.AzureReservedInstance.RI3_YEAR,
///     resource_group_name="ayagrawrg",
///     scaling_factor=1,
///     sizing_criterion=azure_native.migrate.AssessmentSizingCriterion.AS_ON_PREMISES,
///     time_range=azure_native.migrate.TimeRange.DAY,
///     vcpu_oversubscription=4)
///
/// ```
///
/// ```yaml
/// resources:
///   avsAssessmentsOperation:
///     type: azure-native:migrate:AvsAssessmentsOperation
///     properties:
///       assessmentName: asm2
///       avsAssessmentScenario: NewAvsSddc
///       azureLocation: EastUs
///       azureOfferCode: MSAZR0003P
///       cpuHeadroom: 12
///       currency: USD
///       dedupeCompression: 1.5
///       discountPercentage: 0
///       externalStorageTypes:
///         - AnfStandard
///         - AnfPremium
///         - AnfUltra
///       failuresToTolerateAndRaidLevel: Unknown
///       failuresToTolerateAndRaidLevelList:
///         - Ftt1Raid1
///         - Ftt1Raid5
///         - Ftt3Raid1
///       groupName: kuchatur-test
///       isStretchClusterEnabled: true
///       isVcfByolEnabled: true
///       memOvercommit: 1
///       nodeType: Unknown
///       nodeTypes:
///         - AV36
///         - AV52
///         - AV36P
///         - AV64
///       percentile: Percentile95
///       perfDataEndTime: 2023-09-26T13:35:56.5671462Z
///       perfDataStartTime: 2023-09-25T13:35:56.5671462Z
///       projectName: app18700project
///       provisioningState: Succeeded
///       reservedInstance: RI3Year
///       resourceGroupName: ayagrawrg
///       scalingFactor: 1
///       sizingCriterion: AsOnPremises
///       timeRange: Day
///       vcpuOversubscription: 4
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
/// $ pulumi import azure-native:migrate:AvsAssessmentsOperation asm2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/avsAssessments/{assessmentName}
/// ```
class AvsAssessmentsOperation extends pulumi.CustomResource {
  /// Gets the assessment error summary.
  /// This is the number of machines
  /// affected by each type of error in this assessment.
  late final pulumi.Output<Map<String, int>> assessmentErrorSummary;
  /// Assessment type of the assessment.
  late final pulumi.Output<String> assessmentType;
  /// AVS Assessment Scenario.
  late final pulumi.Output<String?> avsAssessmentScenario;
  /// Estimated External Storage for Assessment.
  late final pulumi.Output<List<AvsEstimatedExternalStorageResponse>> avsEstimatedExternalStorages;
  /// Estimated External Storage for Assessment.
  late final pulumi.Output<List<AvsEstimatedNetworkResponse>> avsEstimatedNetworks;
  /// Estimated AVS SKU for Assessment.
  late final pulumi.Output<List<AvsEstimatedNodeResponse>> avsEstimatedNodes;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure Location or Azure region where to which the machines will be migrated.
  late final pulumi.Output<String?> azureLocation;
  /// Azure Offer code according to which cost estimation is done.
  late final pulumi.Output<String?> azureOfferCode;
  /// Confidence Rating in Percentage.
  late final pulumi.Output<double> confidenceRatingInPercentage;
  /// collection of cost components.
  late final pulumi.Output<List<CostComponentResponse>> costComponents;
  /// Percentage of CPU capacity reserved for processing additional workloads.
  late final pulumi.Output<double?> cpuHeadroom;
  /// Predicted CPU utilization.
  late final pulumi.Output<double> cpuUtilization;
  /// Date and Time when assessment was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Currency in which prices should be reported.
  late final pulumi.Output<String?> currency;
  /// De-duplication compression.
  late final pulumi.Output<double?> dedupeCompression;
  /// Custom discount percentage.
  late final pulumi.Output<double?> discountPercentage;
  /// List of AVS external storage types.
  late final pulumi.Output<List<String>?> externalStorageTypes;
  /// Failures to tolerate and RAID level in a common property.
  late final pulumi.Output<String?> failuresToTolerateAndRaidLevel;
  /// List of Failures to tolerate and RAID levels in a common property.
  late final pulumi.Output<List<String>?> failuresToTolerateAndRaidLevelList;
  /// Gets the group type for the assessment.
  late final pulumi.Output<String> groupType;
  /// Is Stretch Cluster Enabled.
  late final pulumi.Output<bool?> isStretchClusterEnabled;
  /// Is VCF license applied
  late final pulumi.Output<bool?> isVcfByolEnabled;
  /// Limiting factor.
  late final pulumi.Output<String> limitingFactor;
  /// Memory overcommit.
  late final pulumi.Output<double?> memOvercommit;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// AVS node type.
  late final pulumi.Output<String?> nodeType;
  /// AVS node types.
  late final pulumi.Output<List<String>?> nodeTypes;
  /// Number of machines part of the assessment.
  late final pulumi.Output<int> numberOfMachines;
  /// Recommended number of nodes.
  late final pulumi.Output<int> numberOfNodes;
  /// Percentile of the utilization data values to be considered while assessing
  /// machines.
  late final pulumi.Output<String?> percentile;
  /// Gets or sets the end time to consider performance data for assessment.
  late final pulumi.Output<String?> perfDataEndTime;
  /// Gets or sets the start time to consider performance data for assessment.
  late final pulumi.Output<String?> perfDataStartTime;
  /// Time when the Azure Prices were queried. Date-Time represented in ISO-8601
  /// format.
  late final pulumi.Output<String> pricesTimestamp;
  /// The status of the last operation.
  late final pulumi.Output<String?> provisioningState;
  /// Predicted RAM utilization.
  late final pulumi.Output<double> ramUtilization;
  /// Reserved instance.
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
  /// Predicted storage utilization.
  late final pulumi.Output<double> storageUtilization;
  /// Gets or sets the Assessment cloud suitability.
  late final pulumi.Output<String> suitability;
  /// Gets or sets the Assessment suitability explanation.
  late final pulumi.Output<String> suitabilityExplanation;
  /// Cloud suitability summary for all the machines in the assessment.
  late final pulumi.Output<Map<String, int>> suitabilitySummary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  late final pulumi.Output<String?> timeRange;
  /// Predicted total CPU cores used.
  late final pulumi.Output<double> totalCpuCores;
  /// Total monthly cost.
  late final pulumi.Output<double> totalMonthlyCost;
  /// Predicted total RAM used in GB.
  late final pulumi.Output<double> totalRamInGB;
  /// Predicted total Storage used in GB.
  late final pulumi.Output<double> totalStorageInGB;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Date and Time when assessment was last updated.
  late final pulumi.Output<String> updatedTimestamp;
  /// VCPU over subscription.
  late final pulumi.Output<double?> vcpuOversubscription;

  /// Creates a new [AvsAssessmentsOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AvsAssessmentsOperation]. {@macro pulumi_migrate_avs_assessments_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AvsAssessmentsOperation(
    String name, {
    AvsAssessmentsOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:AvsAssessmentsOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assessmentErrorSummary = registerOutput<Map<String, int>>('assessmentErrorSummary');
    this.assessmentType = registerOutput<String>('assessmentType');
    this.avsAssessmentScenario = registerOutput<String?>('avsAssessmentScenario');
    this.avsEstimatedExternalStorages = registerOutput<List<AvsEstimatedExternalStorageResponse>>('avsEstimatedExternalStorages');
    this.avsEstimatedNetworks = registerOutput<List<AvsEstimatedNetworkResponse>>('avsEstimatedNetworks');
    this.avsEstimatedNodes = registerOutput<List<AvsEstimatedNodeResponse>>('avsEstimatedNodes');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.azureLocation = registerOutput<String?>('azureLocation');
    this.azureOfferCode = registerOutput<String?>('azureOfferCode');
    this.confidenceRatingInPercentage = registerOutput<double>('confidenceRatingInPercentage');
    this.costComponents = registerOutput<List<CostComponentResponse>>('costComponents');
    this.cpuHeadroom = registerOutput<double?>('cpuHeadroom');
    this.cpuUtilization = registerOutput<double>('cpuUtilization');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.currency = registerOutput<String?>('currency');
    this.dedupeCompression = registerOutput<double?>('dedupeCompression');
    this.discountPercentage = registerOutput<double?>('discountPercentage');
    this.externalStorageTypes = registerOutput<List<String>?>('externalStorageTypes');
    this.failuresToTolerateAndRaidLevel = registerOutput<String?>('failuresToTolerateAndRaidLevel');
    this.failuresToTolerateAndRaidLevelList = registerOutput<List<String>?>('failuresToTolerateAndRaidLevelList');
    this.groupType = registerOutput<String>('groupType');
    this.isStretchClusterEnabled = registerOutput<bool?>('isStretchClusterEnabled');
    this.isVcfByolEnabled = registerOutput<bool?>('isVcfByolEnabled');
    this.limitingFactor = registerOutput<String>('limitingFactor');
    this.memOvercommit = registerOutput<double?>('memOvercommit');
    this.name = registerOutput<String>('name');
    this.nodeType = registerOutput<String?>('nodeType');
    this.nodeTypes = registerOutput<List<String>?>('nodeTypes');
    this.numberOfMachines = registerOutput<int>('numberOfMachines');
    this.numberOfNodes = registerOutput<int>('numberOfNodes');
    this.percentile = registerOutput<String?>('percentile');
    this.perfDataEndTime = registerOutput<String?>('perfDataEndTime');
    this.perfDataStartTime = registerOutput<String?>('perfDataStartTime');
    this.pricesTimestamp = registerOutput<String>('pricesTimestamp');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.ramUtilization = registerOutput<double>('ramUtilization');
    this.reservedInstance = registerOutput<String?>('reservedInstance');
    this.scalingFactor = registerOutput<double?>('scalingFactor');
    this.schemaVersion = registerOutput<String>('schemaVersion');
    this.sizingCriterion = registerOutput<String?>('sizingCriterion');
    this.stage = registerOutput<String>('stage');
    this.status = registerOutput<String>('status');
    this.storageUtilization = registerOutput<double>('storageUtilization');
    this.suitability = registerOutput<String>('suitability');
    this.suitabilityExplanation = registerOutput<String>('suitabilityExplanation');
    this.suitabilitySummary = registerOutput<Map<String, int>>('suitabilitySummary');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.timeRange = registerOutput<String?>('timeRange');
    this.totalCpuCores = registerOutput<double>('totalCpuCores');
    this.totalMonthlyCost = registerOutput<double>('totalMonthlyCost');
    this.totalRamInGB = registerOutput<double>('totalRamInGB');
    this.totalStorageInGB = registerOutput<double>('totalStorageInGB');
    this.type = registerOutput<String>('type');
    this.updatedTimestamp = registerOutput<String>('updatedTimestamp');
    this.vcpuOversubscription = registerOutput<double?>('vcpuOversubscription');
  }
}
