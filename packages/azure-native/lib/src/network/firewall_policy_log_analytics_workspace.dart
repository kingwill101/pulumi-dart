// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Log Analytics Workspace for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsWorkspace {
  /// Region to configure the Workspace.
  final String? region;
  /// The workspace Id for Firewall Policy Insights.
  final SubResource? workspaceId;

  /// Creates a new [FirewallPolicyLogAnalyticsWorkspace].
  /// [region] Region to configure the Workspace.
  /// [workspaceId] The workspace Id for Firewall Policy Insights.
  FirewallPolicyLogAnalyticsWorkspace({
    this.region,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'workspaceId': ?workspaceId == null ? null : workspaceId!.toMap(),
    };
  }

  factory FirewallPolicyLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsWorkspace(
      region: map['region'] == null ? null : map['region'] as String,
      workspaceId: map['workspaceId'] == null ? null : SubResource.fromMap((map['workspaceId'] as Map).cast<String, dynamic>()),
    );
  }
}

