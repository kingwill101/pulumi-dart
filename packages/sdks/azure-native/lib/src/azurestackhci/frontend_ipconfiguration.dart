// ignore_for_file: unused_element, unnecessary_cast

import 'frontend_ipconfiguration_properties.dart';

/// FrontendIP Configuration object for a load balancer.
class FrontendIPConfiguration {
  /// name for the frontend IP configuration.
  final String name;
  /// properties for this frontendIPConfiguration
  final FrontendIPConfigurationProperties properties;

  /// Creates a new [FrontendIPConfiguration].
  /// [name] name for the frontend IP configuration.
  /// [properties] properties for this frontendIPConfiguration
  FrontendIPConfiguration({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory FrontendIPConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfiguration(
      name: map['name'] as String,
      properties: FrontendIPConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

