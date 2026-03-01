// ignore_for_file: unused_element, unnecessary_cast


/// Logger settings for java workloads.
class LoggerSettingResponse {
  /// The specified logger's log level.
  final String level;
  /// Logger name.
  final String logger;

  /// Creates a new [LoggerSettingResponse].
  /// [level] The specified logger's log level.
  /// [logger] Logger name.
  LoggerSettingResponse({
    required this.level,
    required this.logger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'logger': logger,
    };
  }

  factory LoggerSettingResponse.fromMap(Map<String, dynamic> map) {
    return LoggerSettingResponse(
      level: map['level'] as String,
      logger: map['logger'] as String,
    );
  }
}

