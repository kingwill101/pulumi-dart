// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponseComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  LogConfigDataAccessOptionsResponseComputeV1({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logMode'] = logMode;
    return map;
  }

  factory LogConfigDataAccessOptionsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponseComputeV1(
      logMode: map['logMode'] as String,
    );
  }
}
