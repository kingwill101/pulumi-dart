// ignore_for_file: unused_element, unnecessary_cast

import 'next_generation_firewall_virtual_hub_local_rulestack_destination_nat_backend_config.dart';
import 'next_generation_firewall_virtual_hub_local_rulestack_destination_nat_frontend_config.dart';

class NextGenerationFirewallVirtualHubLocalRulestackDestinationNat {
  /// A `backend_config` block as defined above.
  final NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig? backendConfig;
  /// A `frontend_config` block as defined below.
  final NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig? frontendConfig;
  /// The name which should be used for this NAT.
  final String name;
  /// The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  final String protocol;

  /// Creates a new [NextGenerationFirewallVirtualHubLocalRulestackDestinationNat].
  /// [backendConfig] A `backend_config` block as defined above.
  /// [frontendConfig] A `frontend_config` block as defined below.
  /// [name] The name which should be used for this NAT.
  /// [protocol] The protocol used for this Destination NAT. Possible values include `TCP` and `UDP`.
  NextGenerationFirewallVirtualHubLocalRulestackDestinationNat({
    this.backendConfig,
    this.frontendConfig,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfig': ?backendConfig == null ? null : backendConfig!.toMap(),
      'frontendConfig': ?frontendConfig == null ? null : frontendConfig!.toMap(),
      'name': name,
      'protocol': protocol,
    };
  }

  factory NextGenerationFirewallVirtualHubLocalRulestackDestinationNat.fromMap(Map<String, dynamic> map) {
    return NextGenerationFirewallVirtualHubLocalRulestackDestinationNat(
      backendConfig: map['backendConfig'] == null ? null : NextGenerationFirewallVirtualHubLocalRulestackDestinationNatBackendConfig.fromMap((map['backendConfig'] as Map).cast<String, dynamic>()),
      frontendConfig: map['frontendConfig'] == null ? null : NextGenerationFirewallVirtualHubLocalRulestackDestinationNatFrontendConfig.fromMap((map['frontendConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

