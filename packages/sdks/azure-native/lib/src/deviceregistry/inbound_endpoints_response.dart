// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_authentication_response.dart';
import 'trust_settings_response.dart';

/// An endpoint to connect to the device.
class InboundEndpointsResponse {
  /// Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  final pulumi.Input<String>? additionalConfiguration;
  /// The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  final pulumi.Input<String> address;
  /// Defines the client authentication mechanism to the server.
  final pulumi.Input<HostAuthenticationResponse>? authentication;
  /// Type of connection endpoint.
  final pulumi.Input<String> endpointType;
  /// Defines server trust settings for the endpoint.
  final pulumi.Input<TrustSettingsResponse>? trustSettings;
  /// Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  final pulumi.Input<String>? version;

  /// Creates a new [InboundEndpointsResponse].
  /// [additionalConfiguration] Stringified JSON that contains configuration to be used by the connector (e.g., OPC UA, ONVIF).
  /// [address] The endpoint address & port. This can be either an IP address (e.g., 192.168.1.1) or a fully qualified domain name (FQDN, e.g., server.example.com).
  /// [authentication] Defines the client authentication mechanism to the server.
  /// [endpointType] Type of connection endpoint.
  /// [trustSettings] Defines server trust settings for the endpoint.
  /// [version] Protocol version associated with the endpoint e.g. 1 or 2 for endpointType Microsoft.HTTP, and 3.5 or 5.0 for endpointType Microsoft.Mqtt etc.
  const InboundEndpointsResponse({
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
      'authentication': ?pulumi.Input.mapOptionalInputValue<HostAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'endpointType': endpointType,
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<TrustSettingsResponse, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory InboundEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return InboundEndpointsResponse(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      address: pulumi.Input.fromValue(map['address'] as String),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      trustSettings: (() { final guardedValue = map['trustSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
