// ignore_for_file: unused_element, unnecessary_cast

import 'registry_endpoint_anonymous_authentication.dart';
import 'registry_endpoint_trusted_settings.dart';

/// RegistryEndpoint properties
class RegistryEndpointProperties {
  /// The authentication settings for the Azure Container Registry.
  final RegistryEndpointAnonymousAuthentication authentication;
  /// The Container Registry endpoint hostname.
  final String host;
  /// Trust settings for the registry endpoint
  final RegistryEndpointTrustedSettings? trustSettings;

  /// Creates a new [RegistryEndpointProperties].
  /// [authentication] The authentication settings for the Azure Container Registry.
  /// [host] The Container Registry endpoint hostname.
  /// [trustSettings] Trust settings for the registry endpoint
  RegistryEndpointProperties({
    required this.authentication,
    required this.host,
    this.trustSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication.toMap(),
      'host': host,
      'trustSettings': ?trustSettings == null ? null : trustSettings!.toMap(),
    };
  }

  factory RegistryEndpointProperties.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointProperties(
      authentication: RegistryEndpointAnonymousAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      host: map['host'] as String,
      trustSettings: map['trustSettings'] == null ? null : RegistryEndpointTrustedSettings.fromMap((map['trustSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

