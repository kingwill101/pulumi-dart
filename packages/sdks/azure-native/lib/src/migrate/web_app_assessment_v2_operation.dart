import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_svc_container_settings_response.dart';
import 'app_svc_native_settings_response.dart';
import 'discovered_entity_light_summary_response.dart';
import 'entity_uptime_response.dart';
import 'system_data_response.dart';
import 'web_app_assessment_v2_operation_args.dart';

/// Web app Assessment REST resource.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebAppAssessmentV2Operations_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppAssessmentV2Operation = new AzureNative.Migrate.WebAppAssessmentV2Operation("webAppAssessmentV2Operation", new()
///     {
///         AppSvcContainerSettings = new AzureNative.Migrate.Inputs.AppSvcContainerSettingsArgs
///         {
///             IsolationRequired = true,
///         },
///         AppSvcNativeSettings = new AzureNative.Migrate.Inputs.AppSvcNativeSettingsArgs
///         {
///             IsolationRequired = true,
///         },
///         AssessmentName = "anraghun-selfhost-v2",
///         AssessmentType = AzureNative.Migrate.AssessmentType.WebAppAssessment,
///         AzureLocation = "UkWest",
///         AzureOfferCode = AzureNative.Migrate.AzureOfferCode.Msazr0003P,
///         AzureSecurityOfferingType = AzureNative.Migrate.AzureSecurityOfferingType.NO,
///         ConfidenceRatingInPercentage = 13,
///         Currency = AzureNative.Migrate.AzureCurrency.USD,
///         DiscountPercentage = 13,
///         DiscoveredEntityLightSummary = new AzureNative.Migrate.Inputs.DiscoveredEntityLightSummaryArgs
///         {
///             NumberOfMachines = 27,
///             NumberOfServers = 5,
///             NumberOfWebApps = 23,
///         },
///         EaSubscriptionId = "",
///         EntityUptime = new AzureNative.Migrate.Inputs.EntityUptimeArgs
///         {
///             DaysPerMonth = 18,
///             HoursPerDay = 13,
///         },
///         EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///         GroupName = "anraghun-selfhost-v2",
///         GroupType = AzureNative.Migrate.GroupType.Default,
///         Percentile = AzureNative.Migrate.Percentile.Percentile50,
///         PerfDataEndTime = "2023-11-03T05:42:45.496Z",
///         PerfDataStartTime = "2023-11-03T05:42:45.496Z",
///         ProjectName = "sumukk-ccy-bcs4557project",
///         ReservedInstance = AzureNative.Migrate.AzureReservedInstance.None,
///         ResourceGroupName = "rgopenapi",
///         ScalingFactor = 17,
///         SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
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
/// 		_, err := migrate.NewWebAppAssessmentV2Operation(ctx, "webAppAssessmentV2Operation", &migrate.WebAppAssessmentV2OperationArgs{
/// 			AppSvcContainerSettings: &migrate.AppSvcContainerSettingsArgs{
/// 				IsolationRequired: pulumi.Bool(true),
/// 			},
/// 			AppSvcNativeSettings: &migrate.AppSvcNativeSettingsArgs{
/// 				IsolationRequired: pulumi.Bool(true),
/// 			},
/// 			AssessmentName:               pulumi.String("anraghun-selfhost-v2"),
/// 			AssessmentType:               pulumi.String(migrate.AssessmentTypeWebAppAssessment),
/// 			AzureLocation:                pulumi.String("UkWest"),
/// 			AzureOfferCode:               pulumi.String(migrate.AzureOfferCodeMsazr0003P),
/// 			AzureSecurityOfferingType:    pulumi.String(migrate.AzureSecurityOfferingTypeNO),
/// 			ConfidenceRatingInPercentage: pulumi.Float64(13),
/// 			Currency:                     pulumi.String(migrate.AzureCurrencyUSD),
/// 			DiscountPercentage:           pulumi.Float64(13),
/// 			DiscoveredEntityLightSummary: &migrate.DiscoveredEntityLightSummaryArgs{
/// 				NumberOfMachines: pulumi.Int(27),
/// 				NumberOfServers:  pulumi.Int(5),
/// 				NumberOfWebApps:  pulumi.Int(23),
/// 			},
/// 			EaSubscriptionId: pulumi.String(""),
/// 			EntityUptime: &migrate.EntityUptimeArgs{
/// 				DaysPerMonth: pulumi.Int(18),
/// 				HoursPerDay:  pulumi.Int(13),
/// 			},
/// 			EnvironmentType:   pulumi.String(migrate.EnvironmentTypeProduction),
/// 			GroupName:         pulumi.String("anraghun-selfhost-v2"),
/// 			GroupType:         pulumi.String(migrate.GroupTypeDefault),
/// 			Percentile:        pulumi.String(migrate.PercentilePercentile50),
/// 			PerfDataEndTime:   pulumi.String("2023-11-03T05:42:45.496Z"),
/// 			PerfDataStartTime: pulumi.String("2023-11-03T05:42:45.496Z"),
/// 			ProjectName:       pulumi.String("sumukk-ccy-bcs4557project"),
/// 			ReservedInstance:  pulumi.String(migrate.AzureReservedInstanceNone),
/// 			ResourceGroupName: pulumi.String("rgopenapi"),
/// 			ScalingFactor:     pulumi.Float64(17),
/// 			SizingCriterion:   pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 			TimeRange:         pulumi.String(migrate.TimeRangeDay),
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
/// import com.pulumi.azurenative.migrate.WebAppAssessmentV2Operation;
/// import com.pulumi.azurenative.migrate.WebAppAssessmentV2OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.AppSvcContainerSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.AppSvcNativeSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.DiscoveredEntityLightSummaryArgs;
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
///         var webAppAssessmentV2Operation = new WebAppAssessmentV2Operation("webAppAssessmentV2Operation", WebAppAssessmentV2OperationArgs.builder()
///             .appSvcContainerSettings(AppSvcContainerSettingsArgs.builder()
///                 .isolationRequired(true)
///                 .build())
///             .appSvcNativeSettings(AppSvcNativeSettingsArgs.builder()
///                 .isolationRequired(true)
///                 .build())
///             .assessmentName("anraghun-selfhost-v2")
///             .assessmentType("WebAppAssessment")
///             .azureLocation("UkWest")
///             .azureOfferCode("MSAZR0003P")
///             .azureSecurityOfferingType("NO")
///             .confidenceRatingInPercentage(13.0)
///             .currency("USD")
///             .discountPercentage(13.0)
///             .discoveredEntityLightSummary(DiscoveredEntityLightSummaryArgs.builder()
///                 .numberOfMachines(27)
///                 .numberOfServers(5)
///                 .numberOfWebApps(23)
///                 .build())
///             .eaSubscriptionId("")
///             .entityUptime(EntityUptimeArgs.builder()
///                 .daysPerMonth(18)
///                 .hoursPerDay(13)
///                 .build())
///             .environmentType("Production")
///             .groupName("anraghun-selfhost-v2")
///             .groupType("Default")
///             .percentile("Percentile50")
///             .perfDataEndTime("2023-11-03T05:42:45.496Z")
///             .perfDataStartTime("2023-11-03T05:42:45.496Z")
///             .projectName("sumukk-ccy-bcs4557project")
///             .reservedInstance("None")
///             .resourceGroupName("rgopenapi")
///             .scalingFactor(17.0)
///             .sizingCriterion("PerformanceBased")
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
/// const webAppAssessmentV2Operation = new azure_native.migrate.WebAppAssessmentV2Operation("webAppAssessmentV2Operation", {
///     appSvcContainerSettings: {
///         isolationRequired: true,
///     },
///     appSvcNativeSettings: {
///         isolationRequired: true,
///     },
///     assessmentName: "anraghun-selfhost-v2",
///     assessmentType: azure_native.migrate.AssessmentType.WebAppAssessment,
///     azureLocation: "UkWest",
///     azureOfferCode: azure_native.migrate.AzureOfferCode.Msazr0003P,
///     azureSecurityOfferingType: azure_native.migrate.AzureSecurityOfferingType.NO,
///     confidenceRatingInPercentage: 13,
///     currency: azure_native.migrate.AzureCurrency.USD,
///     discountPercentage: 13,
///     discoveredEntityLightSummary: {
///         numberOfMachines: 27,
///         numberOfServers: 5,
///         numberOfWebApps: 23,
///     },
///     eaSubscriptionId: "",
///     entityUptime: {
///         daysPerMonth: 18,
///         hoursPerDay: 13,
///     },
///     environmentType: azure_native.migrate.EnvironmentType.Production,
///     groupName: "anraghun-selfhost-v2",
///     groupType: azure_native.migrate.GroupType.Default,
///     percentile: azure_native.migrate.Percentile.Percentile50,
///     perfDataEndTime: "2023-11-03T05:42:45.496Z",
///     perfDataStartTime: "2023-11-03T05:42:45.496Z",
///     projectName: "sumukk-ccy-bcs4557project",
///     reservedInstance: azure_native.migrate.AzureReservedInstance.None,
///     resourceGroupName: "rgopenapi",
///     scalingFactor: 17,
///     sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///     timeRange: azure_native.migrate.TimeRange.Day,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_app_assessment_v2_operation = azure_native.migrate.WebAppAssessmentV2Operation("webAppAssessmentV2Operation",
///     app_svc_container_settings={
///         "isolation_required": True,
///     },
///     app_svc_native_settings={
///         "isolation_required": True,
///     },
///     assessment_name="anraghun-selfhost-v2",
///     assessment_type=azure_native.migrate.AssessmentType.WEB_APP_ASSESSMENT,
///     azure_location="UkWest",
///     azure_offer_code=azure_native.migrate.AzureOfferCode.MSAZR0003_P,
///     azure_security_offering_type=azure_native.migrate.AzureSecurityOfferingType.NO,
///     confidence_rating_in_percentage=13,
///     currency=azure_native.migrate.AzureCurrency.USD,
///     discount_percentage=13,
///     discovered_entity_light_summary={
///         "number_of_machines": 27,
///         "number_of_servers": 5,
///         "number_of_web_apps": 23,
///     },
///     ea_subscription_id="",
///     entity_uptime={
///         "days_per_month": 18,
///         "hours_per_day": 13,
///     },
///     environment_type=azure_native.migrate.EnvironmentType.PRODUCTION,
///     group_name="anraghun-selfhost-v2",
///     group_type=azure_native.migrate.GroupType.DEFAULT,
///     percentile=azure_native.migrate.Percentile.PERCENTILE50,
///     perf_data_end_time="2023-11-03T05:42:45.496Z",
///     perf_data_start_time="2023-11-03T05:42:45.496Z",
///     project_name="sumukk-ccy-bcs4557project",
///     reserved_instance=azure_native.migrate.AzureReservedInstance.NONE,
///     resource_group_name="rgopenapi",
///     scaling_factor=17,
///     sizing_criterion=azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///     time_range=azure_native.migrate.TimeRange.DAY)
///
/// ```
///
/// ```yaml
/// resources:
///   webAppAssessmentV2Operation:
///     type: azure-native:migrate:WebAppAssessmentV2Operation
///     properties:
///       appSvcContainerSettings:
///         isolationRequired: true
///       appSvcNativeSettings:
///         isolationRequired: true
///       assessmentName: anraghun-selfhost-v2
///       assessmentType: WebAppAssessment
///       azureLocation: UkWest
///       azureOfferCode: MSAZR0003P
///       azureSecurityOfferingType: NO
///       confidenceRatingInPercentage: 13
///       currency: USD
///       discountPercentage: 13
///       discoveredEntityLightSummary:
///         numberOfMachines: 27
///         numberOfServers: 5
///         numberOfWebApps: 23
///       eaSubscriptionId: ""
///       entityUptime:
///         daysPerMonth: 18
///         hoursPerDay: 13
///       environmentType: Production
///       groupName: anraghun-selfhost-v2
///       groupType: Default
///       percentile: Percentile50
///       perfDataEndTime: 2023-11-03T05:42:45.496Z
///       perfDataStartTime: 2023-11-03T05:42:45.496Z
///       projectName: sumukk-ccy-bcs4557project
///       reservedInstance: None
///       resourceGroupName: rgopenapi
///       scalingFactor: 17
///       sizingCriterion: PerformanceBased
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
/// $ pulumi import azure-native:migrate:WebAppAssessmentV2Operation anraghun-v2-test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/webAppAssessments/{assessmentName}
/// ```
class WebAppAssessmentV2Operation extends pulumi.CustomResource {
  /// Gets or sets user configurable app service container database settings.
  late final pulumi.Output<AppSvcContainerSettingsResponse?> appSvcContainerSettings;
  /// Gets or sets user configurable app service native settings.
  late final pulumi.Output<AppSvcNativeSettingsResponse?> appSvcNativeSettings;
  /// Assessment type of the assessment.
  late final pulumi.Output<String?> assessmentType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure Location or Azure region where to which the machines will be migrated.
  late final pulumi.Output<String?> azureLocation;
  /// Azure Offer Code.
  late final pulumi.Output<String?> azureOfferCode;
  /// Gets or sets a value indicating azure security offering type.
  late final pulumi.Output<String?> azureSecurityOfferingType;
  /// Confidence Rating in Percentage.
  late final pulumi.Output<double?> confidenceRatingInPercentage;
  /// Date and Time when assessment was created.
  late final pulumi.Output<String> createdTimestamp;
  /// Currency in which prices should be reported.
  late final pulumi.Output<String?> currency;
  /// Custom discount percentage.
  late final pulumi.Output<double?> discountPercentage;
  /// Gets or sets user configurable discovered entity settings.
  late final pulumi.Output<DiscoveredEntityLightSummaryResponse?> discoveredEntityLightSummary;
  /// Gets or sets the Enterprise agreement subscription id.
  late final pulumi.Output<String?> eaSubscriptionId;
  /// Gets or sets the duration for which the entity (Web app, VMs) are up in the
  /// on-premises environment.
  late final pulumi.Output<EntityUptimeResponse?> entityUptime;
  /// Gets or sets user configurable setting to display the environment type.
  late final pulumi.Output<String?> environmentType;
  /// Gets the group type for the assessment.
  late final pulumi.Output<String?> groupType;
  /// The name of the resource
  late final pulumi.Output<String> name;
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
  late final pulumi.Output<String> provisioningState;
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
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Time Range for which the historic utilization data should be considered for
  /// assessment.
  late final pulumi.Output<String?> timeRange;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Date and Time when assessment was last updated.
  late final pulumi.Output<String> updatedTimestamp;

