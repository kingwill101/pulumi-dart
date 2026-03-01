// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_log_configuration.dart';
import 'service_service_connect_configuration_service.dart';

class ServiceServiceConnectConfiguration {
  /// Whether to use Service Connect with this service.
  final bool enabled;

  /// Log configuration for the container. See below.
  final ServiceServiceConnectConfigurationLogConfiguration? logConfiguration;

  /// Namespace name or ARN of the `aws.servicediscovery.HttpNamespace` for use with Service Connect.
  final String? namespace;

  /// List of Service Connect service objects. See below.
  final List<ServiceServiceConnectConfigurationService>? services;

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
      'logConfiguration': ?logConfiguration == null
          ? null
          : logConfiguration!.toMap(),
      'namespace': ?namespace,
      'services': ?services == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServiceConnectConfigurationService,
              Map<String, dynamic>
            >(services!, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfiguration(
      enabled: map['enabled'] as bool,
      logConfiguration: map['logConfiguration'] == null
          ? null
          : ServiceServiceConnectConfigurationLogConfiguration.fromMap(
              (map['logConfiguration'] as Map).cast<String, dynamic>(),
            ),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      services: map['services'] == null
          ? null
          : pulumi.Input.decodeList<ServiceServiceConnectConfigurationService>(
              map['services'],
              (value) => ServiceServiceConnectConfigurationService.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
