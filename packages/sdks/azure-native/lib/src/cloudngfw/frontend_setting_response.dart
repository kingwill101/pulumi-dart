// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_configuration_response.dart';

/// Frontend setting for Firewall
class FrontendSettingResponse {
  /// Backend configurations
  final EndpointConfigurationResponse backendConfiguration;
  /// Frontend configurations
  final EndpointConfigurationResponse frontendConfiguration;
  /// Settings name
  final String name;
  /// Protocol Type
  final String protocol;

  /// Creates a new [FrontendSettingResponse].
  /// [backendConfiguration] Backend configurations
  /// [frontendConfiguration] Frontend configurations
  /// [name] Settings name
  /// [protocol] Protocol Type
  FrontendSettingResponse({
    required this.backendConfiguration,
    required this.frontendConfiguration,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfiguration': backendConfiguration.toMap(),
      'frontendConfiguration': frontendConfiguration.toMap(),
      'name': name,
      'protocol': protocol,
    };
  }

  factory FrontendSettingResponse.fromMap(Map<String, dynamic> map) {
    return FrontendSettingResponse(
      backendConfiguration: EndpointConfigurationResponse.fromMap((map['backendConfiguration'] as Map).cast<String, dynamic>()),
      frontendConfiguration: EndpointConfigurationResponse.fromMap((map['frontendConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

