import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_uptime_response.dart';
import 'sql_assessment_v2_operation_args.dart';
import 'sql_db_settings_response.dart';
import 'sql_mi_settings_response.dart';
import 'sql_vm_settings_response.dart';
import 'system_data_response.dart';

/// SQL Assessment REST resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-15.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqlAssessmentV2Operations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlAssessmentV2Operation = new AzureNative.Migrate.SqlAssessmentV2Operation("sqlAssessmentV2Operation", new()
///     {
///         AssessmentName = "test_swagger_1",
///         AsyncCommitModeIntent = AzureNative.Migrate.AsyncCommitModeIntent.DisasterRecovery,
///         AzureLocation = "SoutheastAsia",
///         AzureOfferCode = AzureNative.Migrate.AzureOfferCode.Msazr0003P,
///         AzureOfferCodeForVm = AzureNative.Migrate.AzureOfferCode.Msazr0003P,
///         AzureSqlDatabaseSettings = new AzureNative.Migrate.Inputs.SqlDbSettingsArgs
///         {
///             AzureSqlComputeTier = AzureNative.Migrate.ComputeTier.Automatic,
///             AzureSqlDataBaseType = AzureNative.Migrate.AzureSqlDataBaseType.SingleDatabase,
///             AzureSqlPurchaseModel = AzureNative.Migrate.AzureSqlPurchaseModel.VCore,
///             AzureSqlServiceTier = AzureNative.Migrate.AzureSqlServiceTier.Automatic,
///         },
///         AzureSqlManagedInstanceSettings = new AzureNative.Migrate.Inputs.SqlMiSettingsArgs
///         {
///             AzureSqlInstanceType = AzureNative.Migrate.AzureSqlInstanceType.SingleInstance,
///             AzureSqlServiceTier = AzureNative.Migrate.AzureSqlServiceTier.Automatic,
///         },
///         AzureSqlVmSettings = new AzureNative.Migrate.Inputs.SqlVmSettingsArgs
///         {
///             InstanceSeries = new[]
///             {
///                 AzureNative.Migrate.AzureVmFamily.Eadsv5Series,
///             },
///         },
///         Currency = AzureNative.Migrate.AzureCurrency.USD,
///         DisasterRecoveryLocation = AzureNative.Migrate.AzureLocation.EastAsia,
///         DiscountPercentage = 0,
///         EnableHadrAssessment = true,
///         EntityUptime = new AzureNative.Migrate.Inputs.EntityUptimeArgs
///         {
///             DaysPerMonth = 30,
///             HoursPerDay = 24,
///         },
///         EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///         GroupName = "test_fci_hadr",
///         MultiSubnetIntent = AzureNative.Migrate.MultiSubnetIntent.DisasterRecovery,
///         OptimizationLogic = AzureNative.Migrate.OptimizationLogic.MinimizeCost,
///         OsLicense = AzureNative.Migrate.OsLicense.Unknown,
///         Percentile = AzureNative.Migrate.Percentile.Percentile95,
///         ProjectName = "fci-test6904project",
///         ReservedInstance = AzureNative.Migrate.AzureReservedInstance.None,
///         ReservedInstanceForVm = AzureNative.Migrate.AzureReservedInstance.None,
///         ResourceGroupName = "rgmigrate",
///         ScalingFactor = 1,
///         SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///         SqlServerLicense = AzureNative.Migrate.SqlServerLicense.Unknown,
///         TimeRange = AzureNative.Migrate.TimeRange.Day,
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
/// 		_, err := migrate.NewSqlAssessmentV2Operation(ctx, "sqlAssessmentV2Operation", &migrate.SqlAssessmentV2OperationArgs{
/// 			AssessmentName:        pulumi.String("test_swagger_1"),
/// 			AsyncCommitModeIntent: pulumi.String(migrate.AsyncCommitModeIntentDisasterRecovery),
/// 			AzureLocation:         pulumi.String("SoutheastAsia"),
/// 			AzureOfferCode:        pulumi.String(migrate.AzureOfferCodeMsazr0003P),
/// 			AzureOfferCodeForVm:   pulumi.String(migrate.AzureOfferCodeMsazr0003P),
/// 			AzureSqlDatabaseSettings: &migrate.SqlDbSettingsArgs{
/// 				AzureSqlComputeTier:   pulumi.String(migrate.ComputeTierAutomatic),
/// 				AzureSqlDataBaseType:  pulumi.String(migrate.AzureSqlDataBaseTypeSingleDatabase),
/// 				AzureSqlPurchaseModel: pulumi.String(migrate.AzureSqlPurchaseModelVCore),
/// 				AzureSqlServiceTier:   pulumi.String(migrate.AzureSqlServiceTierAutomatic),
/// 			},
/// 			AzureSqlManagedInstanceSettings: &migrate.SqlMiSettingsArgs{
/// 				AzureSqlInstanceType: pulumi.String(migrate.AzureSqlInstanceTypeSingleInstance),
/// 				AzureSqlServiceTier:  pulumi.String(migrate.AzureSqlServiceTierAutomatic),
/// 			},
/// 			AzureSqlVmSettings: &migrate.SqlVmSettingsArgs{
/// 				InstanceSeries: pulumi.StringArray{
/// 					pulumi.String(migrate.AzureVmFamilyEadsv5Series),
/// 				},
/// 			},
/// 			Currency:                 pulumi.String(migrate.AzureCurrencyUSD),
/// 			DisasterRecoveryLocation: pulumi.String(migrate.AzureLocationEastAsia),
/// 			DiscountPercentage:       pulumi.Float64(0),
/// 			EnableHadrAssessment:     pulumi.Bool(true),
/// 			EntityUptime: &migrate.EntityUptimeArgs{
/// 				DaysPerMonth: pulumi.Int(30),
/// 				HoursPerDay:  pulumi.Int(24),
/// 			},
/// 			EnvironmentType:       pulumi.String(migrate.EnvironmentTypeProduction),
/// 			GroupName:             pulumi.String("test_fci_hadr"),
/// 			MultiSubnetIntent:     pulumi.String(migrate.MultiSubnetIntentDisasterRecovery),
/// 			OptimizationLogic:     pulumi.String(migrate.OptimizationLogicMinimizeCost),
/// 			OsLicense:             pulumi.String(migrate.OsLicenseUnknown),
/// 			Percentile:            pulumi.String(migrate.PercentilePercentile95),
/// 			ProjectName:           pulumi.String("fci-test6904project"),
/// 			ReservedInstance:      pulumi.String(migrate.AzureReservedInstanceNone),
/// 			ReservedInstanceForVm: pulumi.String(migrate.AzureReservedInstanceNone),
/// 			ResourceGroupName:     pulumi.String("rgmigrate"),
/// 			ScalingFactor:         pulumi.Float64(1),
/// 			SizingCriterion:       pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 			SqlServerLicense:      pulumi.String(migrate.SqlServerLicenseUnknown),
/// 			TimeRange:             pulumi.String(migrate.TimeRangeDay),
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
/// import com.pulumi.azurenative.migrate.SqlAssessmentV2Operation;
/// import com.pulumi.azurenative.migrate.SqlAssessmentV2OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlDbSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlMiSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlVmSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.EntityUptimeArgs;
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
///         var sqlAssessmentV2Operation = new SqlAssessmentV2Operation("sqlAssessmentV2Operation", SqlAssessmentV2OperationArgs.builder()
///             .assessmentName("test_swagger_1")
///             .asyncCommitModeIntent("DisasterRecovery")
///             .azureLocation("SoutheastAsia")
///             .azureOfferCode("MSAZR0003P")
///             .azureOfferCodeForVm("MSAZR0003P")
///             .azureSqlDatabaseSettings(SqlDbSettingsArgs.builder()
///                 .azureSqlComputeTier("Automatic")
///                 .azureSqlDataBaseType("SingleDatabase")
///                 .azureSqlPurchaseModel("VCore")
///                 .azureSqlServiceTier("Automatic")
///                 .build())
///             .azureSqlManagedInstanceSettings(SqlMiSettingsArgs.builder()
///                 .azureSqlInstanceType("SingleInstance")
///                 .azureSqlServiceTier("Automatic")
///                 .build())
///             .azureSqlVmSettings(SqlVmSettingsArgs.builder()
///                 .instanceSeries("Eadsv5_series")
///                 .build())
///             .currency("USD")
///             .disasterRecoveryLocation("EastAsia")
///             .discountPercentage(0.0)
///             .enableHadrAssessment(true)
///             .entityUptime(EntityUptimeArgs.builder()
///                 .daysPerMonth(30)
///                 .hoursPerDay(24)
///                 .build())
///             .environmentType("Production")
///             .groupName("test_fci_hadr")
///             .multiSubnetIntent("DisasterRecovery")
///             .optimizationLogic("MinimizeCost")
///             .osLicense("Unknown")
///             .percentile("Percentile95")
///             .projectName("fci-test6904project")
///             .reservedInstance("None")
///             .reservedInstanceForVm("None")
///             .resourceGroupName("rgmigrate")
///             .scalingFactor(1.0)
///             .sizingCriterion("PerformanceBased")
///             .sqlServerLicense("Unknown")
///             .timeRange("Day")
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
/// const sqlAssessmentV2Operation = new azure_native.migrate.SqlAssessmentV2Operation("sqlAssessmentV2Operation", {
///     assessmentName: "test_swagger_1",
///     asyncCommitModeIntent: azure_native.migrate.AsyncCommitModeIntent.DisasterRecovery,
///     azureLocation: "SoutheastAsia",
///     azureOfferCode: azure_native.migrate.AzureOfferCode.Msazr0003P,
///     azureOfferCodeForVm: azure_native.migrate.AzureOfferCode.Msazr0003P,
///     azureSqlDatabaseSettings: {
///         azureSqlComputeTier: azure_native.migrate.ComputeTier.Automatic,
///         azureSqlDataBaseType: azure_native.migrate.AzureSqlDataBaseType.SingleDatabase,
///         azureSqlPurchaseModel: azure_native.migrate.AzureSqlPurchaseModel.VCore,
///         azureSqlServiceTier: azure_native.migrate.AzureSqlServiceTier.Automatic,
///     },
///     azureSqlManagedInstanceSettings: {
///         azureSqlInstanceType: azure_native.migrate.AzureSqlInstanceType.SingleInstance,
///         azureSqlServiceTier: azure_native.migrate.AzureSqlServiceTier.Automatic,
///     },
///     azureSqlVmSettings: {
///         instanceSeries: [azure_native.migrate.AzureVmFamily.Eadsv5Series],
///     },
///     currency: azure_native.migrate.AzureCurrency.USD,
///     disasterRecoveryLocation: azure_native.migrate.AzureLocation.EastAsia,
///     discountPercentage: 0,
///     enableHadrAssessment: true,
///     entityUptime: {
///         daysPerMonth: 30,
///         hoursPerDay: 24,
///     },
///     environmentType: azure_native.migrate.EnvironmentType.Production,
///     groupName: "test_fci_hadr",
///     multiSubnetIntent: azure_native.migrate.MultiSubnetIntent.DisasterRecovery,
///     optimizationLogic: azure_native.migrate.OptimizationLogic.MinimizeCost,
///     osLicense: azure_native.migrate.OsLicense.Unknown,
///     percentile: azure_native.migrate.Percentile.Percentile95,
///     projectName: "fci-test6904project",
///     reservedInstance: azure_native.migrate.AzureReservedInstance.None,
///     reservedInstanceForVm: azure_native.migrate.AzureReservedInstance.None,
///     resourceGroupName: "rgmigrate",
///     scalingFactor: 1,
///     sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///     sqlServerLicense: azure_native.migrate.SqlServerLicense.Unknown,
///     timeRange: azure_native.migrate.TimeRange.Day,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_assessment_v2_operation = azure_native.migrate.SqlAssessmentV2Operation("sqlAssessmentV2Operation",
///     assessment_name="test_swagger_1",
///     async_commit_mode_intent=azure_native.migrate.AsyncCommitModeIntent.DISASTER_RECOVERY,
///     azure_location="SoutheastAsia",
///     azure_offer_code=azure_native.migrate.AzureOfferCode.MSAZR0003_P,
///     azure_offer_code_for_vm=azure_native.migrate.AzureOfferCode.MSAZR0003_P,
///     azure_sql_database_settings={
///         "azure_sql_compute_tier": azure_native.migrate.ComputeTier.AUTOMATIC,
///         "azure_sql_data_base_type": azure_native.migrate.AzureSqlDataBaseType.SINGLE_DATABASE,
///         "azure_sql_purchase_model": azure_native.migrate.AzureSqlPurchaseModel.V_CORE,
///         "azure_sql_service_tier": azure_native.migrate.AzureSqlServiceTier.AUTOMATIC,
///     },
///     azure_sql_managed_instance_settings={
///         "azure_sql_instance_type": azure_native.migrate.AzureSqlInstanceType.SINGLE_INSTANCE,
///         "azure_sql_service_tier": azure_native.migrate.AzureSqlServiceTier.AUTOMATIC,
///     },
///     azure_sql_vm_settings={
///         "instance_series": [azure_native.migrate.AzureVmFamily.EADSV5_SERIES],
///     },
///     currency=azure_native.migrate.AzureCurrency.USD,
///     disaster_recovery_location=azure_native.migrate.AzureLocation.EAST_ASIA,
///     discount_percentage=0,
///     enable_hadr_assessment=True,
///     entity_uptime={
///         "days_per_month": 30,
///         "hours_per_day": 24,
///     },
///     environment_type=azure_native.migrate.EnvironmentType.PRODUCTION,
///     group_name="test_fci_hadr",
///     multi_subnet_intent=azure_native.migrate.MultiSubnetIntent.DISASTER_RECOVERY,
///     optimization_logic=azure_native.migrate.OptimizationLogic.MINIMIZE_COST,
///     os_license=azure_native.migrate.OsLicense.UNKNOWN,
///     percentile=azure_native.migrate.Percentile.PERCENTILE95,
///     project_name="fci-test6904project",
///     reserved_instance=azure_native.migrate.AzureReservedInstance.NONE,
///     reserved_instance_for_vm=azure_native.migrate.AzureReservedInstance.NONE,
///     resource_group_name="rgmigrate",
///     scaling_factor=1,
///     sizing_criterion=azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///     sql_server_license=azure_native.migrate.SqlServerLicense.UNKNOWN,
///     time_range=azure_native.migrate.TimeRange.DAY)
///
/// ```
///
/// ```yaml
/// resources:
///   sqlAssessmentV2Operation:
///     type: azure-native:migrate:SqlAssessmentV2Operation
///     properties:
///       assessmentName: test_swagger_1
///       asyncCommitModeIntent: DisasterRecovery
///       azureLocation: SoutheastAsia
///       azureOfferCode: MSAZR0003P
///       azureOfferCodeForVm: MSAZR0003P
///       azureSqlDatabaseSettings:
///         azureSqlComputeTier: Automatic
///         azureSqlDataBaseType: SingleDatabase
///         azureSqlPurchaseModel: VCore
///         azureSqlServiceTier: Automatic
///       azureSqlManagedInstanceSettings:
///         azureSqlInstanceType: SingleInstance
///         azureSqlServiceTier: Automatic
///       azureSqlVmSettings:
///         instanceSeries:
///           - Eadsv5_series
///       currency: USD
///       disasterRecoveryLocation: EastAsia
///       discountPercentage: 0
///       enableHadrAssessment: true
///       entityUptime:
///         daysPerMonth: 30
///         hoursPerDay: 24
///       environmentType: Production
///       groupName: test_fci_hadr
///       multiSubnetIntent: DisasterRecovery
///       optimizationLogic: MinimizeCost
///       osLicense: Unknown
///       percentile: Percentile95
///       projectName: fci-test6904project
///       reservedInstance: None
///       reservedInstanceForVm: None
///       resourceGroupName: rgmigrate
///       scalingFactor: 1
///       sizingCriterion: PerformanceBased
///       sqlServerLicense: Unknown
///       timeRange: Day
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
/// $ pulumi import azure-native:migrate:SqlAssessmentV2Operation test_swagger_1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/sqlAssessments/{assessmentName}
/// ```
class SqlAssessmentV2Operation extends pulumi.CustomResource {
  /// Assessment type of the assessment.
  late final pulumi.Output<String?> assessmentType;

