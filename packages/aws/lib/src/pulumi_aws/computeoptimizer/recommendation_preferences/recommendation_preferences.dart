import 'package:pulumi/pulumi.dart';
import '../recommendation_preferences_external_metrics_preference/recommendation_preferences_external_metrics_preference.dart';
import '../recommendation_preferences_preferred_resource/recommendation_preferences_preferred_resource.dart';
import '../recommendation_preferences_scope/recommendation_preferences_scope.dart';
import '../recommendation_preferences_utilization_preference/recommendation_preferences_utilization_preference.dart';
import 'recommendation_preferences_args.dart';

/// Manages AWS Compute Optimizer recommendation preferences.
///
/// ## Example Usage
///
/// ### Lookback Period Preference
///
///
///
/// ### Multiple Preferences
///
///
///
/// ## Import
///
/// Using `pulumi import`, import recommendation preferences using the resource type, scope name and scope value. For example:
///
/// ```sh
/// $ pulumi import aws:computeoptimizer/recommendationPreferences:RecommendationPreferences example Ec2Instance,AccountId,123456789012
/// ```
class RecommendationPreferences extends CustomResource {
  /// The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  late final Output<String?> enhancedInfrastructureMetrics;

  /// The provider of the external metrics recommendation preference. See External Metrics Preference below.
  late final Output<RecommendationPreferencesExternalMetricsPreference?>
      externalMetricsPreference;

  /// The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  late final Output<String?> inferredWorkloadTypes;

  /// The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  late final Output<String> lookBackPeriod;

  /// The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  late final Output<List<RecommendationPreferencesPreferredResource>?>
      preferredResources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  late final Output<String> resourceType;

  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  late final Output<String?> savingsEstimationMode;

  /// The scope of the recommendation preferences. See Scope below.
  late final Output<RecommendationPreferencesScope> scope;

  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  late final Output<List<RecommendationPreferencesUtilizationPreference>?>
      utilizationPreferences;

  RecommendationPreferences(
    String name, {
    RecommendationPreferencesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:computeoptimizer/recommendationPreferences:RecommendationPreferences',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enhancedInfrastructureMetrics =
        registerOutput<String?>('enhancedInfrastructureMetrics');
    this.externalMetricsPreference =
        registerOutput<RecommendationPreferencesExternalMetricsPreference?>(
            'externalMetricsPreference');
    this.inferredWorkloadTypes =
        registerOutput<String?>('inferredWorkloadTypes');
    this.lookBackPeriod = registerOutput<String>('lookBackPeriod');
    this.preferredResources =
        registerOutput<List<RecommendationPreferencesPreferredResource>?>(
            'preferredResources');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.savingsEstimationMode =
        registerOutput<String?>('savingsEstimationMode');
    this.scope = registerOutput<RecommendationPreferencesScope>('scope');
    this.utilizationPreferences =
        registerOutput<List<RecommendationPreferencesUtilizationPreference>?>(
            'utilizationPreferences');
  }
}
