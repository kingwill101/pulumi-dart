// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../recommendation_preferences_external_metrics_preference/recommendation_preferences_external_metrics_preference.dart';
import '../recommendation_preferences_preferred_resource/recommendation_preferences_preferred_resource.dart';
import '../recommendation_preferences_scope/recommendation_preferences_scope.dart';
import '../recommendation_preferences_utilization_preference/recommendation_preferences_utilization_preference.dart';

/// The set of arguments for RecommendationPreferences.
class RecommendationPreferencesArgs {
  /// The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  final Input<String>? enhancedInfrastructureMetrics;

  /// The provider of the external metrics recommendation preference. See External Metrics Preference below.
  final Input<RecommendationPreferencesExternalMetricsPreference>?
      externalMetricsPreference;

  /// The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  final Input<String>? inferredWorkloadTypes;

  /// The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  final Input<String>? lookBackPeriod;

  /// The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  final Input<List<RecommendationPreferencesPreferredResource>>?
      preferredResources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  final Input<String> resourceType;

  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  final Input<String>? savingsEstimationMode;

  /// The scope of the recommendation preferences. See Scope below.
  final Input<RecommendationPreferencesScope> scope;

  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  final Input<List<RecommendationPreferencesUtilizationPreference>>?
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
      map['externalMetricsPreference'] = Input.mapOptionalInputValue<
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
      map['preferredResources'] = Input.mapOptionalInputValue<
              List<RecommendationPreferencesPreferredResource>,
              List<Map<String, dynamic>>>(
          preferredResourcesValue,
          (value) => Input.encodeList<
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
    map['scope'] = Input.mapInputValue<RecommendationPreferencesScope,
        Map<String, dynamic>>(scope, (value) => value.toMap());
    final utilizationPreferencesValue = utilizationPreferences;
    if (utilizationPreferencesValue != null) {
      map['utilizationPreferences'] = Input.mapOptionalInputValue<
              List<RecommendationPreferencesUtilizationPreference>,
              List<Map<String, dynamic>>>(
          utilizationPreferencesValue,
          (value) => Input.encodeList<
              RecommendationPreferencesUtilizationPreference,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RecommendationPreferencesArgs.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesArgs(
      enhancedInfrastructureMetrics:
          Input.asOptionalInput<String>(map['enhancedInfrastructureMetrics']),
      externalMetricsPreference: Input.asOptionalInput<
              RecommendationPreferencesExternalMetricsPreference>(
          map['externalMetricsPreference']),
      inferredWorkloadTypes:
          Input.asOptionalInput<String>(map['inferredWorkloadTypes']),
      lookBackPeriod: Input.asOptionalInput<String>(map['lookBackPeriod']),
      preferredResources: Input.asOptionalInput<
              List<RecommendationPreferencesPreferredResource>>(
          map['preferredResources']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceType: Input.asInput<String>(map['resourceType']),
      savingsEstimationMode:
          Input.asOptionalInput<String>(map['savingsEstimationMode']),
      scope: Input.asInput<RecommendationPreferencesScope>(map['scope']),
      utilizationPreferences: Input.asOptionalInput<
              List<RecommendationPreferencesUtilizationPreference>>(
          map['utilizationPreferences']),
    );
  }
}
