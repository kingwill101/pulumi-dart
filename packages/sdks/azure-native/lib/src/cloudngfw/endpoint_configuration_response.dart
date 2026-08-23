// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipaddress_response.dart';

/// Endpoint Configuration for frontend and backend
class EndpointConfigurationResponse {
  /// Address Space
  final pulumi.Input<IPAddressResponse> address;
  /// port ID
  final pulumi.Input<String> port;

  /// Creates a new [EndpointConfigurationResponse].
  /// [address] Address Space
  /// [port] port ID
  const EndpointConfigurationResponse({
    required this.address,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': pulumi.Input.mapInputValue<IPAddressResponse, Map<String, dynamic>>(address, (value) => value.toMap()),
      'port': port,
    };
  }

  factory EndpointConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointConfigurationResponse(
      address: pulumi.Input.fromValue(IPAddressResponse.fromMap((map['address']! as Map).cast<String, dynamic>())),
      port: pulumi.Input.fromValue(map['port'] as String),
    );
  }
}
