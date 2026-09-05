// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_access_log_configuration.dart';
import 'service_service_connect_configuration_log_configuration.dart';
import 'service_service_connect_configuration_service.dart';

class ServiceServiceConnectConfiguration {
  /// Configuration for Service Connect access logs. See below.
  final pulumi.Input<ServiceServiceConnectConfigurationAccessLogConfiguration?>? accessLogConfiguration;
  /// Whether to use Service Connect with this service.
  final pulumi.Input<bool> enabled;
  /// Log configuration for the container. See below.
  final pulumi.Input<ServiceServiceConnectConfigurationLogConfiguration?>? logConfiguration;
  /// Namespace name or ARN of the `aws.servicediscovery.HttpNamespace` for use with Service Connect.
  final pulumi.Input<String?>? namespace;
  /// List of Service Connect service objects. See below.
  final pulumi.Input<List<ServiceServiceConnectConfigurationService>?>? services;

  /// Creates a new [ServiceServiceConnectConfiguration].
  /// [accessLogConfiguration] Configuration for Service Connect access logs. See below.
  /// [enabled] Whether to use Service Connect with this service.
  /// [logConfiguration] Log configuration for the container. See below.
  /// [namespace] Namespace name or ARN of the `aws.servicediscovery.HttpNamespace` for use with Service Connect.
  /// [services] List of Service Connect service objects. See below.
  const ServiceServiceConnectConfiguration({
    this.accessLogConfiguration,
    required this.enabled,
    this.logConfiguration,
    this.namespace,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLogConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceServiceConnectConfigurationAccessLogConfiguration, Map<String, dynamic>>(accessLogConfiguration, (value) => value.toMap()),
      'enabled': enabled,
      'logConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceServiceConnectConfigurationLogConfiguration, Map<String, dynamic>>(logConfiguration, (value) => value.toMap()),
      'namespace': ?namespace,
      'services': ?pulumi.Input.mapOptionalInputValue<List<ServiceServiceConnectConfigurationService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<ServiceServiceConnectConfigurationService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceServiceConnectConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfiguration(
      accessLogConfiguration: (() { final guardedValue = map['accessLogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceServiceConnectConfigurationAccessLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logConfiguration: (() { final guardedValue = map['logConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceServiceConnectConfigurationLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServiceConnectConfigurationService>(guardedValue, (value) => ServiceServiceConnectConfigurationService.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
