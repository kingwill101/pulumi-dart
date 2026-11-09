// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_service_config_telemetry_config.dart';
import 'function_revision_service_config_telemetry_config_actual.dart';

class FunctionRevisionServiceConfig {
  /// ARN of the Lambda network connector that gives the web function access to resources in a VPC. Specify the fully qualified ARN, including the connector version, which pins the revision to that version. Supported only with `HomeRegion` endpoints.
  final pulumi.Input<String?>? egressNetworkConnectorArn;
  /// Map of environment variable key-value pairs available to the web function at runtime.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// ARN of the IAM role that the web function assumes when it runs. The trust principal must be `lambda.amazonaws.com`.
  final pulumi.Input<String> executionRoleArn;
  /// Maximum number of concurrent requests handled per execution environment. The default is `64`.
  final pulumi.Input<int?>? maxConcurrencyPerEnvironment;
  /// Telemetry configuration for the web function. See `service_config.telemetry_config` Block below.
  final pulumi.Input<FunctionRevisionServiceConfigTelemetryConfig?>? telemetryConfig;
  /// Actual deployed telemetry configuration.
  final pulumi.Input<List<FunctionRevisionServiceConfigTelemetryConfigActual>?>? telemetryConfigActuals;
  /// Amount of time (in seconds) that Lambda allows the web function to run before stopping it. The default is `30`.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [FunctionRevisionServiceConfig].
  /// [egressNetworkConnectorArn] ARN of the Lambda network connector that gives the web function access to resources in a VPC. Specify the fully qualified ARN, including the connector version, which pins the revision to that version. Supported only with `HomeRegion` endpoints.
  /// [environmentVariables] Map of environment variable key-value pairs available to the web function at runtime.
  /// [executionRoleArn] ARN of the IAM role that the web function assumes when it runs. The trust principal must be `lambda.amazonaws.com`.
  /// [maxConcurrencyPerEnvironment] Maximum number of concurrent requests handled per execution environment. The default is `64`.
  /// [telemetryConfig] Telemetry configuration for the web function. See `service_config.telemetry_config` Block below.
  /// [telemetryConfigActuals] Actual deployed telemetry configuration.
  /// [timeoutSeconds] Amount of time (in seconds) that Lambda allows the web function to run before stopping it. The default is `30`.
  const FunctionRevisionServiceConfig({
    this.egressNetworkConnectorArn,
    this.environmentVariables,
    required this.executionRoleArn,
    this.maxConcurrencyPerEnvironment,
    this.telemetryConfig,
    this.telemetryConfigActuals,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressNetworkConnectorArn': ?egressNetworkConnectorArn,
      'environmentVariables': ?environmentVariables,
      'executionRoleArn': executionRoleArn,
      'maxConcurrencyPerEnvironment': ?maxConcurrencyPerEnvironment,
      'telemetryConfig': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionServiceConfigTelemetryConfig, Map<String, dynamic>>(telemetryConfig, (value) => value.toMap()),
      'telemetryConfigActuals': ?pulumi.Input.mapOptionalInputValue<List<FunctionRevisionServiceConfigTelemetryConfigActual>, List<Map<String, dynamic>>>(telemetryConfigActuals, (value) => pulumi.Input.encodeList<FunctionRevisionServiceConfigTelemetryConfigActual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory FunctionRevisionServiceConfig.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionServiceConfig(
      egressNetworkConnectorArn: (() { final guardedValue = map['egressNetworkConnectorArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      maxConcurrencyPerEnvironment: (() { final guardedValue = map['maxConcurrencyPerEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      telemetryConfig: (() { final guardedValue = map['telemetryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionServiceConfigTelemetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      telemetryConfigActuals: (() { final guardedValue = map['telemetryConfigActuals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionRevisionServiceConfigTelemetryConfigActual>(guardedValue, (value) => FunctionRevisionServiceConfigTelemetryConfigActual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
