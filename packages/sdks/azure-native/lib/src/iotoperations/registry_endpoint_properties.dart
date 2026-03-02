// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_anonymous_authentication.dart';
import 'registry_endpoint_trusted_settings.dart';

/// RegistryEndpoint properties
class RegistryEndpointProperties {
  /// The authentication settings for the Azure Container Registry.
  final pulumi.Input<RegistryEndpointAnonymousAuthentication> authentication;
  /// The Container Registry endpoint hostname.
  final pulumi.Input<String> host;
  /// Trust settings for the registry endpoint
  final pulumi.Input<RegistryEndpointTrustedSettings>? trustSettings;

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
      'authentication': pulumi.Input.mapInputValue<RegistryEndpointAnonymousAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'host': host,
      'trustSettings': ?pulumi.Input.mapOptionalInputValue<RegistryEndpointTrustedSettings, Map<String, dynamic>>(trustSettings, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointProperties.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointProperties(
      authentication: (RegistryEndpointAnonymousAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      host: (map['host'] as String).input(),
      trustSettings: map['trustSettings'] == null ? null : (RegistryEndpointTrustedSettings.fromMap((map['trustSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

