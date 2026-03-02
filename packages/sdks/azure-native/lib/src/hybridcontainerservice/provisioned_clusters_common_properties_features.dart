// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arc_agent_profile.dart';

/// Additional features specs like Arc Agent Onboarding.
class ProvisionedClustersCommonPropertiesFeatures {
  /// Arc agentry configuration for the provisioned cluster.
  final pulumi.Input<ArcAgentProfile>? arcAgentProfile;

  /// Creates a new [ProvisionedClustersCommonPropertiesFeatures].
  /// [arcAgentProfile] Arc agentry configuration for the provisioned cluster.
  ProvisionedClustersCommonPropertiesFeatures({
    this.arcAgentProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentProfile': ?pulumi.Input.mapOptionalInputValue<ArcAgentProfile, Map<String, dynamic>>(arcAgentProfile, (value) => value.toMap()),
    };
  }

  factory ProvisionedClustersCommonPropertiesFeatures.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesFeatures(
      arcAgentProfile: map['arcAgentProfile'] == null ? null : (ArcAgentProfile.fromMap((map['arcAgentProfile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

