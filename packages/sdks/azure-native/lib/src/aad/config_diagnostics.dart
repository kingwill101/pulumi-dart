// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result.dart';

/// Configuration Diagnostics
class ConfigDiagnostics {
  /// Last domain configuration diagnostics DateTime
  final pulumi.Input<String>? lastExecuted;
  /// List of Configuration Diagnostics validator results.
  final pulumi.Input<List<ConfigDiagnosticsValidatorResult>>? validatorResults;

  /// Creates a new [ConfigDiagnostics].
  /// [lastExecuted] Last domain configuration diagnostics DateTime
  /// [validatorResults] List of Configuration Diagnostics validator results.
  const ConfigDiagnostics({
    this.lastExecuted,
    this.validatorResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastExecuted': ?lastExecuted,
      'validatorResults': ?pulumi.Input.mapOptionalInputValue<List<ConfigDiagnosticsValidatorResult>, List<Map<String, dynamic>>>(validatorResults, (value) => pulumi.Input.encodeList<ConfigDiagnosticsValidatorResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigDiagnostics.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnostics(
      lastExecuted: (() { final guardedValue = map['lastExecuted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatorResults: (() { final guardedValue = map['validatorResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigDiagnosticsValidatorResult>(guardedValue, (value) => ConfigDiagnosticsValidatorResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

