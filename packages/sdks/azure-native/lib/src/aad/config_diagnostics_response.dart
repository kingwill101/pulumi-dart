// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_diagnostics_validator_result_response.dart';

/// Configuration Diagnostics
class ConfigDiagnosticsResponse {
  /// Last domain configuration diagnostics DateTime
  final pulumi.Input<String>? lastExecuted;

  /// List of Configuration Diagnostics validator results.
  final pulumi.Input<List<ConfigDiagnosticsValidatorResultResponse>>?
  validatorResults;

  /// Creates a new [ConfigDiagnosticsResponse].
  /// [lastExecuted] Last domain configuration diagnostics DateTime
  /// [validatorResults] List of Configuration Diagnostics validator results.
  ConfigDiagnosticsResponse({this.lastExecuted, this.validatorResults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastExecuted': ?lastExecuted,
      'validatorResults':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConfigDiagnosticsValidatorResultResponse>,
            List<Map<String, dynamic>>
          >(
            validatorResults,
            (value) =>
                pulumi.Input.encodeList<
                  ConfigDiagnosticsValidatorResultResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ConfigDiagnosticsResponse.fromMap(Map<String, dynamic> map) {
    return ConfigDiagnosticsResponse(
      lastExecuted: (() {
        final guardedValue = map['lastExecuted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validatorResults: (() {
        final guardedValue = map['validatorResults'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConfigDiagnosticsValidatorResultResponse>(
            guardedValue,
            (value) => ConfigDiagnosticsValidatorResultResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
