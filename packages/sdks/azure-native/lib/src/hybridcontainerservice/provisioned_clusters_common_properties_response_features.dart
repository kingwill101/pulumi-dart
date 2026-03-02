// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_agent_profile_response.dart';

/// Additional features specs like Arc Agent Onboarding.
class ProvisionedClustersCommonPropertiesResponseFeatures {
  /// Arc agentry configuration for the provisioned cluster.
  final pulumi.Input<ArcAgentProfileResponse>? arcAgentProfile;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseFeatures].
  /// [arcAgentProfile] Arc agentry configuration for the provisioned cluster.
  ProvisionedClustersCommonPropertiesResponseFeatures({
    this.arcAgentProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentProfile': ?pulumi.Input.mapOptionalInputValue<ArcAgentProfileResponse, Map<String, dynamic>>(arcAgentProfile, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseFeatures.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseFeatures(
      arcAgentProfile: map['arcAgentProfile'] == null ? null : (ArcAgentProfileResponse.fromMap((map['arcAgentProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

