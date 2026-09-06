// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_settings_ex_response.dart';

/// The properties of the managed network settings of a cognitive services account.
class ManagedNetworkSettingsPropertiesResponse {
  /// Managed Network settings for a cognitive services account.
  final pulumi.Input<ManagedNetworkSettingsExResponse?>? managedNetwork;
  /// The current deployment state of the managed network resource. The provisioningState is to indicate states for resource provisioning.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ManagedNetworkSettingsPropertiesResponse].
  /// [managedNetwork] Managed Network settings for a cognitive services account.
  /// [provisioningState] The current deployment state of the managed network resource. The provisioningState is to indicate states for resource provisioning.
  const ManagedNetworkSettingsPropertiesResponse({
    this.managedNetwork,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkSettingsExResponse, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory ManagedNetworkSettingsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsPropertiesResponse(
      managedNetwork: (() { final guardedValue = map['managedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkSettingsExResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
