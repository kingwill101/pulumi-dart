// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Logger settings for java workloads.
class LoggerSettingResponse {
  /// The specified logger's log level.
  final pulumi.Input<String> level;

  /// Logger name.
  final pulumi.Input<String> logger;

  /// Creates a new [LoggerSettingResponse].
  /// [level] The specified logger's log level.
  /// [logger] Logger name.
  LoggerSettingResponse({required this.level, required this.logger});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'level': level, 'logger': logger};
  }

  factory LoggerSettingResponse.fromMap(Map<String, dynamic> map) {
    return LoggerSettingResponse(
      level: pulumi.Input.fromValue(map['level'] as String),
      logger: pulumi.Input.fromValue(map['logger'] as String),
    );
  }
}
