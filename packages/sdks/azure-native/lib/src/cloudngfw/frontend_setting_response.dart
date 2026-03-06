// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_response.dart';

/// Frontend setting for Firewall
class FrontendSettingResponse {
  /// Backend configurations
  final pulumi.Input<EndpointConfigurationResponse> backendConfiguration;
  /// Frontend configurations
  final pulumi.Input<EndpointConfigurationResponse> frontendConfiguration;
  /// Settings name
  final pulumi.Input<String> name;
  /// Protocol Type
  final pulumi.Input<String> protocol;

  /// Creates a new [FrontendSettingResponse].
  /// [backendConfiguration] Backend configurations
  /// [frontendConfiguration] Frontend configurations
  /// [name] Settings name
  /// [protocol] Protocol Type
  const FrontendSettingResponse({
    required this.backendConfiguration,
    required this.frontendConfiguration,
    required this.name,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendConfiguration': pulumi.Input.mapInputValue<EndpointConfigurationResponse, Map<String, dynamic>>(backendConfiguration, (value) => value.toMap()),
      'frontendConfiguration': pulumi.Input.mapInputValue<EndpointConfigurationResponse, Map<String, dynamic>>(frontendConfiguration, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory FrontendSettingResponse.fromMap(Map<String, dynamic> map) {
    return FrontendSettingResponse(
      backendConfiguration: pulumi.Input.fromValue(EndpointConfigurationResponse.fromMap((map['backendConfiguration']! as Map).cast<String, dynamic>())),
      frontendConfiguration: pulumi.Input.fromValue(EndpointConfigurationResponse.fromMap((map['frontendConfiguration']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

