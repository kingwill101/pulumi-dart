// ignore_for_file: unused_element, unnecessary_cast

/// Identifies whether a field contains, or may contain, PII or sensitive data, and how to sanitize the field if it does. If a field's privacy type cannot be determined then it is sanitized (e.g., scrubbed). The specific sanitizer implementation is determined by run-time configuration and environment options (e.g., prod vs. qa). next_id: 5
class EnterpriseCrmLoggingGwsSanitizeOptionsResponse {
  /// If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.
  final bool isAlreadySanitized;

  /// To which type(s) of logs the sanitize options apply.
  final List<String> logType;
  final String privacy;
  final String sanitizeType;

  EnterpriseCrmLoggingGwsSanitizeOptionsResponse({
    required this.isAlreadySanitized,
    required this.logType,
    required this.privacy,
    required this.sanitizeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isAlreadySanitized'] = isAlreadySanitized;
    map['logType'] = logType;
    map['privacy'] = privacy;
    map['sanitizeType'] = sanitizeType;
    return map;
  }

  factory EnterpriseCrmLoggingGwsSanitizeOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsSanitizeOptionsResponse(
      isAlreadySanitized: map['isAlreadySanitized'] as bool,
      logType: (map['logType'] as List).cast<String>(),
      privacy: map['privacy'] as String,
      sanitizeType: map['sanitizeType'] as String,
    );
  }
}
