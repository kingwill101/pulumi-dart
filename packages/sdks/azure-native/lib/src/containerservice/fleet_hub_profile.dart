// ignore_for_file: unused_element, unnecessary_cast

import 'agent_profile.dart';
import 'apiserver_access_profile.dart';

/// The FleetHubProfile configures the fleet hub.
class FleetHubProfile {
  /// The agent profile for the Fleet hub.
  final AgentProfile? agentProfile;
  /// The access profile for the Fleet hub API server.
  final APIServerAccessProfile? apiServerAccessProfile;
  /// DNS prefix used to create the FQDN for the Fleet hub.
  final String? dnsPrefix;

  /// Creates a new [FleetHubProfile].
  /// [agentProfile] The agent profile for the Fleet hub.
  /// [apiServerAccessProfile] The access profile for the Fleet hub API server.
  /// [dnsPrefix] DNS prefix used to create the FQDN for the Fleet hub.
  FleetHubProfile({
    this.agentProfile,
    this.apiServerAccessProfile,
    this.dnsPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': ?agentProfile == null ? null : agentProfile!.toMap(),
      'apiServerAccessProfile': ?apiServerAccessProfile == null ? null : apiServerAccessProfile!.toMap(),
      'dnsPrefix': ?dnsPrefix,
    };
  }

  factory FleetHubProfile.fromMap(Map<String, dynamic> map) {
    return FleetHubProfile(
      agentProfile: map['agentProfile'] == null ? null : AgentProfile.fromMap((map['agentProfile'] as Map).cast<String, dynamic>()),
      apiServerAccessProfile: map['apiServerAccessProfile'] == null ? null : APIServerAccessProfile.fromMap((map['apiServerAccessProfile'] as Map).cast<String, dynamic>()),
      dnsPrefix: map['dnsPrefix'] == null ? null : map['dnsPrefix'] as String,
    );
  }
}

