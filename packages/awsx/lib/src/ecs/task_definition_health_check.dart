// ignore_for_file: unused_element, unnecessary_cast

/// The health check command and associated configuration parameters for the container.
class TaskDefinitionHealthCheck {
  /// A string array representing the command that the container runs to determine if it is healthy.
  final List<String>? command;

  /// The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
  final int? interval;

  /// The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is three retries.
  final int? retries;

  /// The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You may specify between 0 and 300 seconds. The startPeriod is disabled by default.
  final int? startPeriod;

  /// The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5 seconds.
  final int? timeout;

  /// Creates a new [TaskDefinitionHealthCheck].
  /// [command] A string array representing the command that the container runs to determine if it is healthy.
  /// [interval] The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
  /// [retries] The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is three retries.
  /// [startPeriod] The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You may specify between 0 and 300 seconds. The startPeriod is disabled by default.
  /// [timeout] The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5 seconds.
  TaskDefinitionHealthCheck({
    this.command,
    this.interval,
    this.retries,
    this.startPeriod,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'command': ?command,
      'interval': ?interval,
      'retries': ?retries,
      'startPeriod': ?startPeriod,
      'timeout': ?timeout,
    };
  }

  factory TaskDefinitionHealthCheck.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionHealthCheck(
      command: map['command'] == null
          ? null
          : (map['command'] as List).cast<String>(),
      interval: map['interval'] == null ? null : map['interval'] as int,
      retries: map['retries'] == null ? null : map['retries'] as int,
      startPeriod: map['startPeriod'] == null
          ? null
          : map['startPeriod'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}
