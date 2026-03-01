// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result_response.dart';

/// Configuration Diagnostics
class ConfigDiagnosticsResponse {
  /// Last domain configuration diagnostics DateTime
  final String? lastExecuted;
  /// List of Configuration Diagnostics validator results.
  final List<ConfigDiagnosticsValidatorResultResponse>? validatorResults;

  /// Creates a new [ConfigDiagnosticsResponse].
  /// [lastExecuted] Last domain configuration diagnostics DateTime
  /// [validatorResults] List of Configuration Diagnostics validator results.
  ConfigDiagnosticsResponse({
    this.lastExecuted,
    this.validatorResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastExecuted': ?lastExecuted,
      'validatorResults': ?validatorResults == null ? null : pulumi.Input.encodeList<ConfigDiagnosticsValidatorResultResponse, Map<String, dynamic>>(validatorResults!, (value) => value.toMap()),
    };
  }

  factory ConfigDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsResponse(
      lastExecuted: map['lastExecuted'] == null ? null : map['lastExecuted'] as String,
      validatorResults: map['validatorResults'] == null ? null : pulumi.Input.decodeList<ConfigDiagnosticsValidatorResultResponse>(map['validatorResults'], (value) => ConfigDiagnosticsValidatorResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

