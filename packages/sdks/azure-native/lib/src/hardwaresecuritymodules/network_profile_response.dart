// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'network_interface_response.dart';

/// The network profile definition.
class NetworkProfileResponse {
  /// Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  final pulumi.Input<List<NetworkInterfaceResponse>?>? networkInterfaces;
  /// Specifies the identifier of the subnet.
  final pulumi.Input<ApiEntityReferenceResponse?>? subnet;

  /// Creates a new [NetworkProfileResponse].
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  /// [subnet] Specifies the identifier of the subnet.
  const NetworkProfileResponse({
    this.networkInterfaces,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnet': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponse>(guardedValue, (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
