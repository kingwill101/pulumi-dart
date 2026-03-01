// ignore_for_file: unused_element, unnecessary_cast


/// Logger settings for java workloads.
class LoggerSetting {
  /// The specified logger's log level.
  final String level;
  /// Logger name.
  final String logger;

  /// Creates a new [LoggerSetting].
  /// [level] The specified logger's log level.
  /// [logger] Logger name.
  LoggerSetting({
    required this.level,
    required this.logger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': level,
      'logger': logger,
    };
  }

  factory LoggerSetting.fromMap(Map<String, dynamic> map) {
    return LoggerSetting(
      level: map['level'] as String,
      logger: map['logger'] as String,
    );
  }
}

