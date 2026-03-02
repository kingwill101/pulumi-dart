// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_anonymous_authentication_response.dart';
import 'registry_endpoint_trusted_settings_response.dart';

/// RegistryEndpoint properties
class RegistryEndpointPropertiesResponse {
  /// The authentication settings for the Azure Container Registry.
  final pulumi.Input<RegistryEndpointAnonymousAuthenticationResponse> authentication;
  /// The Container Registry endpoint hostname.
  final pulumi.Input<String> host;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Trust settings for the registry endpoint
  final pulumi.Input<RegistryEndpointTrustedSettingsResponse>? trustSettings;

  /// Creates a new [RegistryEndpointPropertiesResponse].
  /// [authentication] The authentication settings for the Azure Container Registry.
  /// [host] The Container Registry endpoint hostname.
  /// [provisioningState] The status of the last operation.
  /// [trustSettings] Trust settings for the registry endpoint
  RegistryEndpointPropertiesResponse({
    required this.authentication,
    required this.host,
    required this.provisioningState,
    this.trustSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<RegistryEndpointAnonymousAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'host': host,
      'provisioningState': provisioningState,
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<RegistryEndpointTrustedSettingsResponse, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointPropertiesResponse(
      authentication: (RegistryEndpointAnonymousAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      host: (map['host'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      trustSettings: map['trustSettings'] == null ? null : (RegistryEndpointTrustedSettingsResponse.fromMap((map['trustSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

