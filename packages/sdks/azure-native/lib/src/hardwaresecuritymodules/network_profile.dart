// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'network_interface.dart';

/// The network profile definition.
class NetworkProfile {
  /// Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  final List<NetworkInterface>? networkInterfaces;
  /// Specifies the identifier of the subnet.
  final ApiEntityReference? subnet;

  /// Creates a new [NetworkProfile].
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the dedicated HSM.
  /// [subnet] Specifies the identifier of the subnet.
  NetworkProfile({
    this.networkInterfaces,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterface>(map['networkInterfaces'], (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      subnet: map['subnet'] == null ? null : ApiEntityReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