  /// Gets or sets user preference indicating intent of async commit mode.
  late final pulumi.Output<String?> asyncCommitModeIntent;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Azure Location or Azure region where to which the machines will be migrated.
  late final pulumi.Output<String?> azureLocation;

  /// Azure Offer Code.
  late final pulumi.Output<String?> azureOfferCode;

  /// Gets or sets Azure Offer Code for VM.
  late final pulumi.Output<String?> azureOfferCodeForVm;

  /// Gets or sets a value indicating azure security offering type.
  late final pulumi.Output<String?> azureSecurityOfferingType;

  /// Gets or sets user configurable SQL database settings.
  late final pulumi.Output<SqlDbSettingsResponse?> azureSqlDatabaseSettings;

  /// Gets or sets user configurable SQL managed instance settings.
  late final pulumi.Output<SqlMiSettingsResponse?>
  azureSqlManagedInstanceSettings;

  /// Gets or sets user configurable SQL VM settings.
  late final pulumi.Output<SqlVmSettingsResponse?> azureSqlVmSettings;

  /// Confidence Rating in Percentage.
  late final pulumi.Output<double?> confidenceRatingInPercentage;

  /// Date and Time when assessment was created.
  late final pulumi.Output<String> createdTimestamp;

  /// Currency in which prices should be reported.
  late final pulumi.Output<String?> currency;

