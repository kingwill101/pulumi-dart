// ignore_for_file: unused_element, unnecessary_cast

import 'scan_run_warning_trace_code.dart';

/// Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.
class ScanRunWarningTrace {
  /// Indicates the warning code.
  final ScanRunWarningTraceCode? code;

  /// Creates a new [ScanRunWarningTrace].
  /// [code] Indicates the warning code.
  ScanRunWarningTrace({
    this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue.value;
    }
    return map;
  }

  factory ScanRunWarningTrace.fromMap(Map<String, dynamic> map) {
    return ScanRunWarningTrace(
      code: map['code'] == null
          ? null
          : ScanRunWarningTraceCode.fromValue(map['code'] as String),
    );
  }
}
