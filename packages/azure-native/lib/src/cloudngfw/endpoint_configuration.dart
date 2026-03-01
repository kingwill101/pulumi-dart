// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress.dart';

/// Endpoint Configuration for frontend and backend
class EndpointConfiguration {
  /// Address Space
  final IPAddress address;
  /// port ID
  final String port;

  /// Creates a new [EndpointConfiguration].
  /// [address] Address Space
  /// [port] port ID
  EndpointConfiguration({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address.toMap(),
      'port': port,
    };
  }

  factory EndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointConfiguration(
      address: IPAddress.fromMap((map['address'] as Map).cast<String, dynamic>()),
      port: map['port'] as String,
    );
  }
}

