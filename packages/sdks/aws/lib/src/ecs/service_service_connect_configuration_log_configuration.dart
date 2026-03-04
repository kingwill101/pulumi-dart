// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_connect_configuration_log_configuration_secret_option.dart';

class ServiceServiceConnectConfigurationLogConfiguration {
  /// Log driver to use for the container.
  final pulumi.Input<String> logDriver;

  /// Configuration options to send to the log driver.
  final pulumi.Input<Map<String, String>>? options;

  /// Secrets to pass to the log configuration. See below.
  final pulumi.Input<
    List<ServiceServiceConnectConfigurationLogConfigurationSecretOption>
  >?
  secretOptions;

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
      'secretOptions':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ServiceServiceConnectConfigurationLogConfigurationSecretOption
            >,
            List<Map<String, dynamic>>
          >(
            secretOptions,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceServiceConnectConfigurationLogConfigurationSecretOption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ServiceServiceConnectConfigurationLogConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceServiceConnectConfigurationLogConfiguration(
      logDriver: pulumi.Input.fromValue(map['logDriver'] as String),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      secretOptions: (() {
        final guardedValue = map['secretOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceServiceConnectConfigurationLogConfigurationSecretOption
          >(
            guardedValue,
            (value) =>
                ServiceServiceConnectConfigurationLogConfigurationSecretOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
