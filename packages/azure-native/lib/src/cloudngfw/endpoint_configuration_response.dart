// ignore_for_file: unused_element, unnecessary_cast

import 'ipaddress_response.dart';

/// Endpoint Configuration for frontend and backend
class EndpointConfigurationResponse {
  /// Address Space
  final IPAddressResponse address;
  /// port ID
  final String port;

  /// Creates a new [EndpointConfigurationResponse].
  /// [address] Address Space
  /// [port] port ID
  EndpointConfigurationResponse({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address.toMap(),
      'port': port,
    };
  }

  factory EndpointConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationResponse(
      address: IPAddressResponse.fromMap((map['address'] as Map).cast<String, dynamic>()),
      port: map['port'] as String,
    );
  }
}

