// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_network_settings_ex.dart';

/// The properties of the managed network settings of a cognitive services account.
class ManagedNetworkSettingsProperties {
  /// Managed Network settings for a cognitive services account.
  final pulumi.Input<ManagedNetworkSettingsEx?>? managedNetwork;

  /// Creates a new [ManagedNetworkSettingsProperties].
  /// [managedNetwork] Managed Network settings for a cognitive services account.
  const ManagedNetworkSettingsProperties({
    this.managedNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetwork': ?pulumi.Input.mapOptionalInputValue<ManagedNetworkSettingsEx, Map<String, dynamic>>(managedNetwork, (value) => value.toMap()),
    };
  }

  factory ManagedNetworkSettingsProperties.fromMap(Map<String, dynamic> map) {
    return ManagedNetworkSettingsProperties(
      managedNetwork: (() { final guardedValue = map['managedNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNetworkSettingsEx.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
