// ignore_for_file: unused_element, unnecessary_cast

import 'scan_config_error_response.dart';

/// Output only. Defines an error trace message for a ScanRun.
class ScanRunErrorTraceResponse {
  /// Indicates the error reason code.
  final String code;

  /// If the scan encounters TOO_MANY_HTTP_ERRORS, this field indicates the most common HTTP error code, if such is available. For example, if this code is 404, the scan has encountered too many NOT_FOUND responses.
  final int mostCommonHttpErrorCode;

  /// If the scan encounters SCAN_CONFIG_ISSUE error, this field has the error message encountered during scan configuration validation that is performed before each scan run.
  final ScanConfigErrorResponse scanConfigError;

  ScanRunErrorTraceResponse({
    required this.code,
    required this.mostCommonHttpErrorCode,
    required this.scanConfigError,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['mostCommonHttpErrorCode'] = mostCommonHttpErrorCode;
    map['scanConfigError'] = scanConfigError.toMap();
    return map;
  }

  factory ScanRunErrorTraceResponse.fromMap(Map<String, dynamic> map) {
    return ScanRunErrorTraceResponse(
      code: map['code'] as String,
      mostCommonHttpErrorCode: map['mostCommonHttpErrorCode'] as int,
      scanConfigError: ScanConfigErrorResponse.fromMap(
          (map['scanConfigError'] as Map).cast<String, dynamic>()),
    );
  }
}
