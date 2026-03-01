// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'network_interface_response.dart';

/// The network profile definition.
class NetworkProfileResponse {
  /// Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// Specifies the identifier of the subnet.
  final ApiEntityReferenceResponse? subnet;

  /// Creates a new [NetworkProfileResponse].
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  /// [subnet] Specifies the identifier of the subnet.
  NetworkProfileResponse({
    this.networkInterfaces,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      subnet: map['subnet'] == null ? null : ApiEntityReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

