// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_policy_log_analytics_resources_response.dart';

/// Firewall Policy Insights.
class FirewallPolicyInsightsResponse {
  /// A flag to indicate if the insights are enabled on the policy.
  final bool? isEnabled;
  /// Workspaces needed to configure the Firewall Policy Insights.
  final FirewallPolicyLogAnalyticsResourcesResponse? logAnalyticsResources;
  /// Number of days the insights should be enabled on the policy.
  final int? retentionDays;

  /// Creates a new [FirewallPolicyInsightsResponse].
  /// [isEnabled] A flag to indicate if the insights are enabled on the policy.
  /// [logAnalyticsResources] Workspaces needed to configure the Firewall Policy Insights.
  /// [retentionDays] Number of days the insights should be enabled on the policy.
  FirewallPolicyInsightsResponse({
    this.isEnabled,
    this.logAnalyticsResources,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'logAnalyticsResources': ?logAnalyticsResources == null ? null : logAnalyticsResources!.toMap(),
      'retentionDays': ?retentionDays,
    };
  }

  factory FirewallPolicyInsightsResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsightsResponse(
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      logAnalyticsResources: map['logAnalyticsResources'] == null ? null : FirewallPolicyLogAnalyticsResourcesResponse.fromMap((map['logAnalyticsResources'] as Map).cast<String, dynamic>()),
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
    );
  }
}

