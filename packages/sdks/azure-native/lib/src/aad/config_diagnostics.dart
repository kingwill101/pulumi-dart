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
  ConfigDiagnostics({
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
      lastExecuted: map['lastExecuted'] == null ? null : (map['lastExecuted'] as String).input(),
      validatorResults: map['validatorResults'] == null ? null : (pulumi.Input.decodeList<ConfigDiagnosticsValidatorResult>(map['validatorResults'], (value) => ConfigDiagnosticsValidatorResult.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

