// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_response.dart';

/// Specifies the network interfaces of the virtual machine.
class NetworkProfileResponse {
  /// Gets or sets the list of network interfaces associated with the virtual machine.
  final pulumi.Input<List<NetworkInterfaceResponse>>? networkInterfaces;

  /// Creates a new [NetworkProfileResponse].
  /// [networkInterfaces] Gets or sets the list of network interfaces associated with the virtual machine.
  NetworkProfileResponse({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

