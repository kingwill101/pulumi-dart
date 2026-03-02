// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address.dart';

/// Specifies the network settings for the Azure Large Instance disks.
class NetworkProfile {
  /// Specifies the circuit id for connecting to express route.
  final pulumi.Input<String>? circuitId;
  /// Specifies the network interfaces for the Azure Large Instance.
  final pulumi.Input<List<IpAddress>>? networkInterfaces;

  /// Creates a new [NetworkProfile].
  /// [circuitId] Specifies the circuit id for connecting to express route.
  /// [networkInterfaces] Specifies the network interfaces for the Azure Large Instance.
  NetworkProfile({
    this.circuitId,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitId': ?circuitId,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<IpAddress>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<IpAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      circuitId: map['circuitId'] == null ? null : (map['circuitId']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<IpAddress>(map['networkInterfaces']!, (value) => IpAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

