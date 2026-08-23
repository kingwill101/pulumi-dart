// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_hci.dart';

class VirtualNetworkPropertiesResponseInfraVnetProfile {
  /// Infrastructure network profile for HCI platform
  final pulumi.Input<VirtualNetworkPropertiesResponseHci>? hci;

  /// Creates a new [VirtualNetworkPropertiesResponseInfraVnetProfile].
  /// [hci] Infrastructure network profile for HCI platform
  const VirtualNetworkPropertiesResponseInfraVnetProfile({
    this.hci,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hci': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkPropertiesResponseHci, Map<String, dynamic>>(hci, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkPropertiesResponseInfraVnetProfile.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseInfraVnetProfile(
      hci: (() { final guardedValue = map['hci']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkPropertiesResponseHci.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
