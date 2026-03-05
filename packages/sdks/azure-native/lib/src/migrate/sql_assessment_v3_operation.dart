import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_assessment_v3_operation_args.dart';
import 'sql_assessment_v3_properties_response.dart';
import 'system_data_response.dart';

/// SQL Assessment REST resource.
///
/// Uses Azure REST API version 2024-03-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SqlAssessmentV3Operations_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlAssessmentV3Operation = new AzureNative.Migrate.SqlAssessmentV3Operation("sqlAssessmentV3Operation", new()
///     {
///         AssessmentName = "assessmentName",
///         ProjectName = "contosoProject",
///         Properties = new AzureNative.Migrate.Inputs.SqlAssessmentV3PropertiesArgs
///         {
///             FallbackMachineAssessmentArmId = "jfwkifsuigza",
///             Scope = new AzureNative.Migrate.Inputs.ScopeArgs
///             {
///                 AzureResourceGraphQuery = "ddqs",
///                 ScopeType = AzureNative.Migrate.ScopeType.ServerGroupId,
///                 ServerGroupId = "ppxcjyrxfmpm",
///             },
///             Settings = new AzureNative.Migrate.Inputs.SqlAssessmentSettingsArgs
///             {
///                 AsyncCommitModeIntent = AzureNative.Migrate.AsyncCommitModeIntent.None,
///                 AzureLocation = "vtpazagckatiezkiwol",
///                 AzureSecurityOfferingType = AzureNative.Migrate.AzureSecurityOfferingType.NO,
///                 AzureSqlDatabaseSettings = new AzureNative.Migrate.Inputs.SqlDbSettingsV3Args
///                 {
///                     AzureSqlComputeTier = AzureNative.Migrate.ComputeTier.Unknown,
///                     AzureSqlDataBaseType = AzureNative.Migrate.AzureSqlDataBaseType.Unknown,
///                     AzureSqlPurchaseModel = AzureNative.Migrate.AzureSqlPurchaseModel.Unknown,
///                     AzureSqlServiceTier = AzureNative.Migrate.AzureSqlServiceTierV3.SqlService_Unknown,
///                 },
///                 AzureSqlManagedInstanceSettings = new AzureNative.Migrate.Inputs.SqlMiSettingsV3Args
///                 {
///                     AzureSqlInstanceType = AzureNative.Migrate.AzureSqlInstanceType.Unknown,
///                     AzureSqlServiceTier = AzureNative.Migrate.AzureSqlServiceTierV3.SqlService_Unknown,
///                 },
///                 AzureSqlVmSettings = new AzureNative.Migrate.Inputs.SqlVmSettingsArgs
///                 {
///                     InstanceSeries = new[]
///                     {
///                         AzureNative.Migrate.AzureVmFamily.Unknown,
///                     },
///                 },
///                 BillingSettings = new AzureNative.Migrate.Inputs.BillingSettingsArgs
///                 {
///                     LicensingProgram = AzureNative.Migrate.LicensingProgram.Retail,
///                     SubscriptionId = "sp",
///                 },
///                 Currency = AzureNative.Migrate.AzureCurrency.Unknown,
///                 DisasterRecoveryLocation = AzureNative.Migrate.AzureLocation.Unknown,
///                 DiscountPercentage = 8,
///                 EnableHadrAssessment = true,
///                 EntityUptime = new AzureNative.Migrate.Inputs.EntityUptimeArgs
///                 {
///                     DaysPerMonth = 2,
///                     HoursPerDay = 28,
///                 },
///                 EnvironmentType = AzureNative.Migrate.EnvironmentType.Production,
///                 IsInternetAccessAvailable = true,
///                 MultiSubnetIntent = AzureNative.Migrate.MultiSubnetIntent.None,
///                 OsLicense = AzureNative.Migrate.OsLicense.Unknown,
///                 PerformanceData = new AzureNative.Migrate.Inputs.PerformanceDataArgs
///                 {
///                     Percentile = "Unknown",
///                     PerfDataEndTime = "2025-02-21T05:15:28.133Z",
///                     PerfDataStartTime = "2025-02-21T05:15:28.133Z",
///                     TimeRange = AzureNative.Migrate.TimeRange.Day,
///                 },
///                 PreferredTargets = new[]
///                 {
///                     AzureNative.Migrate.AzureTarget.Unknown,
///                 },
///                 SavingsSettings = new AzureNative.Migrate.Inputs.SavingsSettingsArgs
///                 {
///                     AzureOfferCode = AzureNative.Migrate.AzureOffer.Unknown,
///                     SavingsOptions = AzureNative.Migrate.SavingsOptions.None,
///                 },
///                 ScalingFactor = 27,
///                 SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///                 SqlServerLicense = AzureNative.Migrate.SqlServerLicense.Unknown,
///             },
///         },
///         ResourceGroupName = "rgsqlAssessments",
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
/// 		_, err := migrate.NewSqlAssessmentV3Operation(ctx, "sqlAssessmentV3Operation", &migrate.SqlAssessmentV3OperationArgs{
/// 			AssessmentName: pulumi.String("assessmentName"),
/// 			ProjectName:    pulumi.String("contosoProject"),
/// 			Properties: &migrate.SqlAssessmentV3PropertiesArgs{
/// 				FallbackMachineAssessmentArmId: pulumi.String("jfwkifsuigza"),
/// 				Scope: &migrate.ScopeArgs{
/// 					AzureResourceGraphQuery: pulumi.String("ddqs"),
/// 					ScopeType:               pulumi.String(migrate.ScopeTypeServerGroupId),
/// 					ServerGroupId:           pulumi.String("ppxcjyrxfmpm"),
/// 				},
/// 				Settings: &migrate.SqlAssessmentSettingsArgs{
/// 					AsyncCommitModeIntent:     pulumi.String(migrate.AsyncCommitModeIntentNone),
/// 					AzureLocation:             pulumi.String("vtpazagckatiezkiwol"),
/// 					AzureSecurityOfferingType: pulumi.String(migrate.AzureSecurityOfferingTypeNO),
/// 					AzureSqlDatabaseSettings: &migrate.SqlDbSettingsV3Args{
/// 						AzureSqlComputeTier:   pulumi.String(migrate.ComputeTierUnknown),
/// 						AzureSqlDataBaseType:  pulumi.String(migrate.AzureSqlDataBaseTypeUnknown),
/// 						AzureSqlPurchaseModel: pulumi.String(migrate.AzureSqlPurchaseModelUnknown),
/// 						AzureSqlServiceTier:   pulumi.String(migrate.AzureSqlServiceTierV3_SqlService_Unknown),
/// 					},
/// 					AzureSqlManagedInstanceSettings: &migrate.SqlMiSettingsV3Args{
/// 						AzureSqlInstanceType: pulumi.String(migrate.AzureSqlInstanceTypeUnknown),
/// 						AzureSqlServiceTier:  pulumi.String(migrate.AzureSqlServiceTierV3_SqlService_Unknown),
/// 					},
/// 					AzureSqlVmSettings: &migrate.SqlVmSettingsArgs{
/// 						InstanceSeries: pulumi.StringArray{
/// 							pulumi.String(migrate.AzureVmFamilyUnknown),
/// 						},
/// 					},
/// 					BillingSettings: &migrate.BillingSettingsArgs{
/// 						LicensingProgram: pulumi.String(migrate.LicensingProgramRetail),
/// 						SubscriptionId:   pulumi.String("sp"),
/// 					},
/// 					Currency:                 pulumi.String(migrate.AzureCurrencyUnknown),
/// 					DisasterRecoveryLocation: pulumi.String(migrate.AzureLocationUnknown),
/// 					DiscountPercentage:       pulumi.Float64(8),
/// 					EnableHadrAssessment:     pulumi.Bool(true),
/// 					EntityUptime: &migrate.EntityUptimeArgs{
/// 						DaysPerMonth: pulumi.Int(2),
/// 						HoursPerDay:  pulumi.Int(28),
/// 					},
/// 					EnvironmentType:           pulumi.String(migrate.EnvironmentTypeProduction),
/// 					IsInternetAccessAvailable: pulumi.Bool(true),
/// 					MultiSubnetIntent:         pulumi.String(migrate.MultiSubnetIntentNone),
/// 					OsLicense:                 pulumi.String(migrate.OsLicenseUnknown),
/// 					PerformanceData: &migrate.PerformanceDataArgs{
/// 						Percentile:        pulumi.String("Unknown"),
/// 						PerfDataEndTime:   pulumi.String("2025-02-21T05:15:28.133Z"),
/// 						PerfDataStartTime: pulumi.String("2025-02-21T05:15:28.133Z"),
/// 						TimeRange:         pulumi.String(migrate.TimeRangeDay),
/// 					},
/// 					PreferredTargets: pulumi.StringArray{
/// 						pulumi.String(migrate.AzureTargetUnknown),
/// 					},
/// 					SavingsSettings: &migrate.SavingsSettingsArgs{
/// 						AzureOfferCode: pulumi.String(migrate.AzureOfferUnknown),
/// 						SavingsOptions: pulumi.String(migrate.SavingsOptionsNone),
/// 					},
/// 					ScalingFactor:    pulumi.Float64(27),
/// 					SizingCriterion:  pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 					SqlServerLicense: pulumi.String(migrate.SqlServerLicenseUnknown),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgsqlAssessments"),
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
/// import com.pulumi.azurenative.migrate.SqlAssessmentV3Operation;
/// import com.pulumi.azurenative.migrate.SqlAssessmentV3OperationArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlAssessmentV3PropertiesArgs;
/// import com.pulumi.azurenative.migrate.inputs.ScopeArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlAssessmentSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.SqlDbSettingsV3Args;
/// import com.pulumi.azurenative.migrate.inputs.SqlMiSettingsV3Args;
/// import com.pulumi.azurenative.migrate.inputs.SqlVmSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.BillingSettingsArgs;
/// import com.pulumi.azurenative.migrate.inputs.EntityUptimeArgs;
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
///         var sqlAssessmentV3Operation = new SqlAssessmentV3Operation("sqlAssessmentV3Operation", SqlAssessmentV3OperationArgs.builder()
///             .assessmentName("assessmentName")
///             .projectName("contosoProject")
///             .properties(SqlAssessmentV3PropertiesArgs.builder()
///                 .fallbackMachineAssessmentArmId("jfwkifsuigza")
///                 .scope(ScopeArgs.builder()
///                     .azureResourceGraphQuery("ddqs")
///                     .scopeType("ServerGroupId")
///                     .serverGroupId("ppxcjyrxfmpm")
///                     .build())
///                 .settings(SqlAssessmentSettingsArgs.builder()
///                     .asyncCommitModeIntent("None")
///                     .azureLocation("vtpazagckatiezkiwol")
///                     .azureSecurityOfferingType("NO")
///                     .azureSqlDatabaseSettings(SqlDbSettingsV3Args.builder()
///                         .azureSqlComputeTier("Unknown")
///                         .azureSqlDataBaseType("Unknown")
///                         .azureSqlPurchaseModel("Unknown")
///                         .azureSqlServiceTier("SqlService_Unknown")
///                         .build())
///                     .azureSqlManagedInstanceSettings(SqlMiSettingsV3Args.builder()
///                         .azureSqlInstanceType("Unknown")
///                         .azureSqlServiceTier("SqlService_Unknown")
///                         .build())
///                     .azureSqlVmSettings(SqlVmSettingsArgs.builder()
///                         .instanceSeries("Unknown")
///                         .build())
///                     .billingSettings(BillingSettingsArgs.builder()
///                         .licensingProgram("Retail")
///                         .subscriptionId("sp")
///                         .build())
///                     .currency("Unknown")
///                     .disasterRecoveryLocation("Unknown")
///                     .discountPercentage(8.0)
///                     .enableHadrAssessment(true)
///                     .entityUptime(EntityUptimeArgs.builder()
///                         .daysPerMonth(2)
///                         .hoursPerDay(28)
///                         .build())
///                     .environmentType("Production")
///                     .isInternetAccessAvailable(true)
///                     .multiSubnetIntent("None")
///                     .osLicense("Unknown")
///                     .performanceData(PerformanceDataArgs.builder()
///                         .percentile("Unknown")
///                         .perfDataEndTime("2025-02-21T05:15:28.133Z")
///                         .perfDataStartTime("2025-02-21T05:15:28.133Z")
///                         .timeRange("Day")
///                         .build())
///                     .preferredTargets("Unknown")
///                     .savingsSettings(SavingsSettingsArgs.builder()
///                         .azureOfferCode("Unknown")
///                         .savingsOptions("None")
///                         .build())
///                     .scalingFactor(27.0)
///                     .sizingCriterion("PerformanceBased")
///                     .sqlServerLicense("Unknown")
///                     .build())
///                 .build())
///             .resourceGroupName("rgsqlAssessments")
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
/// const sqlAssessmentV3Operation = new azure_native.migrate.SqlAssessmentV3Operation("sqlAssessmentV3Operation", {
///     assessmentName: "assessmentName",
///     projectName: "contosoProject",
///     properties: {
///         fallbackMachineAssessmentArmId: "jfwkifsuigza",
///         scope: {
///             azureResourceGraphQuery: "ddqs",
///             scopeType: azure_native.migrate.ScopeType.ServerGroupId,
///             serverGroupId: "ppxcjyrxfmpm",
///         },
///         settings: {
///             asyncCommitModeIntent: azure_native.migrate.AsyncCommitModeIntent.None,
///             azureLocation: "vtpazagckatiezkiwol",
///             azureSecurityOfferingType: azure_native.migrate.AzureSecurityOfferingType.NO,
///             azureSqlDatabaseSettings: {
///                 azureSqlComputeTier: azure_native.migrate.ComputeTier.Unknown,
///                 azureSqlDataBaseType: azure_native.migrate.AzureSqlDataBaseType.Unknown,
///                 azureSqlPurchaseModel: azure_native.migrate.AzureSqlPurchaseModel.Unknown,
///                 azureSqlServiceTier: azure_native.migrate.AzureSqlServiceTierV3.SqlService_Unknown,
///             },
///             azureSqlManagedInstanceSettings: {
///                 azureSqlInstanceType: azure_native.migrate.AzureSqlInstanceType.Unknown,
///                 azureSqlServiceTier: azure_native.migrate.AzureSqlServiceTierV3.SqlService_Unknown,
///             },
///             azureSqlVmSettings: {
///                 instanceSeries: [azure_native.migrate.AzureVmFamily.Unknown],
///             },
///             billingSettings: {
///                 licensingProgram: azure_native.migrate.LicensingProgram.Retail,
///                 subscriptionId: "sp",
///             },
///             currency: azure_native.migrate.AzureCurrency.Unknown,
///             disasterRecoveryLocation: azure_native.migrate.AzureLocation.Unknown,
///             discountPercentage: 8,
///             enableHadrAssessment: true,
///             entityUptime: {
///                 daysPerMonth: 2,
///                 hoursPerDay: 28,
///             },
///             environmentType: azure_native.migrate.EnvironmentType.Production,
///             isInternetAccessAvailable: true,
///             multiSubnetIntent: azure_native.migrate.MultiSubnetIntent.None,
///             osLicense: azure_native.migrate.OsLicense.Unknown,
///             performanceData: {
///                 percentile: "Unknown",
///                 perfDataEndTime: "2025-02-21T05:15:28.133Z",
///                 perfDataStartTime: "2025-02-21T05:15:28.133Z",
///                 timeRange: azure_native.migrate.TimeRange.Day,
///             },
///             preferredTargets: [azure_native.migrate.AzureTarget.Unknown],
///             savingsSettings: {
///                 azureOfferCode: azure_native.migrate.AzureOffer.Unknown,
///                 savingsOptions: azure_native.migrate.SavingsOptions.None,
///             },
///             scalingFactor: 27,
///             sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///             sqlServerLicense: azure_native.migrate.SqlServerLicense.Unknown,
///         },
///     },
///     resourceGroupName: "rgsqlAssessments",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_assessment_v3_operation = azure_native.migrate.SqlAssessmentV3Operation("sqlAssessmentV3Operation",
///     assessment_name="assessmentName",
///     project_name="contosoProject",
///     properties={
///         "fallback_machine_assessment_arm_id": "jfwkifsuigza",
///         "scope": {
///             "azure_resource_graph_query": "ddqs",
///             "scope_type": azure_native.migrate.ScopeType.SERVER_GROUP_ID,
///             "server_group_id": "ppxcjyrxfmpm",
///         },
///         "settings": {
///             "async_commit_mode_intent": azure_native.migrate.AsyncCommitModeIntent.NONE,
///             "azure_location": "vtpazagckatiezkiwol",
///             "azure_security_offering_type": azure_native.migrate.AzureSecurityOfferingType.NO,
///             "azure_sql_database_settings": {
///                 "azure_sql_compute_tier": azure_native.migrate.ComputeTier.UNKNOWN,
///                 "azure_sql_data_base_type": azure_native.migrate.AzureSqlDataBaseType.UNKNOWN,
///                 "azure_sql_purchase_model": azure_native.migrate.AzureSqlPurchaseModel.UNKNOWN,
///                 "azure_sql_service_tier": azure_native.migrate.AzureSqlServiceTierV3.SQL_SERVICE_UNKNOWN,
///             },
///             "azure_sql_managed_instance_settings": {
///                 "azure_sql_instance_type": azure_native.migrate.AzureSqlInstanceType.UNKNOWN,
///                 "azure_sql_service_tier": azure_native.migrate.AzureSqlServiceTierV3.SQL_SERVICE_UNKNOWN,
///             },
///             "azure_sql_vm_settings": {
///                 "instance_series": [azure_native.migrate.AzureVmFamily.UNKNOWN],
///             },
///             "billing_settings": {
///                 "licensing_program": azure_native.migrate.LicensingProgram.RETAIL,
///                 "subscription_id": "sp",
///             },
///             "currency": azure_native.migrate.AzureCurrency.UNKNOWN,
///             "disaster_recovery_location": azure_native.migrate.AzureLocation.UNKNOWN,
///             "discount_percentage": 8,
///             "enable_hadr_assessment": True,
///             "entity_uptime": {
///                 "days_per_month": 2,
///                 "hours_per_day": 28,
///             },
///             "environment_type": azure_native.migrate.EnvironmentType.PRODUCTION,
///             "is_internet_access_available": True,
///             "multi_subnet_intent": azure_native.migrate.MultiSubnetIntent.NONE,
///             "os_license": azure_native.migrate.OsLicense.UNKNOWN,
///             "performance_data": {
///                 "percentile": "Unknown",
///                 "perf_data_end_time": "2025-02-21T05:15:28.133Z",
///                 "perf_data_start_time": "2025-02-21T05:15:28.133Z",
///                 "time_range": azure_native.migrate.TimeRange.DAY,
///             },
///             "preferred_targets": [azure_native.migrate.AzureTarget.UNKNOWN],
///             "savings_settings": {
///                 "azure_offer_code": azure_native.migrate.AzureOffer.UNKNOWN,
///                 "savings_options": azure_native.migrate.SavingsOptions.NONE,
///             },
///             "scaling_factor": 27,
///             "sizing_criterion": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///             "sql_server_license": azure_native.migrate.SqlServerLicense.UNKNOWN,
///         },
///     },
///     resource_group_name="rgsqlAssessments")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlAssessmentV3Operation:
///     type: azure-native:migrate:SqlAssessmentV3Operation
///     properties:
///       assessmentName: assessmentName
///       projectName: contosoProject
///       properties:
///         fallbackMachineAssessmentArmId: jfwkifsuigza
///         scope:
///           azureResourceGraphQuery: ddqs
///           scopeType: ServerGroupId
///           serverGroupId: ppxcjyrxfmpm
///         settings:
///           asyncCommitModeIntent: None
///           azureLocation: vtpazagckatiezkiwol
///           azureSecurityOfferingType: NO
///           azureSqlDatabaseSettings:
///             azureSqlComputeTier: Unknown
///             azureSqlDataBaseType: Unknown
///             azureSqlPurchaseModel: Unknown
///             azureSqlServiceTier: SqlService_Unknown
///           azureSqlManagedInstanceSettings:
///             azureSqlInstanceType: Unknown
///             azureSqlServiceTier: SqlService_Unknown
///           azureSqlVmSettings:
///             instanceSeries:
///               - Unknown
///           billingSettings:
///             licensingProgram: Retail
///             subscriptionId: sp
///           currency: Unknown
///           disasterRecoveryLocation: Unknown
///           discountPercentage: 8
///           enableHadrAssessment: true
///           entityUptime:
///             daysPerMonth: 2
///             hoursPerDay: 28
///           environmentType: Production
///           isInternetAccessAvailable: true
///           multiSubnetIntent: None
///           osLicense: Unknown
///           performanceData:
///             percentile: Unknown
///             perfDataEndTime: 2025-02-21T05:15:28.133Z
///             perfDataStartTime: 2025-02-21T05:15:28.133Z
///             timeRange: Day
///           preferredTargets:
///             - Unknown
///           savingsSettings:
///             azureOfferCode: Unknown
///             savingsOptions: None
///           scalingFactor: 27
///           sizingCriterion: PerformanceBased
///           sqlServerLicense: Unknown
///       resourceGroupName: rgsqlAssessments
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
/// $ pulumi import azure-native:migrate:SqlAssessmentV3Operation assessmentName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/sqlAssessments/{assessmentName}
/// ```
class SqlAssessmentV3Operation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<SqlAssessmentV3PropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlAssessmentV3Operation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlAssessmentV3Operation]. {@macro pulumi_migrate_sql_assessment_v3_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlAssessmentV3Operation(
    String name, {
    SqlAssessmentV3OperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:SqlAssessmentV3Operation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlAssessmentV3PropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlAssessmentV3PropertiesResponse.fromMap(
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
