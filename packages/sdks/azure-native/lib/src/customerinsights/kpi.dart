import 'package:pulumi/pulumi.dart' as pulumi;
import 'kpi_args.dart';
import 'kpi_thresholds_response.dart';

/// The KPI resource format.
///
/// Uses Azure REST API version 2017-04-26. In version 2.x of the Azure Native provider, it used API version 2017-04-26.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Kpi_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kpi = new AzureNative.CustomerInsights.Kpi("kpi", new()
///     {
///         Aliases = new[]
///         {
///             new AzureNative.CustomerInsights.Inputs.KpiAliasArgs
///             {
///                 AliasName = "alias",
///                 Expression = "Id+4",
///             },
///         },
///         CalculationWindow = AzureNative.CustomerInsights.CalculationWindowTypes.Day,
///         Description =
///         {
///             { "en-us", "Kpi Description" },
///         },
///         DisplayName =
///         {
///             { "en-us", "Kpi DisplayName" },
///         },
///         EntityType = AzureNative.CustomerInsights.EntityTypes.Profile,
///         EntityTypeName = "testProfile2327128",
///         Expression = "SavingAccountBalance",
///         Function = AzureNative.CustomerInsights.KpiFunctions.Sum,
///         GroupBy = new[]
///         {
///             "SavingAccountBalance",
///         },
///         HubName = "sdkTestHub",
///         KpiName = "kpiTest45453647",
///         ResourceGroupName = "TestHubRG",
///         ThresHolds = new AzureNative.CustomerInsights.Inputs.KpiThresholdsArgs
///         {
///             IncreasingKpi = true,
///             LowerLimit = 5,
///             UpperLimit = 50,
///         },
///         Unit = "unit",
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
/// 	customerinsights "github.com/pulumi/pulumi-azure-native-sdk/customerinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerinsights.NewKpi(ctx, "kpi", &customerinsights.KpiArgs{
/// 			Aliases: customerinsights.KpiAliasArray{
/// 				&customerinsights.KpiAliasArgs{
/// 					AliasName:  pulumi.String("alias"),
/// 					Expression: pulumi.String("Id+4"),
/// 				},
/// 			},
/// 			CalculationWindow: customerinsights.CalculationWindowTypesDay,
/// 			Description: pulumi.StringMap{
/// 				"en-us": pulumi.String("Kpi Description"),
/// 			},
/// 			DisplayName: pulumi.StringMap{
/// 				"en-us": pulumi.String("Kpi DisplayName"),
/// 			},
/// 			EntityType:     customerinsights.EntityTypesProfile,
/// 			EntityTypeName: pulumi.String("testProfile2327128"),
/// 			Expression:     pulumi.String("SavingAccountBalance"),
/// 			Function:       customerinsights.KpiFunctionsSum,
/// 			GroupBy: pulumi.StringArray{
/// 				pulumi.String("SavingAccountBalance"),
/// 			},
/// 			HubName:           pulumi.String("sdkTestHub"),
/// 			KpiName:           pulumi.String("kpiTest45453647"),
/// 			ResourceGroupName: pulumi.String("TestHubRG"),
/// 			ThresHolds: &customerinsights.KpiThresholdsArgs{
/// 				IncreasingKpi: pulumi.Bool(true),
/// 				LowerLimit:    pulumi.Float64(5),
/// 				UpperLimit:    pulumi.Float64(50),
/// 			},
/// 			Unit: pulumi.String("unit"),
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
/// import com.pulumi.azurenative.customerinsights.Kpi;
/// import com.pulumi.azurenative.customerinsights.KpiArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.KpiAliasArgs;
/// import com.pulumi.azurenative.customerinsights.inputs.KpiThresholdsArgs;
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
///         var kpi = new Kpi("kpi", KpiArgs.builder()
///             .aliases(KpiAliasArgs.builder()
///                 .aliasName("alias")
///                 .expression("Id+4")
///                 .build())
///             .calculationWindow("Day")
///             .description(Map.of("en-us", "Kpi Description"))
///             .displayName(Map.of("en-us", "Kpi DisplayName"))
///             .entityType("Profile")
///             .entityTypeName("testProfile2327128")
///             .expression("SavingAccountBalance")
///             .function("Sum")
///             .groupBy("SavingAccountBalance")
///             .hubName("sdkTestHub")
///             .kpiName("kpiTest45453647")
///             .resourceGroupName("TestHubRG")
///             .thresHolds(KpiThresholdsArgs.builder()
///                 .increasingKpi(true)
///                 .lowerLimit(5.0)
///                 .upperLimit(50.0)
///                 .build())
///             .unit("unit")
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
/// const kpi = new azure_native.customerinsights.Kpi("kpi", {
///     aliases: [{
///         aliasName: "alias",
///         expression: "Id+4",
///     }],
///     calculationWindow: azure_native.customerinsights.CalculationWindowTypes.Day,
///     description: {
///         "en-us": "Kpi Description",
///     },
///     displayName: {
///         "en-us": "Kpi DisplayName",
///     },
///     entityType: azure_native.customerinsights.EntityTypes.Profile,
///     entityTypeName: "testProfile2327128",
///     expression: "SavingAccountBalance",
///     "function": azure_native.customerinsights.KpiFunctions.Sum,
///     groupBy: ["SavingAccountBalance"],
///     hubName: "sdkTestHub",
///     kpiName: "kpiTest45453647",
///     resourceGroupName: "TestHubRG",
///     thresHolds: {
///         increasingKpi: true,
///         lowerLimit: 5,
///         upperLimit: 50,
///     },
///     unit: "unit",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kpi = azure_native.customerinsights.Kpi("kpi",
///     aliases=[{
///         "alias_name": "alias",
///         "expression": "Id+4",
///     }],
///     calculation_window=azure_native.customerinsights.CalculationWindowTypes.DAY,
///     description={
///         "en-us": "Kpi Description",
///     },
///     display_name={
///         "en-us": "Kpi DisplayName",
///     },
///     entity_type=azure_native.customerinsights.EntityTypes.PROFILE,
///     entity_type_name="testProfile2327128",
///     expression="SavingAccountBalance",
///     function=azure_native.customerinsights.KpiFunctions.SUM,
///     group_by=["SavingAccountBalance"],
///     hub_name="sdkTestHub",
///     kpi_name="kpiTest45453647",
///     resource_group_name="TestHubRG",
///     thres_holds={
///         "increasing_kpi": True,
///         "lower_limit": 5,
///         "upper_limit": 50,
///     },
///     unit="unit")
///
/// ```
///
/// ```yaml
/// resources:
///   kpi:
///     type: azure-native:customerinsights:Kpi
///     properties:
///       aliases:
///         - aliasName: alias
///           expression: Id+4
///       calculationWindow: Day
///       description:
///         en-us: Kpi Description
///       displayName:
///         en-us: Kpi DisplayName
///       entityType: Profile
///       entityTypeName: testProfile2327128
///       expression: SavingAccountBalance
///       function: Sum
///       groupBy:
///         - SavingAccountBalance
///       hubName: sdkTestHub
///       kpiName: kpiTest45453647
///       resourceGroupName: TestHubRG
///       thresHolds:
///         increasingKpi: true
///         lowerLimit: 5
///         upperLimit: 50
///       unit: unit
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
/// $ pulumi import azure-native:customerinsights:Kpi sdkTestHub/kpiTest45453647 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CustomerInsights/hubs/{hubName}/kpi/{kpiName}
/// ```
class Kpi extends pulumi.CustomResource {
  /// The aliases.
  late final pulumi.Output<List<Map<String, dynamic>>?> aliases;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The calculation window.
  late final pulumi.Output<String> calculationWindow;

