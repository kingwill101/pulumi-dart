// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_anonymous_authentication_response.dart';
import 'registry_endpoint_trusted_settings_response.dart';

/// RegistryEndpoint properties
class RegistryEndpointPropertiesResponse {
  /// The authentication settings for the Azure Container Registry.
  final RegistryEndpointAnonymousAuthenticationResponse authentication;
  /// The Container Registry endpoint hostname.
  final String host;
  /// The status of the last operation.
  final String provisioningState;
  /// Trust settings for the registry endpoint
  final RegistryEndpointTrustedSettingsResponse? trustSettings;

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
      'authentication': authentication.toMap(),
      'host': host,
      'provisioningState': provisioningState,
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
    };
  }

  factory RegistryEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointPropertiesResponse(
      authentication: RegistryEndpointAnonymousAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      provisioningState: map['provisioningState'] as String,
      trustSettings: map['trustSettings'] == null ? null : RegistryEndpointTrustedSettingsResponse.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