  /// Gets or sets the Azure Location or Azure region where to which the machines
  /// will be migrated.
  late final pulumi.Output<String?> disasterRecoveryLocation;

  /// Custom discount percentage.
  late final pulumi.Output<double?> discountPercentage;

  /// Gets or sets the Enterprise agreement subscription id.
  late final pulumi.Output<String?> eaSubscriptionId;

  /// Gets or sets a value indicating whether HADR assessments needs to be created.
  late final pulumi.Output<bool?> enableHadrAssessment;

  /// Gets or sets the duration for which the entity (SQL, VMs) are up in the
  /// on-premises environment.
  late final pulumi.Output<EntityUptimeResponse?> entityUptime;

  /// Gets or sets user configurable setting to display the environment type.
  late final pulumi.Output<String?> environmentType;

  /// Gets the group type for the assessment.
  late final pulumi.Output<String?> groupType;

  /// Gets or sets a value indicating whether internet access is available.
  late final pulumi.Output<bool?> isInternetAccessAvailable;

  /// Gets or sets user preference indicating intent of multi-subnet configuration.
  late final pulumi.Output<String?> multiSubnetIntent;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Gets or sets SQL optimization logic.
  late final pulumi.Output<String?> optimizationLogic;

  /// Gets or sets user configurable setting to display the azure hybrid use benefit.
  late final pulumi.Output<String?> osLicense;

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

