// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'network_interface.dart';

/// NetworkPolicy describes VM instance network configurations.
class NetworkPolicy {
  /// Network configurations.
  final List<NetworkInterface>? networkInterfaces;

  NetworkPolicy({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] =
          Input.encodeList<NetworkInterface, Map<String, dynamic>>(
              networkInterfacesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkPolicy(
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : Input.decodeList<NetworkInterface>(
              map['networkInterfaces'],
              (value) => NetworkInterface.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
