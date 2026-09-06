// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An endpoint to connect to the device.
class DiscoveredInboundEndpointsResponse {
  /// Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  final pulumi.Input<String?>? additionalConfiguration;
  /// The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  final pulumi.Input<String> address;
  /// Type of connection endpoint.
  final pulumi.Input<String> endpointType;
  /// The timestamp (in UTC) when the endpoint was discovered.
  final pulumi.Input<String?>? lastUpdatedOn;
  /// List of supported authentication methods supported by device for Inbound connections.
  final pulumi.Input<List<String>?>? supportedAuthenticationMethods;
  /// Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  final pulumi.Input<String?>? version;

  /// Creates a new [DiscoveredInboundEndpointsResponse].
  /// [additionalConfiguration] Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  /// [address] The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  /// [endpointType] Type of connection endpoint.
  /// [lastUpdatedOn] The timestamp (in UTC) when the endpoint was discovered.
  /// [supportedAuthenticationMethods] List of supported authentication methods supported by device for Inbound connections.
  /// [version] Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  const DiscoveredInboundEndpointsResponse({
    this.additionalConfiguration,
    required this.address,
    required this.endpointType,
    this.lastUpdatedOn,
    this.supportedAuthenticationMethods,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'address': address,
      'endpointType': endpointType,
      'lastUpdatedOn': ?lastUpdatedOn,
      'supportedAuthenticationMethods': ?supportedAuthenticationMethods,
      'version': ?version,
    };
  }

  factory DiscoveredInboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredInboundEndpointsResponse(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address: pulumi.Input.fromValue(map['address'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      lastUpdatedOn: (() { final guardedValue = map['lastUpdatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedAuthenticationMethods: (() { final guardedValue = map['supportedAuthenticationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