  /// Reserved instance.
  late final pulumi.Output<String?> reservedInstance;

  /// Gets or sets azure reserved instance for VM.
  late final pulumi.Output<String?> reservedInstanceForVm;

  /// Percentage of buffer that user wants on performance metrics when recommending
  /// Azure sizes.
  late final pulumi.Output<double?> scalingFactor;

  /// Schema version.
  late final pulumi.Output<String> schemaVersion;

  /// Assessment sizing criterion.
  late final pulumi.Output<String?> sizingCriterion;

  /// SQL server license.
  late final pulumi.Output<String?> sqlServerLicense;

  /// User configurable setting to display the Stage of Assessment.
  late final pulumi.Output<String> stage;

  /// Whether assessment is in valid state and all machines have been assessed.
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  late final pulumi.Output<String?> timeRange;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Date and Time when assessment was last updated.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [SqlAssessmentV2Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlAssessmentV2Operation]. {@macro pulumi_migrate_sql_assessment_v2_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlAssessmentV2Operation(
    String name, {
    SqlAssessmentV2OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:SqlAssessmentV2Operation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    assessmentType = registerOutput<String?>('assessmentType');
    asyncCommitModeIntent = registerOutput<String?>('asyncCommitModeIntent');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLocation = registerOutput<String?>('azureLocation');
    azureOfferCode = registerOutput<String?>('azureOfferCode');
    azureOfferCodeForVm = registerOutput<String?>('azureOfferCodeForVm');
    azureSecurityOfferingType = registerOutput<String?>(
      'azureSecurityOfferingType',
    );
    azureSqlDatabaseSettings = registerOutput<SqlDbSettingsResponse?>(
      'azureSqlDatabaseSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlDbSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureSqlManagedInstanceSettings = registerOutput<SqlMiSettingsResponse?>(
      'azureSqlManagedInstanceSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlMiSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    azureSqlVmSettings = registerOutput<SqlVmSettingsResponse?>(
      'azureSqlVmSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlVmSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    confidenceRatingInPercentage = registerOutput<double?>(
      'confidenceRatingInPercentage',
    );
    createdTimestamp = registerOutput<String>('createdTimestamp');
    currency = registerOutput<String?>('currency');
    disasterRecoveryLocation = registerOutput<String?>(
      'disasterRecoveryLocation',
    );
    discountPercentage = registerOutput<double?>('discountPercentage');
    eaSubscriptionId = registerOutput<String?>('eaSubscriptionId');
    enableHadrAssessment = registerOutput<bool?>('enableHadrAssessment');
    entityUptime = registerOutput<EntityUptimeResponse?>(
      'entityUptime',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EntityUptimeResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    environmentType = registerOutput<String?>('environmentType');
    groupType = registerOutput<String?>('groupType');
    isInternetAccessAvailable = registerOutput<bool?>(
      'isInternetAccessAvailable',
    );
    multiSubnetIntent = registerOutput<String?>('multiSubnetIntent');
    this.name = registerOutput<String>('name');
    optimizationLogic = registerOutput<String?>('optimizationLogic');
    osLicense = registerOutput<String?>('osLicense');
    percentile = registerOutput<String?>('percentile');
    perfDataEndTime = registerOutput<String?>('perfDataEndTime');
    perfDataStartTime = registerOutput<String?>('perfDataStartTime');
    pricesTimestamp = registerOutput<String>('pricesTimestamp');
    provisioningState = registerOutput<String?>('provisioningState');
    reservedInstance = registerOutput<String?>('reservedInstance');
    reservedInstanceForVm = registerOutput<String?>('reservedInstanceForVm');
    scalingFactor = registerOutput<double?>('scalingFactor');
    schemaVersion = registerOutput<String>('schemaVersion');
    sizingCriterion = registerOutput<String?>('sizingCriterion');
    sqlServerLicense = registerOutput<String?>('sqlServerLicense');
    stage = registerOutput<String>('stage');
    status = registerOutput<String>('status');
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
    timeRange = registerOutput<String?>('timeRange');
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
