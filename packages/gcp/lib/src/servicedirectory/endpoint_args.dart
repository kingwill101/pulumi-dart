// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_endpoint_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_endpoint_endpoint_args_doc}
class EndpointArgs {
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

  /// Creates a new [EndpointArgs].
  /// [address] IPv4 or IPv6 address of the endpoint.
  /// [endpointId] The Resource ID must be 1-63 characters long, including digits,
  /// [metadata] Metadata for the endpoint. This data can be consumed
  /// [network] The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  /// [port] Port that the endpoint is running on, must be in the
  /// [service] The resource name of the service that this endpoint provides.
  EndpointArgs({
    String? address,
    required String endpointId,
    Map<String, String>? metadata,
    String? network,
    int? port,
    required String service,
  })  : address = pulumi.Input.asOptionalInput<String>(address),
        endpointId = pulumi.Input.asInput<String>(endpointId),
        metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
        network = pulumi.Input.asOptionalInput<String>(network),
        port = pulumi.Input.asOptionalInput<int>(port),
        service = pulumi.Input.asInput<String>(service);

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

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      address: map['address'] == null ? null : map['address'] as String,
      endpointId: map['endpointId'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      service: map['service'] as String,
    );
  }
}
