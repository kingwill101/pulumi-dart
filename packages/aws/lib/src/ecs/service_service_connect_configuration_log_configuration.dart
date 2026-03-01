// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_log_configuration_secret_option.dart';

class ServiceServiceConnectConfigurationLogConfiguration {
  /// Log driver to use for the container.
  final String logDriver;
  /// Configuration options to send to the log driver.
  final Map<String, String>? options;
  /// Secrets to pass to the log configuration. See below.
  final List<ServiceServiceConnectConfigurationLogConfigurationSecretOption>? secretOptions;

  /// Creates a new [ServiceServiceConnectConfigurationLogConfiguration].
  /// [logDriver] Log driver to use for the container.
  /// [options] Configuration options to send to the log driver.
  /// [secretOptions] Secrets to pass to the log configuration. See below.
  ServiceServiceConnectConfigurationLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDriver': logDriver,
      'options': ?options,
      'secretOptions': ?secretOptions == null ? null : pulumi.Input.encodeList<ServiceServiceConnectConfigurationLogConfigurationSecretOption, Map<String, dynamic>>(secretOptions!, (value) => value.toMap()),
    };
  }

  factory ServiceServiceConnectConfigurationLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationLogConfiguration(
      logDriver: map['logDriver'] as String,
      options: map['options'] == null ? null : (map['options'] as Map).cast<String, String>(),
      secretOptions: map['secretOptions'] == null ? null : pulumi.Input.decodeList<ServiceServiceConnectConfigurationLogConfigurationSecretOption>(map['secretOptions'], (value) => ServiceServiceConnectConfigurationLogConfigurationSecretOption.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

