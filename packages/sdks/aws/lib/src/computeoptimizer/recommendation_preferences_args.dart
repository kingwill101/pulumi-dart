// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommendation_preferences_external_metrics_preference.dart';
import 'recommendation_preferences_preferred_resource.dart';
import 'recommendation_preferences_scope.dart';
import 'recommendation_preferences_utilization_preference.dart';

/// {@template pulumi_computeoptimizer_recommendation_preferences_recommendation_preferences_args_doc}
/// The set of arguments for RecommendationPreferences.
/// {@endtemplate}
/// {@macro pulumi_computeoptimizer_recommendation_preferences_recommendation_preferences_args_doc}
class RecommendationPreferencesArgs {
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
  final pulumi.Input<String> resourceType;
  /// The status of the savings estimation mode preference. Valid values: `AfterDiscounts`, `BeforeDiscounts`.
  final pulumi.Input<String>? savingsEstimationMode;
  /// The scope of the recommendation preferences. See Scope below.
  final pulumi.Input<RecommendationPreferencesScope> scope;
  /// The preference to control the resource’s CPU utilization threshold, CPU utilization headroom, and memory utilization headroom. See Utilization Preferences below.
  final pulumi.Input<List<RecommendationPreferencesUtilizationPreference>>? utilizationPreferences;

  /// Creates a new [RecommendationPreferencesArgs].
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
  RecommendationPreferencesArgs({
    pulumi.Output<String>? enhancedInfrastructureMetrics,
    pulumi.Output<RecommendationPreferencesExternalMetricsPreference>? externalMetricsPreference,
    pulumi.Output<String>? inferredWorkloadTypes,
    pulumi.Output<String>? lookBackPeriod,
    pulumi.Output<List<RecommendationPreferencesPreferredResource>>? preferredResources,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceType,
    pulumi.Output<String>? savingsEstimationMode,
    required pulumi.Output<RecommendationPreferencesScope> scope,
    pulumi.Output<List<RecommendationPreferencesUtilizationPreference>>? utilizationPreferences,
  }) :
      enhancedInfrastructureMetrics = pulumi.Input.asOptionalInput<String>(enhancedInfrastructureMetrics),
      externalMetricsPreference = pulumi.Input.asOptionalInput<RecommendationPreferencesExternalMetricsPreference>(externalMetricsPreference),
      inferredWorkloadTypes = pulumi.Input.asOptionalInput<String>(inferredWorkloadTypes),
      lookBackPeriod = pulumi.Input.asOptionalInput<String>(lookBackPeriod),
      preferredResources = pulumi.Input.asOptionalInput<List<RecommendationPreferencesPreferredResource>>(preferredResources),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      savingsEstimationMode = pulumi.Input.asOptionalInput<String>(savingsEstimationMode),
      scope = pulumi.Input.asInput<RecommendationPreferencesScope>(scope),
      utilizationPreferences = pulumi.Input.asOptionalInput<List<RecommendationPreferencesUtilizationPreference>>(utilizationPreferences);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enhancedInfrastructureMetrics': ?enhancedInfrastructureMetrics,
      'externalMetricsPreference': ?pulumi.Input.mapOptionalInputValue<RecommendationPreferencesExternalMetricsPreference, Map<String, dynamic>>(externalMetricsPreference, (value) => value.toMap()),
      'inferredWorkloadTypes': ?inferredWorkloadTypes,
      'lookBackPeriod': ?lookBackPeriod,
      'preferredResources': ?pulumi.Input.mapOptionalInputValue<List<RecommendationPreferencesPreferredResource>, List<Map<String, dynamic>>>(preferredResources, (value) => pulumi.Input.encodeList<RecommendationPreferencesPreferredResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'resourceType': resourceType,
      'savingsEstimationMode': ?savingsEstimationMode,
      'scope': pulumi.Input.mapInputValue<RecommendationPreferencesScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'utilizationPreferences': ?pulumi.Input.mapOptionalInputValue<List<RecommendationPreferencesUtilizationPreference>, List<Map<String, dynamic>>>(utilizationPreferences, (value) => pulumi.Input.encodeList<RecommendationPreferencesUtilizationPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RecommendationPreferencesArgs.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesArgs(
      enhancedInfrastructureMetrics: map['enhancedInfrastructureMetrics'] == null ? null : pulumi.Output.create<String>(map['enhancedInfrastructureMetrics'] as String),
      externalMetricsPreference: map['externalMetricsPreference'] == null ? null : pulumi.Output.create<RecommendationPreferencesExternalMetricsPreference>(RecommendationPreferencesExternalMetricsPreference.fromMap((map['externalMetricsPreference'] as Map).cast<String, dynamic>())),
      inferredWorkloadTypes: map['inferredWorkloadTypes'] == null ? null : pulumi.Output.create<String>(map['inferredWorkloadTypes'] as String),
      lookBackPeriod: map['lookBackPeriod'] == null ? null : pulumi.Output.create<String>(map['lookBackPeriod'] as String),
      preferredResources: map['preferredResources'] == null ? null : pulumi.Output.create<List<RecommendationPreferencesPreferredResource>>(pulumi.Input.decodeList<RecommendationPreferencesPreferredResource>(map['preferredResources'], (value) => RecommendationPreferencesPreferredResource.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      savingsEstimationMode: map['savingsEstimationMode'] == null ? null : pulumi.Output.create<String>(map['savingsEstimationMode'] as String),
      scope: pulumi.Output.create<RecommendationPreferencesScope>(RecommendationPreferencesScope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      utilizationPreferences: map['utilizationPreferences'] == null ? null : pulumi.Output.create<List<RecommendationPreferencesUtilizationPreference>>(pulumi.Input.decodeList<RecommendationPreferencesUtilizationPreference>(map['utilizationPreferences'], (value) => RecommendationPreferencesUtilizationPreference.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

