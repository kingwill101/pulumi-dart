// ignore_for_file: unused_element, unnecessary_cast

/// Output only. Defines a warning trace message for ScanRun. Warning traces provide customers with useful information that helps make the scanning process more effective.
class ScanRunWarningTraceResponse {
  /// Indicates the warning code.
  final String code;

  ScanRunWarningTraceResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory ScanRunWarningTraceResponse.fromMap(Map<String, dynamic> map) {
    return ScanRunWarningTraceResponse(
      code: map['code'] as String,
    );
  }
}
