// ignore_for_file: unused_element, unnecessary_cast

import '../session_template_environment_config_execution_config/session_template_environment_config_execution_config.dart';
import '../session_template_environment_config_peripherals_config/session_template_environment_config_peripherals_config.dart';

class SessionTemplateEnvironmentConfig {
  /// Execution configuration for a workload.
  /// Structure is documented below.
  final SessionTemplateEnvironmentConfigExecutionConfig? executionConfig;

  /// Peripherals configuration that workload has access to.
  /// Structure is documented below.
  final SessionTemplateEnvironmentConfigPeripheralsConfig? peripheralsConfig;

  SessionTemplateEnvironmentConfig({
    this.executionConfig,
    this.peripheralsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionConfigValue = executionConfig;
    if (executionConfigValue != null) {
      map['executionConfig'] = executionConfigValue.toMap();
    }
    final peripheralsConfigValue = peripheralsConfig;
    if (peripheralsConfigValue != null) {
      map['peripheralsConfig'] = peripheralsConfigValue.toMap();
    }
    return map;
  }

  factory SessionTemplateEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfig(
      executionConfig: map['executionConfig'] == null
          ? null
          : SessionTemplateEnvironmentConfigExecutionConfig.fromMap(
              (map['executionConfig'] as Map).cast<String, dynamic>()),
      peripheralsConfig: map['peripheralsConfig'] == null
          ? null
          : SessionTemplateEnvironmentConfigPeripheralsConfig.fromMap(
              (map['peripheralsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
