// ignore_for_file: unused_element, unnecessary_cast

/// This is deprecated and has no effect. Do not use.
class LogConfigDataAccessOptionsResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final String logMode;

  LogConfigDataAccessOptionsResponse3({
    required this.logMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logMode'] = logMode;
    return map;
  }

  factory LogConfigDataAccessOptionsResponse3.fromMap(
      Map<String, dynamic> map) {
    return LogConfigDataAccessOptionsResponse3(
      logMode: map['logMode'] as String,
    );
  }
}
