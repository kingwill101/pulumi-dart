// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_configuration.dart';

/// Frontend setting for Firewall
class FrontendSetting {
  /// Backend configurations
  final EndpointConfiguration backendConfiguration;
  /// Frontend configurations
  final EndpointConfiguration frontendConfiguration;
  /// Settings name
  final String name;
  /// Protocol Type
  final String protocol;

  /// Creates a new [FrontendSetting].
  /// [backendConfiguration] Backend configurations
  /// [frontendConfiguration] Frontend configurations
  /// [name] Settings name
  /// [protocol] Protocol Type
  FrontendSetting({
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

  factory FrontendSetting.fromMap(Map<String, dynamic> map) {
    return FrontendSetting(
      backendConfiguration: EndpointConfiguration.fromMap((map['backendConfiguration'] as Map).cast<String, dynamic>()),
      frontendConfiguration: EndpointConfiguration.fromMap((map['frontendConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

