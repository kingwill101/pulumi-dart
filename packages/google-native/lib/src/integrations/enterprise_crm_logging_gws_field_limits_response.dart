// ignore_for_file: unused_element, unnecessary_cast

/// Describes string and array limits when writing to logs. When a limit is exceeded the *shortener_type* describes how to shorten the field. next_id: 6
class EnterpriseCrmLoggingGwsFieldLimitsResponse {
  final String logAction;

  /// To which type(s) of logs the limits apply.
  final List<String> logType;

  /// maximum array size. If the array exceds this size, the field (list) is truncated.
  final int maxArraySize;

  /// maximum string length. If the field exceeds this amount the field is shortened.
  final int maxStringLength;
  final String shortenerType;

  /// Creates a new [EnterpriseCrmLoggingGwsFieldLimitsResponse].
  /// [logAction] Required.
  /// [logType] To which type(s) of logs the limits apply.
  /// [maxArraySize] maximum array size. If the array exceds this size, the field (list) is truncated.
  /// [maxStringLength] maximum string length. If the field exceeds this amount the field is shortened.
  /// [shortenerType] Required.
  EnterpriseCrmLoggingGwsFieldLimitsResponse({
    required this.logAction,
    required this.logType,
    required this.maxArraySize,
    required this.maxStringLength,
    required this.shortenerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAction': logAction,
      'logType': logType,
      'maxArraySize': maxArraySize,
      'maxStringLength': maxStringLength,
      'shortenerType': shortenerType,
    };
  }

  factory EnterpriseCrmLoggingGwsFieldLimitsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmLoggingGwsFieldLimitsResponse(
      logAction: map['logAction'] as String,
      logType: (map['logType'] as List).cast<String>(),
      maxArraySize: map['maxArraySize'] as int,
      maxStringLength: map['maxStringLength'] as int,
      shortenerType: map['shortenerType'] as String,
    );
  }
}
