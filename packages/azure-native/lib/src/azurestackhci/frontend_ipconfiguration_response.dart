// ignore_for_file: unused_element, unnecessary_cast

import 'frontend_ipconfiguration_properties_response.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfigurationResponse {
  /// name for the frontend IP configuration.
  final String name;
  /// properties for this frontendIPConfiguration
  final FrontendIPConfigurationPropertiesResponse properties;

  /// Creates a new [FrontendIPConfigurationResponse].
  /// [name] name for the frontend IP configuration.
  /// [properties] properties for this frontendIPConfiguration
  FrontendIPConfigurationResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory FrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationResponse(
      name: map['name'] as String,
      properties: FrontendIPConfigurationPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

