// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies in AI Foundry where virtual network injection occurs to secure scenarios like Agents entirely within the user's private network, eliminating public internet exposure while maintaining control over network configurations and resources.
class NetworkInjectionResponse {
  /// Specifies what features in AI Foundry network injection applies to. Currently only supports 'agent' for agent scenarios. 'none' means no network injection.
  final pulumi.Input<String?>? scenario;
  /// Specify the subnet for which your Agent Client is injected into.
  final pulumi.Input<String?>? subnetArmId;
  /// Boolean to enable Microsoft Managed Network for subnet delegation
  final pulumi.Input<bool?>? useMicrosoftManagedNetwork;

  /// Creates a new [NetworkInjectionResponse].
  /// [scenario] Specifies what features in AI Foundry network injection applies to. Currently only supports 'agent' for agent scenarios. 'none' means no network injection.
  /// [subnetArmId] Specify the subnet for which your Agent Client is injected into.
  /// [useMicrosoftManagedNetwork] Boolean to enable Microsoft Managed Network for subnet delegation
  const NetworkInjectionResponse({
    this.scenario,
    this.subnetArmId,
    this.useMicrosoftManagedNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scenario': ?scenario,
      'subnetArmId': ?subnetArmId,
      'useMicrosoftManagedNetwork': ?useMicrosoftManagedNetwork,
    };
  }

  factory NetworkInjectionResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInjectionResponse(
      scenario: (() { final guardedValue = map['scenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetArmId: (() { final guardedValue = map['subnetArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useMicrosoftManagedNetwork: (() { final guardedValue = map['useMicrosoftManagedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
