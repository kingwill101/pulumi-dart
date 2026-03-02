// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration.dart';

/// Frontend setting for Firewall
class FrontendSetting {
  /// Backend configurations
  final pulumi.Input<EndpointConfiguration> backendConfiguration;
  /// Frontend configurations
  final pulumi.Input<EndpointConfiguration> frontendConfiguration;
  /// Settings name
  final pulumi.Input<String> name;
  /// Protocol Type
  final pulumi.Input<String> protocol;

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
      'backendConfiguration': pulumi.Input.mapInputValue<EndpointConfiguration, Map<String, dynamic>>(backendConfiguration, (value) => value.toMap()),
      'frontendConfiguration': pulumi.Input.mapInputValue<EndpointConfiguration, Map<String, dynamic>>(frontendConfiguration, (value) => value.toMap()),
      'name': name,
      'protocol': protocol,
    };
  }

  factory FrontendSetting.fromMap(Map<String, dynamic> map) {
    return FrontendSetting(
      backendConfiguration: (EndpointConfiguration.fromMap((map['backendConfiguration'] as Map).cast<String, dynamic>())).input(),
      frontendConfiguration: (EndpointConfiguration.fromMap((map['frontendConfiguration'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

