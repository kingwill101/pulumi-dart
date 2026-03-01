// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hardware_inventory_network_interface_response.dart';
import 'nic_response.dart';

class HardwareInventoryResponse {
  /// Freeform data extracted from the environment about this machine. This information varies depending on the specific hardware and configuration.
  final String additionalHostInformation;
  /// The list of network interfaces and associated details for the bare metal machine.
  final List<HardwareInventoryNetworkInterfaceResponse> interfaces;
  /// Field Deprecated. Will be removed in an upcoming version. The list of network interface cards and associated details for the bare metal machine.
  final List<NicResponse> nics;

  /// Creates a new [HardwareInventoryResponse].
  /// [additionalHostInformation] Freeform data extracted from the environment about this machine. This information varies depending on the specific hardware and configuration.
  /// [interfaces] The list of network interfaces and associated details for the bare metal machine.
  /// [nics] Field Deprecated. Will be removed in an upcoming version. The list of network interface cards and associated details for the bare metal machine.
  HardwareInventoryResponse({
    required this.additionalHostInformation,
    required this.interfaces,
    required this.nics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalHostInformation': additionalHostInformation,
      'interfaces': pulumi.Input.encodeList<HardwareInventoryNetworkInterfaceResponse, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'nics': pulumi.Input.encodeList<NicResponse, Map<String, dynamic>>(nics, (value) => value.toMap()),
    };
  }

  factory HardwareInventoryResponse.fromMap(Map<String, dynamic> map) {
    return HardwareInventoryResponse(
      additionalHostInformation: map['additionalHostInformation'] as String,
      interfaces: pulumi.Input.decodeList<HardwareInventoryNetworkInterfaceResponse>(map['interfaces'], (value) => HardwareInventoryNetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      nics: pulumi.Input.decodeList<NicResponse>(map['nics'], (value) => NicResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