  /// Name of calculation window field.
  late final pulumi.Output<String?> calculationWindowFieldName;

  /// Localized description for the KPI.
  late final pulumi.Output<Map<String, String>?> description;

  /// Localized display name for the KPI.
  late final pulumi.Output<Map<String, String>?> displayName;

  /// The mapping entity type.
  late final pulumi.Output<String> entityType;

  /// The mapping entity name.
  late final pulumi.Output<String> entityTypeName;

  /// The computation expression for the KPI.
  late final pulumi.Output<String> expression;

  /// The KPI extracts.
  late final pulumi.Output<List<Map<String, dynamic>>?> extracts;

  /// The filter expression for the KPI.
  late final pulumi.Output<String?> filter;

  /// The computation function for the KPI.
  late final pulumi.Output<String> function;

  /// the group by properties for the KPI.
  late final pulumi.Output<List<String>?> groupBy;

  /// The KPI GroupByMetadata.
  late final pulumi.Output<List<Map<String, dynamic>>> groupByMetadata;

  /// The KPI name.
  late final pulumi.Output<String> kpiName;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The participant profiles.
  late final pulumi.Output<List<Map<String, dynamic>>>
  participantProfilesMetadata;

  /// Provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// The hub name.
  late final pulumi.Output<String> tenantId;

  /// The KPI thresholds.
  late final pulumi.Output<KpiThresholdsResponse?> thresHolds;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// The unit of measurement for the KPI.
  late final pulumi.Output<String?> unit;

  /// Creates a new [Kpi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Kpi]. {@macro pulumi_customerinsights_kpi_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Kpi(String name, {KpiArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:customerinsights:Kpi',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    aliases = registerOutput<List<Map<String, dynamic>>?>('aliases');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    calculationWindow = registerOutput<String>('calculationWindow');
    calculationWindowFieldName = registerOutput<String?>(
      'calculationWindowFieldName',
    );
    description = registerOutput<Map<String, String>?>('description');
    displayName = registerOutput<Map<String, String>?>('displayName');
    entityType = registerOutput<String>('entityType');
    entityTypeName = registerOutput<String>('entityTypeName');
    expression = registerOutput<String>('expression');
    extracts = registerOutput<List<Map<String, dynamic>>?>('extracts');
    filter = registerOutput<String?>('filter');
    function = registerOutput<String>('function');
    groupBy = registerOutput<List<String>?>('groupBy');
    groupByMetadata = registerOutput<List<Map<String, dynamic>>>(
      'groupByMetadata',
    );
    kpiName = registerOutput<String>('kpiName');
    this.name = registerOutput<String>('name');
    participantProfilesMetadata = registerOutput<List<Map<String, dynamic>>>(
      'participantProfilesMetadata',
    );
    provisioningState = registerOutput<String>('provisioningState');
    tenantId = registerOutput<String>('tenantId');
    thresHolds = registerOutput<KpiThresholdsResponse?>(
      'thresHolds',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KpiThresholdsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    unit = registerOutput<String?>('unit');
  }
}
