// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Endpoint.
class EndpointServicedirectoryArgs {
  /// IPv4 or IPv6 address of the endpoint.
  final pulumi.Input<String>? address;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  final pulumi.Input<String> endpointId;

  /// Metadata for the endpoint. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 512 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  final pulumi.Input<String>? network;

  /// Port that the endpoint is running on, must be in the
  /// range of [0, 65535]. If unspecified, the default is 0.
  final pulumi.Input<int>? port;

  /// The resource name of the service that this endpoint provides.
  final pulumi.Input<String> service;

  EndpointServicedirectoryArgs({
    this.address,
    required this.endpointId,
    this.metadata,
    this.network,
    this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    map['endpointId'] = endpointId;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['service'] = service;
    return map;
  }

  factory EndpointServicedirectoryArgs.fromMap(Map<String, dynamic> map) {
    return EndpointServicedirectoryArgs(
      address: pulumi.Input.asOptionalInput<String>(map['address']),
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
