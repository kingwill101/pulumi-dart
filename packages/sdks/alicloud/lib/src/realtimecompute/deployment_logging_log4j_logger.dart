// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentLoggingLog4jLogger {
  /// Log output level
  final pulumi.Input<String>? loggerLevel;

  /// Class name for log output
  final pulumi.Input<String>? loggerName;

  /// Creates a new [DeploymentLoggingLog4jLogger].
  /// [loggerLevel] Log output level
  /// [loggerName] Class name for log output
  DeploymentLoggingLog4jLogger({this.loggerLevel, this.loggerName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggerLevel': ?loggerLevel,
      'loggerName': ?loggerName,
    };
  }

  factory DeploymentLoggingLog4jLogger.fromMap(Map<String, dynamic> map) {
    return DeploymentLoggingLog4jLogger(
      loggerLevel: (() {
        final guardedValue = map['loggerLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loggerName: (() {
        final guardedValue = map['loggerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
