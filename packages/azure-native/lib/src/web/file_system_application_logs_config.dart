// ignore_for_file: unused_element, unnecessary_cast

import 'log_level.dart';

/// Application logs to file system configuration.
class FileSystemApplicationLogsConfig {
  /// Log level.
  final LogLevel? level;

  /// Creates a new [FileSystemApplicationLogsConfig].
  /// [level] Log level.
  FileSystemApplicationLogsConfig({
    this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level == null ? null : level!.value,
    };
  }

  factory FileSystemApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return FileSystemApplicationLogsConfig(
      level: map['level'] == null ? null : LogLevel.fromValue(map['level'] as String),
    );
  }
}

