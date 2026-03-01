// ignore_for_file: unused_element, unnecessary_cast

import 'host_authentication_response.dart';
import 'trust_settings_response.dart';

/// An endpoint to connect to the device.
class InboundEndpointsResponse {
  /// Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  final String? additionalConfiguration;
  /// The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  final String address;
  /// Defines the client authentication mechanism to the server.
  final HostAuthenticationResponse? authentication;
  /// Type of connection endpoint.
  final String endpointType;
  /// Defines server trust settings for the endpoint.
  final TrustSettingsResponse? trustSettings;
  /// Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  final String? version;

  /// Creates a new [InboundEndpointsResponse].
  /// [additionalConfiguration] Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  /// [address] The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  /// [authentication] Defines the client authentication mechanism to the server.
  /// [endpointType] Type of connection endpoint.
  /// [trustSettings] Defines server trust settings for the endpoint.
  /// [version] Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  InboundEndpointsResponse({
    this.additionalConfiguration,
    required this.address,
    this.authentication,
    required this.endpointType,
    this.trustSettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'address': address,
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'endpointType': endpointType,
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
      'version': ?version,
    };
  }

  factory InboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return InboundEndpointsResponse(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : map['additionalConfiguration'] as String,
      address: map['address'] as String,
      authentication: map['authentication'] == null ? null : HostAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      endpointType: map['endpointType'] as String,
      trustSettings: map['trustSettings'] == null ? null : TrustSettingsResponse.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

