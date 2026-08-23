// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_preferences_external_metrics_preference.dart';
import 'recommendation_preferences_preferred_resource.dart';
import 'recommendation_preferences_scope.dart';
import 'recommendation_preferences_utilization_preference.dart';

/// Input properties used for looking up and filtering RecommendationPreferences resources.
class RecommendationPreferencesState {
  /// The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? enhancedInfrastructureMetrics;
  /// The provider of the external metrics recommendation preference. See External Metrics Preference below.
  final pulumi.Input<RecommendationPreferencesExternalMetricsPreference>? externalMetricsPreference;
  /// The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  final pulumi.Input<String>? inferredWorkloadTypes;
  /// The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  final pulumi.Input<String>? lookBackPeriod;
  /// The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  final pulumi.Input<List<RecommendationPreferencesPreferredResource>>? preferredResources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  final pulumi.Input<String>? resourceType;
  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  final pulumi.Input<String>? savingsEstimationMode;
  /// The scope of the recommendation preferences. See Scope below.
  final pulumi.Input<RecommendationPreferencesScope>? scope;
  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  final pulumi.Input<List<RecommendationPreferencesUtilizationPreference>>? utilizationPreferences;

  /// Creates a new [RecommendationPreferencesState].
  /// [enhancedInfrastructureMetrics] The status of the enhanced infrastructure metrics recommendation preference. Valid values: `Active`, `Inactive`.
  /// [externalMetricsPreference] The provider of the external metrics recommendation preference. See External Metrics Preference below.
  /// [inferredWorkloadTypes] The status of the inferred workload types recommendation preference. Valid values: `Active`, `Inactive`.
  /// [lookBackPeriod] The preference to control the number of days the utilization metrics of the AWS resource are analyzed. Valid values: `DAYS_14`, `DAYS_32`, `DAYS_93`.
  /// [preferredResources] The preference to control which resource type values are considered when generating rightsizing recommendations. See Preferred Resources below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceType] The target resource type of the recommendation preferences. Valid values: `Ec2Instance`, `AutoScalingGroup`, `RdsDBInstance`, `AuroraDBClusterStorage`.
  /// [savingsEstimationMode] The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  /// [scope] The scope of the recommendation preferences. See Scope below.
  /// [utilizationPreferences] The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  const RecommendationPreferencesState({
    this.enhancedInfrastructureMetrics,
    this.externalMetricsPreference,
    this.inferredWorkloadTypes,
    this.lookBackPeriod,
    this.preferredResources,
    this.region,
    this.resourceType,
    this.savingsEstimationMode,
    this.scope,
    this.utilizationPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enhancedInfrastructureMetrics': ?enhancedInfrastructureMetrics,
      'externalMetricsPreference': ?pulumi.Input.mapOptionalInputValue<RecommendationPreferencesExternalMetricsPreference, Map<String, dynamic>>(externalMetricsPreference, (value) => value.toMap()),
      'inferredWorkloadTypes': ?inferredWorkloadTypes,
      'lookBackPeriod': ?lookBackPeriod,
      'preferredResources': ?pulumi.Input.mapOptionalInputValue<List<RecommendationPreferencesPreferredResource>, List<Map<String, dynamic>>>(preferredResources, (value) => pulumi.Input.encodeList<RecommendationPreferencesPreferredResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceType': ?resourceType,
      'savingsEstimationMode': ?savingsEstimationMode,
      'scope': ?pulumi.Input.mapOptionalInputValue<RecommendationPreferencesScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'utilizationPreferences': ?pulumi.Input.mapOptionalInputValue<List<RecommendationPreferencesUtilizationPreference>, List<Map<String, dynamic>>>(utilizationPreferences, (value) => pulumi.Input.encodeList<RecommendationPreferencesUtilizationPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecommendationPreferencesState.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesState(
      enhancedInfrastructureMetrics: (() { final guardedValue = map['enhancedInfrastructureMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalMetricsPreference: (() { final guardedValue = map['externalMetricsPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationPreferencesExternalMetricsPreference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferredWorkloadTypes: (() { final guardedValue = map['inferredWorkloadTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lookBackPeriod: (() { final guardedValue = map['lookBackPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredResources: (() { final guardedValue = map['preferredResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendationPreferencesPreferredResource>(guardedValue, (value) => RecommendationPreferencesPreferredResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      savingsEstimationMode: (() { final guardedValue = map['savingsEstimationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecommendationPreferencesScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      utilizationPreferences: (() { final guardedValue = map['utilizationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecommendationPreferencesUtilizationPreference>(guardedValue, (value) => RecommendationPreferencesUtilizationPreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
