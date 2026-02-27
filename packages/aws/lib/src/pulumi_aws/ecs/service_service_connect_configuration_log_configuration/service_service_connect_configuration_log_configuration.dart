// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_service_connect_configuration_log_configuration_secret_option/service_service_connect_configuration_log_configuration_secret_option.dart';

class ServiceServiceConnectConfigurationLogConfiguration {
  /// Log driver to use for the container.
  final String logDriver;

  /// Configuration options to send to the log driver.
  final Map<String, String>? options;

  /// Secrets to pass to the log configuration. See below.
  final List<ServiceServiceConnectConfigurationLogConfigurationSecretOption>?
      secretOptions;

  ServiceServiceConnectConfigurationLogConfiguration({
    required this.logDriver,
    this.options,
    this.secretOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logDriver'] = logDriver;
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final secretOptionsValue = secretOptions;
    if (secretOptionsValue != null) {
      map['secretOptions'] = pulumi.Input.encodeList<
          ServiceServiceConnectConfigurationLogConfigurationSecretOption,
          Map<String, dynamic>>(secretOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceServiceConnectConfigurationLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ServiceServiceConnectConfigurationLogConfiguration(
      logDriver: map['logDriver'] as String,
      options: map['options'] == null
          ? null
          : (map['options'] as Map).cast<String, String>(),
      secretOptions: map['secretOptions'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServiceServiceConnectConfigurationLogConfigurationSecretOption>(
              map['secretOptions'],
              (value) =>
                  ServiceServiceConnectConfigurationLogConfigurationSecretOption
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
