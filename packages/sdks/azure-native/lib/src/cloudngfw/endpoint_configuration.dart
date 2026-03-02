// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress.dart';

/// Endpoint Configuration for frontend and backend
class EndpointConfiguration {
  /// Address Space
  final pulumi.Input<IPAddress> address;
  /// port ID
  final pulumi.Input<String> port;

  /// Creates a new [EndpointConfiguration].
  /// [address] Address Space
  /// [port] port ID
  EndpointConfiguration({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': pulumi.Input.mapInputValue<IPAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'port': port,
    };
  }

  factory EndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointConfiguration(
      address: (IPAddress.fromMap((map['address'] as Map).cast<String, dynamic>())).input(),
      port: (map['port'] as String).input(),
    );
  }
}

