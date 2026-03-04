import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'assessment_properties_response.dart';

/// An assessment created for a group in the Migration project.
///
/// Uses Azure REST API version 2019-10-01. In version 2.x of the Azure Native provider, it used API version 2019-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Assessments_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.Migrate.Assessment("assessment", new()
///     {
///         AssessmentName = "assessment_5_14_2019_16_48_47",
///         ETag = "\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///         GroupName = "Group2",
///         ProjectName = "abgoyalWEselfhostb72bproject",
///         Properties = new AzureNative.Migrate.Inputs.AssessmentPropertiesArgs
///         {
///             AzureDiskType = AzureNative.Migrate.AzureDiskType.StandardOrPremium,
///             AzureHybridUseBenefit = AzureNative.Migrate.AzureHybridUseBenefit.Yes,
///             AzureLocation = AzureNative.Migrate.AzureLocation.NorthEurope,
///             AzureOfferCode = AzureNative.Migrate.AzureOfferCode.Msazr0003P,
///             AzurePricingTier = AzureNative.Migrate.AzurePricingTier.Standard,
///             AzureStorageRedundancy = AzureNative.Migrate.AzureStorageRedundancy.LocallyRedundant,
///             AzureVmFamilies = new[]
///             {
///                 AzureNative.Migrate.AzureVmFamily.Dv2Series,
///                 AzureNative.Migrate.AzureVmFamily.FSeries,
///                 AzureNative.Migrate.AzureVmFamily.Dv3Series,
///                 AzureNative.Migrate.AzureVmFamily.DSSeries,
///                 AzureNative.Migrate.AzureVmFamily.DSv2Series,
///                 AzureNative.Migrate.AzureVmFamily.FsSeries,
///                 AzureNative.Migrate.AzureVmFamily.Dsv3Series,
///                 AzureNative.Migrate.AzureVmFamily.Ev3Series,
///                 AzureNative.Migrate.AzureVmFamily.Esv3Series,
///                 AzureNative.Migrate.AzureVmFamily.DSeries,
///                 AzureNative.Migrate.AzureVmFamily.MSeries,
///                 AzureNative.Migrate.AzureVmFamily.Fsv2Series,
///                 AzureNative.Migrate.AzureVmFamily.HSeries,
///             },
///             Currency = AzureNative.Migrate.Currency.USD,
///             DiscountPercentage = 100,
///             Percentile = AzureNative.Migrate.Percentile.Percentile95,
///             ReservedInstance = AzureNative.Migrate.ReservedInstance.RI3Year,
///             ScalingFactor = 1,
///             SizingCriterion = AzureNative.Migrate.AssessmentSizingCriterion.PerformanceBased,
///             Stage = AzureNative.Migrate.AssessmentStage.InProgress,
///             TimeRange = AzureNative.Migrate.TimeRange.Day,
///             VmUptime = new AzureNative.Migrate.Inputs.VmUptimeArgs
///             {
///                 DaysPerMonth = 31,
///                 HoursPerDay = 24,
///             },
///         },
///         ResourceGroupName = "abgoyal-westEurope",
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
/// 		_, err := migrate.NewAssessment(ctx, "assessment", &migrate.AssessmentArgs{
/// 			AssessmentName: pulumi.String("assessment_5_14_2019_16_48_47"),
/// 			ETag:           pulumi.String("\"1e000c2c-0000-0d00-0000-5cdaa4190000\""),
/// 			GroupName:      pulumi.String("Group2"),
/// 			ProjectName:    pulumi.String("abgoyalWEselfhostb72bproject"),
/// 			Properties: &migrate.AssessmentPropertiesArgs{
/// 				AzureDiskType:          pulumi.String(migrate.AzureDiskTypeStandardOrPremium),
/// 				AzureHybridUseBenefit:  pulumi.String(migrate.AzureHybridUseBenefitYes),
/// 				AzureLocation:          pulumi.String(migrate.AzureLocationNorthEurope),
/// 				AzureOfferCode:         pulumi.String(migrate.AzureOfferCodeMsazr0003P),
/// 				AzurePricingTier:       pulumi.String(migrate.AzurePricingTierStandard),
/// 				AzureStorageRedundancy: pulumi.String(migrate.AzureStorageRedundancyLocallyRedundant),
/// 				AzureVmFamilies: pulumi.StringArray{
/// 					pulumi.String(migrate.AzureVmFamilyDv2Series),
/// 					pulumi.String(migrate.AzureVmFamilyFSeries),
/// 					pulumi.String(migrate.AzureVmFamilyDv3Series),
/// 					pulumi.String(migrate.AzureVmFamilyDSSeries),
/// 					pulumi.String(migrate.AzureVmFamilyDSv2Series),
/// 					pulumi.String(migrate.AzureVmFamilyFsSeries),
/// 					pulumi.String(migrate.AzureVmFamilyDsv3Series),
/// 					pulumi.String(migrate.AzureVmFamilyEv3Series),
/// 					pulumi.String(migrate.AzureVmFamilyEsv3Series),
/// 					pulumi.String(migrate.AzureVmFamilyDSeries),
/// 					pulumi.String(migrate.AzureVmFamilyMSeries),
/// 					pulumi.String(migrate.AzureVmFamilyFsv2Series),
/// 					pulumi.String(migrate.AzureVmFamilyHSeries),
/// 				},
/// 				Currency:           pulumi.String(migrate.CurrencyUSD),
/// 				DiscountPercentage: pulumi.Float64(100),
/// 				Percentile:         pulumi.String(migrate.PercentilePercentile95),
/// 				ReservedInstance:   pulumi.String(migrate.ReservedInstanceRI3Year),
/// 				ScalingFactor:      pulumi.Float64(1),
/// 				SizingCriterion:    pulumi.String(migrate.AssessmentSizingCriterionPerformanceBased),
/// 				Stage:              pulumi.String(migrate.AssessmentStageInProgress),
/// 				TimeRange:          pulumi.String(migrate.TimeRangeDay),
/// 				VmUptime: &migrate.VmUptimeArgs{
/// 					DaysPerMonth: pulumi.Float64(31),
/// 					HoursPerDay:  pulumi.Float64(24),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("abgoyal-westEurope"),
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
/// import com.pulumi.azurenative.migrate.Assessment;
/// import com.pulumi.azurenative.migrate.AssessmentArgs;
/// import com.pulumi.azurenative.migrate.inputs.AssessmentPropertiesArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .assessmentName("assessment_5_14_2019_16_48_47")
///             .eTag("\"1e000c2c-0000-0d00-0000-5cdaa4190000\"")
///             .groupName("Group2")
///             .projectName("abgoyalWEselfhostb72bproject")
///             .properties(AssessmentPropertiesArgs.builder()
///                 .azureDiskType("StandardOrPremium")
///                 .azureHybridUseBenefit("Yes")
///                 .azureLocation("NorthEurope")
///                 .azureOfferCode("MSAZR0003P")
///                 .azurePricingTier("Standard")
///                 .azureStorageRedundancy("LocallyRedundant")
///                 .azureVmFamilies(
///                     "Dv2_series",
///                     "F_series",
///                     "Dv3_series",
///                     "DS_series",
///                     "DSv2_series",
///                     "Fs_series",
///                     "Dsv3_series",
///                     "Ev3_series",
///                     "Esv3_series",
///                     "D_series",
///                     "M_series",
///                     "Fsv2_series",
///                     "H_series")
///                 .currency("USD")
///                 .discountPercentage(100.0)
///                 .percentile("Percentile95")
///                 .reservedInstance("RI3Year")
///                 .scalingFactor(1.0)
///                 .sizingCriterion("PerformanceBased")
///                 .stage("InProgress")
///                 .timeRange("Day")
///                 .vmUptime(VmUptimeArgs.builder()
///                     .daysPerMonth(31.0)
///                     .hoursPerDay(24.0)
///                     .build())
///                 .build())
///             .resourceGroupName("abgoyal-westEurope")
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
/// const assessment = new azure_native.migrate.Assessment("assessment", {
///     assessmentName: "assessment_5_14_2019_16_48_47",
///     eTag: "\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///     groupName: "Group2",
///     projectName: "abgoyalWEselfhostb72bproject",
///     properties: {
///         azureDiskType: azure_native.migrate.AzureDiskType.StandardOrPremium,
///         azureHybridUseBenefit: azure_native.migrate.AzureHybridUseBenefit.Yes,
///         azureLocation: azure_native.migrate.AzureLocation.NorthEurope,
///         azureOfferCode: azure_native.migrate.AzureOfferCode.Msazr0003P,
///         azurePricingTier: azure_native.migrate.AzurePricingTier.Standard,
///         azureStorageRedundancy: azure_native.migrate.AzureStorageRedundancy.LocallyRedundant,
///         azureVmFamilies: [
///             azure_native.migrate.AzureVmFamily.Dv2Series,
///             azure_native.migrate.AzureVmFamily.FSeries,
///             azure_native.migrate.AzureVmFamily.Dv3Series,
///             azure_native.migrate.AzureVmFamily.DSSeries,
///             azure_native.migrate.AzureVmFamily.DSv2Series,
///             azure_native.migrate.AzureVmFamily.FsSeries,
///             azure_native.migrate.AzureVmFamily.Dsv3Series,
///             azure_native.migrate.AzureVmFamily.Ev3Series,
///             azure_native.migrate.AzureVmFamily.Esv3Series,
///             azure_native.migrate.AzureVmFamily.DSeries,
///             azure_native.migrate.AzureVmFamily.MSeries,
///             azure_native.migrate.AzureVmFamily.Fsv2Series,
///             azure_native.migrate.AzureVmFamily.HSeries,
///         ],
///         currency: azure_native.migrate.Currency.USD,
///         discountPercentage: 100,
///         percentile: azure_native.migrate.Percentile.Percentile95,
///         reservedInstance: azure_native.migrate.ReservedInstance.RI3Year,
///         scalingFactor: 1,
///         sizingCriterion: azure_native.migrate.AssessmentSizingCriterion.PerformanceBased,
///         stage: azure_native.migrate.AssessmentStage.InProgress,
///         timeRange: azure_native.migrate.TimeRange.Day,
///         vmUptime: {
///             daysPerMonth: 31,
///             hoursPerDay: 24,
///         },
///     },
///     resourceGroupName: "abgoyal-westEurope",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.migrate.Assessment("assessment",
///     assessment_name="assessment_5_14_2019_16_48_47",
///     e_tag="\"1e000c2c-0000-0d00-0000-5cdaa4190000\"",
///     group_name="Group2",
///     project_name="abgoyalWEselfhostb72bproject",
///     properties={
///         "azure_disk_type": azure_native.migrate.AzureDiskType.STANDARD_OR_PREMIUM,
///         "azure_hybrid_use_benefit": azure_native.migrate.AzureHybridUseBenefit.YES,
///         "azure_location": azure_native.migrate.AzureLocation.NORTH_EUROPE,
///         "azure_offer_code": azure_native.migrate.AzureOfferCode.MSAZR0003_P,
///         "azure_pricing_tier": azure_native.migrate.AzurePricingTier.STANDARD,
///         "azure_storage_redundancy": azure_native.migrate.AzureStorageRedundancy.LOCALLY_REDUNDANT,
///         "azure_vm_families": [
///             azure_native.migrate.AzureVmFamily.DV2_SERIES,
///             azure_native.migrate.AzureVmFamily.F_SERIES,
///             azure_native.migrate.AzureVmFamily.DV3_SERIES,
///             azure_native.migrate.AzureVmFamily.DS_SERIES,
///             azure_native.migrate.AzureVmFamily.D_SV2_SERIES,
///             azure_native.migrate.AzureVmFamily.FS_SERIES,
///             azure_native.migrate.AzureVmFamily.DSV3_SERIES,
///             azure_native.migrate.AzureVmFamily.EV3_SERIES,
///             azure_native.migrate.AzureVmFamily.ESV3_SERIES,
///             azure_native.migrate.AzureVmFamily.D_SERIES,
///             azure_native.migrate.AzureVmFamily.M_SERIES,
///             azure_native.migrate.AzureVmFamily.FSV2_SERIES,
///             azure_native.migrate.AzureVmFamily.H_SERIES,
///         ],
///         "currency": azure_native.migrate.Currency.USD,
///         "discount_percentage": 100,
///         "percentile": azure_native.migrate.Percentile.PERCENTILE95,
///         "reserved_instance": azure_native.migrate.ReservedInstance.RI3_YEAR,
///         "scaling_factor": 1,
///         "sizing_criterion": azure_native.migrate.AssessmentSizingCriterion.PERFORMANCE_BASED,
///         "stage": azure_native.migrate.AssessmentStage.IN_PROGRESS,
///         "time_range": azure_native.migrate.TimeRange.DAY,
///         "vm_uptime": {
///             "days_per_month": 31,
///             "hours_per_day": 24,
///         },
///     },
///     resource_group_name="abgoyal-westEurope")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:migrate:Assessment
///     properties:
///       assessmentName: assessment_5_14_2019_16_48_47
///       eTag: '"1e000c2c-0000-0d00-0000-5cdaa4190000"'
///       groupName: Group2
///       projectName: abgoyalWEselfhostb72bproject
///       properties:
///         azureDiskType: StandardOrPremium
///         azureHybridUseBenefit: Yes
///         azureLocation: NorthEurope
///         azureOfferCode: MSAZR0003P
///         azurePricingTier: Standard
///         azureStorageRedundancy: LocallyRedundant
///         azureVmFamilies:
///           - Dv2_series
///           - F_series
///           - Dv3_series
///           - DS_series
///           - DSv2_series
///           - Fs_series
///           - Dsv3_series
///           - Ev3_series
///           - Esv3_series
///           - D_series
///           - M_series
///           - Fsv2_series
///           - H_series
///         currency: USD
///         discountPercentage: 100
///         percentile: Percentile95
///         reservedInstance: RI3Year
///         scalingFactor: 1
///         sizingCriterion: PerformanceBased
///         stage: InProgress
///         timeRange: Day
///         vmUptime:
///           daysPerMonth: 31
///           hoursPerDay: 24
///       resourceGroupName: abgoyal-westEurope
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
/// $ pulumi import azure-native:migrate:Assessment assessment_5_14_2019_16_48_47 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/assessmentProjects/{projectName}/groups/{groupName}/assessments/{assessmentName}
/// ```
class Assessment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// For optimistic concurrency control.
  late final pulumi.Output<String?> eTag;

  /// Unique name of an assessment.
  late final pulumi.Output<String> name;

  /// Properties of the assessment.
  late final pulumi.Output<AssessmentPropertiesResponse> properties;

  /// Type of the object = [Microsoft.Migrate/assessmentProjects/groups/assessments].
  late final pulumi.Output<String> type;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_migrate_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:migrate:Assessment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String?>('eTag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssessmentPropertiesResponse>('properties');
    type = registerOutput<String>('type');
  }
}