  /// Creates a new [WebAppAssessmentV2Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAssessmentV2Operation]. {@macro pulumi_migrate_web_app_assessment_v2_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAssessmentV2Operation(
    String name, {
    WebAppAssessmentV2OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:migrate:WebAppAssessmentV2Operation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appSvcContainerSettings = registerOutput<AppSvcContainerSettingsResponse?>('appSvcContainerSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppSvcContainerSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    appSvcNativeSettings = registerOutput<AppSvcNativeSettingsResponse?>('appSvcNativeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppSvcNativeSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    assessmentType = registerOutput<String?>('assessmentType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLocation = registerOutput<String?>('azureLocation');
    azureOfferCode = registerOutput<String?>('azureOfferCode');
    azureSecurityOfferingType = registerOutput<String?>('azureSecurityOfferingType');
    confidenceRatingInPercentage = registerOutput<double?>('confidenceRatingInPercentage');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    currency = registerOutput<String?>('currency');
    discountPercentage = registerOutput<double?>('discountPercentage');
    discoveredEntityLightSummary = registerOutput<DiscoveredEntityLightSummaryResponse?>('discoveredEntityLightSummary', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DiscoveredEntityLightSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eaSubscriptionId = registerOutput<String?>('eaSubscriptionId');
    entityUptime = registerOutput<EntityUptimeResponse?>('entityUptime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntityUptimeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    environmentType = registerOutput<String?>('environmentType');
    groupType = registerOutput<String?>('groupType');
    this.name = registerOutput<String>('name');
    percentile = registerOutput<String?>('percentile');
    perfDataEndTime = registerOutput<String?>('perfDataEndTime');
    perfDataStartTime = registerOutput<String?>('perfDataStartTime');
    pricesTimestamp = registerOutput<String>('pricesTimestamp');
    provisioningState = registerOutput<String>('provisioningState');
    reservedInstance = registerOutput<String?>('reservedInstance');
    scalingFactor = registerOutput<double?>('scalingFactor');
    schemaVersion = registerOutput<String>('schemaVersion');
    sizingCriterion = registerOutput<String?>('sizingCriterion');
    stage = registerOutput<String>('stage');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeRange = registerOutput<String?>('timeRange');
    type = registerOutput<String>('type');
    updatedTimestamp = registerOutput<String>('updatedTimestamp');
  }
}
