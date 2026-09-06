// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_hci.dart';

class VirtualNetworkPropertiesInfraVnetProfile {
  /// Infrastructure network profile for HCI platform
  final pulumi.Input<VirtualNetworkPropertiesHci?>? hci;

  /// Creates a new [VirtualNetworkPropertiesInfraVnetProfile].
  /// [hci] Infrastructure network profile for HCI platform
  const VirtualNetworkPropertiesInfraVnetProfile({
    this.hci,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hci': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesHci, Map<String, dynamic>>(hci, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkPropertiesInfraVnetProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesInfraVnetProfile(
      hci: (() { final guardedValue = map['hci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesHci.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
