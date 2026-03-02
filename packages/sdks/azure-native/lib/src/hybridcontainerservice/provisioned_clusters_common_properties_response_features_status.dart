// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_agent_status_response.dart';

/// Additional features status like Arc Agent Onboarding.
class ProvisionedClustersCommonPropertiesResponseFeaturesStatus {
  /// Defines the observed Arc Agent status that is resourceSynced back to the ARM resource.
  final pulumi.Input<ArcAgentStatusResponse>? arcAgentStatus;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseFeaturesStatus].
  /// [arcAgentStatus] Defines the observed Arc Agent status that is resourceSynced back to the ARM resource.
  ProvisionedClustersCommonPropertiesResponseFeaturesStatus({
    this.arcAgentStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentStatus': ?pulumi.Input.mapOptionalInputValue<ArcAgentStatusResponse, Map<String, dynamic>>(arcAgentStatus, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseFeaturesStatus.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseFeaturesStatus(
      arcAgentStatus: map['arcAgentStatus'] == null ? null : (ArcAgentStatusResponse.fromMap((map['arcAgentStatus'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

