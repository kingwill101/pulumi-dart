// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_oms_agent_oms_agent_identity.dart';

class KubernetesClusterOmsAgent {
  /// The ID of the Log Analytics Workspace which the OMS Agent should send data to.
  final String logAnalyticsWorkspaceId;
  /// Is managed identity authentication for monitoring enabled?
  final bool? msiAuthForMonitoringEnabled;
  /// An `oms_agent_identity` block is exported. The exported attributes are defined below.
  final List<KubernetesClusterOmsAgentOmsAgentIdentity>? omsAgentIdentities;

  /// Creates a new [KubernetesClusterOmsAgent].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace which the OMS Agent should send data to.
  /// [msiAuthForMonitoringEnabled] Is managed identity authentication for monitoring enabled?
  /// [omsAgentIdentities] An `oms_agent_identity` block is exported. The exported attributes are defined below.
  KubernetesClusterOmsAgent({
    required this.logAnalyticsWorkspaceId,
    this.msiAuthForMonitoringEnabled,
    this.omsAgentIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'msiAuthForMonitoringEnabled': ?msiAuthForMonitoringEnabled,
      'omsAgentIdentities': ?omsAgentIdentities == null ? null : pulumi.Input.encodeList<KubernetesClusterOmsAgentOmsAgentIdentity, Map<String, dynamic>>(omsAgentIdentities!, (value) => value.toMap()),
    };
  }

  factory KubernetesClusterOmsAgent.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterOmsAgent(
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      msiAuthForMonitoringEnabled: map['msiAuthForMonitoringEnabled'] == null ? null : map['msiAuthForMonitoringEnabled'] as bool,
      omsAgentIdentities: map['omsAgentIdentities'] == null ? null : pulumi.Input.decodeList<KubernetesClusterOmsAgentOmsAgentIdentity>(map['omsAgentIdentities'], (value) => KubernetesClusterOmsAgentOmsAgentIdentity.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

