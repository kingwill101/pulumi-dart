// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration {
  /// Filter expression that selects which source metrics to centralize. Currently, only `*` (all metrics) is supported.
  final pulumi.Input<String> metricsSelectionCriteria;

  /// Creates a new [CentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration].
  /// [metricsSelectionCriteria] Filter expression that selects which source metrics to centralize. Currently, only `*` (all metrics) is supported.
  const CentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration({
    required this.metricsSelectionCriteria,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsSelectionCriteria': metricsSelectionCriteria,
    };
  }

  factory CentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleSourceSourceMetricsConfiguration(
      metricsSelectionCriteria: pulumi.Input.fromValue(map['metricsSelectionCriteria'] as String),
    );
  }
}
