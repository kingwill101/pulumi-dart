// ignore_for_file: unused_element, unnecessary_cast

import 'scan_config_error.dart';
import 'scan_run_error_trace_code.dart';

/// Output only. Defines an error trace message for a ScanRun.
class ScanRunErrorTrace {
  /// Indicates the error reason code.
  final ScanRunErrorTraceCode? code;

  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  final int? mostCommonHttpErrorCode;

  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  final ScanConfigError? scanConfigError;

  /// Creates a new [ScanRunErrorTrace].
  /// [code] Indicates the error reason code.
  /// [mostCommonHttpErrorCode] If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  /// [scanConfigError] If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  ScanRunErrorTrace({
    this.code,
    this.mostCommonHttpErrorCode,
    this.scanConfigError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code == null ? null : code!.value,
      'mostCommonHttpErrorCode': ?mostCommonHttpErrorCode,
      'scanConfigError': ?scanConfigError == null
          ? null
          : scanConfigError!.toMap(),
    };
  }

  factory ScanRunErrorTrace.fromMap(Map<String, dynamic> map) {
    return ScanRunErrorTrace(
      code: map['code'] == null
          ? null
          : ScanRunErrorTraceCode.fromValue(map['code'] as String),
      mostCommonHttpErrorCode: map['mostCommonHttpErrorCode'] == null
          ? null
          : map['mostCommonHttpErrorCode'] as int,
      scanConfigError: map['scanConfigError'] == null
          ? null
          : ScanConfigError.fromMap(
              (map['scanConfigError'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
