// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_logging_configuration_log_destination_config.dart';

class LoggingConfigurationLoggingConfiguration {
  /// Set of configuration blocks describing the logging details for a firewall. See Log Destination Config below for details. At most, only Three blocks can be specified; one for `FLOW` logs and one for `ALERT` logs and one for `TLS` logs.
  final List<LoggingConfigurationLoggingConfigurationLogDestinationConfig> logDestinationConfigs;

  /// Creates a new [LoggingConfigurationLoggingConfiguration].
  /// [logDestinationConfigs] Set of configuration blocks describing the logging details for a firewall. See Log Destination Config below for details. At most, only Three blocks can be specified; one for `FLOW` logs and one for `ALERT` logs and one for `TLS` logs.
  LoggingConfigurationLoggingConfiguration({
    required this.logDestinationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logDestinationConfigs': pulumi.Input.encodeList<LoggingConfigurationLoggingConfigurationLogDestinationConfig, Map<String, dynamic>>(logDestinationConfigs, (value) => value.toMap()),
    };
  }

  factory LoggingConfigurationLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationLoggingConfiguration(
      logDestinationConfigs: pulumi.Input.decodeList<LoggingConfigurationLoggingConfigurationLogDestinationConfig>(map['logDestinationConfigs'], (value) => LoggingConfigurationLoggingConfigurationLogDestinationConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

