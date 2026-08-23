// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent identity configuration
class AgentIdentityResponse {
  /// Client ID (GUID) for the agent identity
  final pulumi.Input<String> clientId;
  /// Indicates whether the agent identity is enabled
  final pulumi.Input<bool> enabled;
  /// Initial sponsor group ID (required for agent identity)
  final pulumi.Input<String> initialSponsorGroupId;

  /// Creates a new [AgentIdentityResponse].
  /// [clientId] Client ID (GUID) for the agent identity
  /// [enabled] Indicates whether the agent identity is enabled
  /// [initialSponsorGroupId] Initial sponsor group ID (required for agent identity)
  const AgentIdentityResponse({
    required this.clientId,
    required this.enabled,
    required this.initialSponsorGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'enabled': enabled,
      'initialSponsorGroupId': initialSponsorGroupId,
    };
  }

  factory AgentIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AgentIdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      initialSponsorGroupId: pulumi.Input.fromValue(map['initialSponsorGroupId'] as String),
    );
  }
}
