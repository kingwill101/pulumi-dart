// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_profile.dart';
import 'apiserver_access_profile.dart';

/// The FleetHubProfile configures the fleet hub.
class FleetHubProfile {
  /// The agent profile for the Fleet hub.
  final pulumi.Input<AgentProfile>? agentProfile;
  /// The access profile for the Fleet hub API server.
  final pulumi.Input<APIServerAccessProfile>? apiServerAccessProfile;
  /// DNS prefix used to create the FQDN for the Fleet hub.
  final pulumi.Input<String>? dnsPrefix;

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
      'agentProfile': ?pulumi.Input.mapOptionalInputValue<AgentProfile, Map<String, dynamic>>(agentProfile, (value) => value.toMap()),
      'apiServerAccessProfile': ?pulumi.Input.mapOptionalInputValue<APIServerAccessProfile, Map<String, dynamic>>(apiServerAccessProfile, (value) => value.toMap()),
      'dnsPrefix': ?dnsPrefix,
    };
  }

  factory FleetHubProfile.fromMap(Map<String, dynamic> map) {
    return FleetHubProfile(
      agentProfile: map['agentProfile'] == null ? null : (AgentProfile.fromMap((map['agentProfile']! as Map).cast<String, dynamic>())).input(),
      apiServerAccessProfile: map['apiServerAccessProfile'] == null ? null : (APIServerAccessProfile.fromMap((map['apiServerAccessProfile']! as Map).cast<String, dynamic>())).input(),
      dnsPrefix: map['dnsPrefix'] == null ? null : (map['dnsPrefix']! as String).input(),
    );
  }
}

