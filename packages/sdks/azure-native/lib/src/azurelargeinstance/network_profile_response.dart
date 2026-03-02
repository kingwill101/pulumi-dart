// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_response.dart';

/// Specifies the network settings for the Azure Large Instance disks.
class NetworkProfileResponse {
  /// Specifies the circuit id for connecting to express route.
  final pulumi.Input<String>? circuitId;
  /// Specifies the network interfaces for the Azure Large Instance.
  final pulumi.Input<List<IpAddressResponse>>? networkInterfaces;

  /// Creates a new [NetworkProfileResponse].
  /// [circuitId] Specifies the circuit id for connecting to express route.
  /// [networkInterfaces] Specifies the network interfaces for the Azure Large Instance.
  NetworkProfileResponse({
    this.circuitId,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitId': ?circuitId,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<IpAddressResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<IpAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return NetworkProfileResponse(
      circuitId: map['circuitId'] == null ? null : (map['circuitId']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<IpAddressResponse>(map['networkInterfaces']!, (value) => IpAddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

