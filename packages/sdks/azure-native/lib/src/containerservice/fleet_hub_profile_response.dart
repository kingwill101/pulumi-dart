// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_profile_response.dart';
import 'apiserver_access_profile_response.dart';

/// The FleetHubProfile configures the fleet hub.
class FleetHubProfileResponse {
  /// The agent profile for the Fleet hub.
  final pulumi.Input<AgentProfileResponse>? agentProfile;
  /// The access profile for the Fleet hub API server.
  final pulumi.Input<APIServerAccessProfileResponse>? apiServerAccessProfile;
  /// DNS prefix used to create the FQDN for the Fleet hub.
  final pulumi.Input<String>? dnsPrefix;
  /// The FQDN of the Fleet hub.
  final pulumi.Input<String> fqdn;
  /// The Kubernetes version of the Fleet hub.
  final pulumi.Input<String> kubernetesVersion;
  /// The Azure Portal FQDN of the Fleet hub.
  final pulumi.Input<String> portalFqdn;

  /// Creates a new [FleetHubProfileResponse].
  /// [agentProfile] The agent profile for the Fleet hub.
  /// [apiServerAccessProfile] The access profile for the Fleet hub API server.
  /// [dnsPrefix] DNS prefix used to create the FQDN for the Fleet hub.
  /// [fqdn] The FQDN of the Fleet hub.
  /// [kubernetesVersion] The Kubernetes version of the Fleet hub.
  /// [portalFqdn] The Azure Portal FQDN of the Fleet hub.
  FleetHubProfileResponse({
    this.agentProfile,
    this.apiServerAccessProfile,
    this.dnsPrefix,
    required this.fqdn,
    required this.kubernetesVersion,
    required this.portalFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProfile': ?pulumi.Input.mapOptionalInputValue<AgentProfileResponse, Map<String, dynamic>>(agentProfile, (value) => value.toMap()),
      'apiServerAccessProfile': ?pulumi.Input.mapOptionalInputValue<APIServerAccessProfileResponse, Map<String, dynamic>>(apiServerAccessProfile, (value) => value.toMap()),
      'dnsPrefix': ?dnsPrefix,
      'fqdn': fqdn,
      'kubernetesVersion': kubernetesVersion,
      'portalFqdn': portalFqdn,
    };
  }

  factory FleetHubProfileResponse.fromMap(Map<String, dynamic> map) {
    return FleetHubProfileResponse(
      agentProfile: (() { final guardedValue = map['agentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiServerAccessProfile: (() { final guardedValue = map['apiServerAccessProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(APIServerAccessProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsPrefix: (() { final guardedValue = map['dnsPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      kubernetesVersion: pulumi.Input.fromValue(map['kubernetesVersion'] as String),
      portalFqdn: pulumi.Input.fromValue(map['portalFqdn'] as String),
    );
  }
}

