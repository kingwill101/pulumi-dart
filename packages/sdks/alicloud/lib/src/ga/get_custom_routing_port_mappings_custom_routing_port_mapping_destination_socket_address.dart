// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress {
  /// The service IP address of the backend instance.
  final pulumi.Input<String> ipAddress;
  /// The service port of the backend instance.
  final pulumi.Input<int> port;

  /// Creates a new [GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress].
  /// [ipAddress] The service IP address of the backend instance.
  /// [port] The service port of the backend instance.
  const GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

