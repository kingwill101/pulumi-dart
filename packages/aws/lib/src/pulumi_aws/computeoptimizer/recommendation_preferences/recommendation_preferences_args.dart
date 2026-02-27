// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../recommendation_preferences_external_metrics_preference/recommendation_preferences_external_metrics_preference.dart';
import '../recommendation_preferences_preferred_resource/recommendation_preferences_preferred_resource.dart';
import '../recommendation_preferences_scope/recommendation_preferences_scope.dart';
import '../recommendation_preferences_utilization_preference/recommendation_preferences_utilization_preference.dart';

/// The set of arguments for RecommendationPreferences.
class RecommendationPreferencesArgs {
  /// The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? enhancedInfrastructureMetrics;

  /// The provider of the external metrics recommendation preference. See External Metrics Preference below.
  final pulumi.Input<RecommendationPreferencesExternalMetricsPreference>?
      externalMetricsPreference;

  /// The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? inferredWorkloadTypes;

  /// The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  final pulumi.Input<String>? lookBackPeriod;

  /// The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  final pulumi.Input<List<RecommendationPreferencesPreferredResource>>?
      preferredResources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  final pulumi.Input<String> resourceType;

  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  final pulumi.Input<String>? savingsEstimationMode;

  /// The scope of the recommendation preferences. See Scope below.
  final pulumi.Input<RecommendationPreferencesScope> scope;

  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  final pulumi.Input<List<RecommendationPreferencesUtilizationPreference>>?
      utilizationPreferences;

  RecommendationPreferencesArgs({
    this.enhancedInfrastructureMetrics,
    this.externalMetricsPreference,
    this.inferredWorkloadTypes,
    this.lookBackPeriod,
    this.preferredResources,
    this.region,
    required this.resourceType,
    this.savingsEstimationMode,
    required this.scope,
    this.utilizationPreferences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enhancedInfrastructureMetricsValue = enhancedInfrastructureMetrics;
    if (enhancedInfrastructureMetricsValue != null) {
      map['enhancedInfrastructureMetrics'] = enhancedInfrastructureMetricsValue;
    }
    final externalMetricsPreferenceValue = externalMetricsPreference;
    if (externalMetricsPreferenceValue != null) {
      map['externalMetricsPreference'] = pulumi.Input.mapOptionalInputValue<
              RecommendationPreferencesExternalMetricsPreference,
              Map<String, dynamic>>(
          externalMetricsPreferenceValue, (value) => value.toMap());
    }
    final inferredWorkloadTypesValue = inferredWorkloadTypes;
    if (inferredWorkloadTypesValue != null) {
      map['inferredWorkloadTypes'] = inferredWorkloadTypesValue;
    }
    final lookBackPeriodValue = lookBackPeriod;
    if (lookBackPeriodValue != null) {
      map['lookBackPeriod'] = lookBackPeriodValue;
    }
    final preferredResourcesValue = preferredResources;
    if (preferredResourcesValue != null) {
      map['preferredResources'] = pulumi.Input.mapOptionalInputValue<
              List<RecommendationPreferencesPreferredResource>,
              List<Map<String, dynamic>>>(
          preferredResourcesValue,
          (value) => pulumi.Input.encodeList<
              RecommendationPreferencesPreferredResource,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceType'] = resourceType;
    final savingsEstimationModeValue = savingsEstimationMode;
    if (savingsEstimationModeValue != null) {
      map['savingsEstimationMode'] = savingsEstimationModeValue;
    }
    map['scope'] = pulumi.Input.mapInputValue<RecommendationPreferencesScope,
        Map<String, dynamic>>(scope, (value) => value.toMap());
    final utilizationPreferencesValue = utilizationPreferences;
    if (utilizationPreferencesValue != null) {
      map['utilizationPreferences'] = pulumi.Input.mapOptionalInputValue<
              List<RecommendationPreferencesUtilizationPreference>,
              List<Map<String, dynamic>>>(
          utilizationPreferencesValue,
          (value) => pulumi.Input.encodeList<
              RecommendationPreferencesUtilizationPreference,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RecommendationPreferencesArgs.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesArgs(
      enhancedInfrastructureMetrics: pulumi.Input.asOptionalInput<String>(
          map['enhancedInfrastructureMetrics']),
      externalMetricsPreference: pulumi.Input.asOptionalInput<
              RecommendationPreferencesExternalMetricsPreference>(
          map['externalMetricsPreference']),
      inferredWorkloadTypes:
          pulumi.Input.asOptionalInput<String>(map['inferredWorkloadTypes']),
      lookBackPeriod:
          pulumi.Input.asOptionalInput<String>(map['lookBackPeriod']),
      preferredResources: pulumi.Input.asOptionalInput<
              List<RecommendationPreferencesPreferredResource>>(
          map['preferredResources']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
      savingsEstimationMode:
          pulumi.Input.asOptionalInput<String>(map['savingsEstimationMode']),
      scope: pulumi.Input.asInput<RecommendationPreferencesScope>(map['scope']),
      utilizationPreferences: pulumi.Input.asOptionalInput<
              List<RecommendationPreferencesUtilizationPreference>>(
          map['utilizationPreferences']),
    );
  }
}
