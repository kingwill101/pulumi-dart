// ignore_for_file: unused_element, unnecessary_cast


/// An endpoint to connect to the device.
class DiscoveredInboundEndpointsResponse {
  /// Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  final String? additionalConfiguration;
  /// The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  final String address;
  /// Type of connection endpoint.
  final String endpointType;
  /// The timestamp (in UTC) when the endpoint was discovered.
  final String? lastUpdatedOn;
  /// List of supported authentication methods supported by device for Inbound connections.
  final List<String>? supportedAuthenticationMethods;
  /// Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  final String? version;

  /// Creates a new [DiscoveredInboundEndpointsResponse].
  /// [additionalConfiguration] Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  /// [address] The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  /// [endpointType] Type of connection endpoint.
  /// [lastUpdatedOn] The timestamp (in UTC) when the endpoint was discovered.
  /// [supportedAuthenticationMethods] List of supported authentication methods supported by device for Inbound connections.
  /// [version] Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  DiscoveredInboundEndpointsResponse({
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
      additionalConfiguration: map['additionalConfiguration'] == null ? null : map['additionalConfiguration'] as String,
      address: map['address'] as String,
      endpointType: map['endpointType'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : map['lastUpdatedOn'] as String,
      supportedAuthenticationMethods: map['supportedAuthenticationMethods'] == null ? null : (map['supportedAuthenticationMethods'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

