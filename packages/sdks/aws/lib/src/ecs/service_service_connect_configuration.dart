// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_log_configuration.dart';
import 'service_service_connect_configuration_service.dart';

class ServiceServiceConnectConfiguration {
  /// Whether to use Service Connect with this service.
  final pulumi.Input<bool> enabled;
  /// Log configuration for the container. See below.
  final pulumi.Input<ServiceServiceConnectConfigurationLogConfiguration>? logConfiguration;
  /// Namespace name or ARN of the `aws.servicediscovery.HttpNamespace` for use with Service Connect.
  final pulumi.Input<String>? namespace;
  /// List of Service Connect service objects. See below.
  final pulumi.Input<List<ServiceServiceConnectConfigurationService>>? services;

  /// Creates a new [ServiceServiceConnectConfiguration].
  /// [enabled] Whether to use Service Connect with this service.
  /// [logConfiguration] Log configuration for the container. See below.
  /// [namespace] Namespace name or ARN of the `aws.servicediscovery.HttpNamespace` for use with Service Connect.
  /// [services] List of Service Connect service objects. See below.
  ServiceServiceConnectConfiguration({
    required this.enabled,
    this.logConfiguration,
    this.namespace,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceServiceConnectConfigurationLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'namespace': ?namespace,
      'services': ?pulumi.Input.mapOptionalInputValue<List<ServiceServiceConnectConfigurationService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<ServiceServiceConnectConfigurationService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceServiceConnectConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfiguration(
      enabled: (map['enabled'] as bool).input(),
      logConfiguration: map['logConfiguration'] == null ? null : (ServiceServiceConnectConfigurationLogConfiguration.fromMap((map['logConfiguration'] as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<ServiceServiceConnectConfigurationService>(map['services'], (value) => ServiceServiceConnectConfigurationService.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

