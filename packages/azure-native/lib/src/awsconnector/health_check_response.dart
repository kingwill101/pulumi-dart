// ignore_for_file: unused_element, unnecessary_cast


/// Definition of HealthCheck
class HealthCheckResponse {
  /// A string array representing the command that the container runs to determine if it is healthy. The string array must start with ``CMD`` to run the command arguments directly, or ``CMD-SHELL`` to run the command with the container's default shell.   When you use the AWS Management Console JSON panel, the CLIlong, or the APIs, enclose the list of commands in double quotes and brackets.  ``[ 'CMD-SHELL', 'curl -f http://localhost/ || exit 1' ]``  You don't include the double quotes and brackets when you use the AWS Management Console.  ``CMD-SHELL, curl -f http://localhost/ || exit 1``  An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see ``HealthCheck`` in the [Create a container](https://docs.docker.com/reference/cli/docker/container/create/) section of the [Docker Remote API](https://docs.docker.com/engine/api/).
  final List<String>? command;
  /// The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
  final int? interval;
  /// The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3.
  final int? retries;
  /// The optional grace period to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You can specify between 0 and 300 seconds. By default, the ``startPeriod`` is off.  If a health check succeeds within the ``startPeriod``, then the container is considered healthy and any subsequent failures count toward the maximum number of retries.
  final int? startPeriod;
  /// The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5.
  final int? timeout;

  /// Creates a new [HealthCheckResponse].
  /// [command] A string array representing the command that the container runs to determine if it is healthy. The string array must start with ``CMD`` to run the command arguments directly, or ``CMD-SHELL`` to run the command with the container's default shell.   When you use the AWS Management Console JSON panel, the CLIlong, or the APIs, enclose the list of commands in double quotes and brackets.  ``[ 'CMD-SHELL', 'curl -f http://localhost/ || exit 1' ]``  You don't include the double quotes and brackets when you use the AWS Management Console.  ``CMD-SHELL, curl -f http://localhost/ || exit 1``  An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see ``HealthCheck`` in the [Create a container](https://docs.docker.com/reference/cli/docker/container/create/) section of the [Docker Remote API](https://docs.docker.com/engine/api/).
  /// [interval] The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.
  /// [retries] The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3.
  /// [startPeriod] The optional grace period to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You can specify between 0 and 300 seconds. By default, the ``startPeriod`` is off.  If a health check succeeds within the ``startPeriod``, then the container is considered healthy and any subsequent failures count toward the maximum number of retries.
  /// [timeout] The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5.
  HealthCheckResponse({
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

  factory HealthCheckResponse.fromMap(Map<String, dynamic> map) {
    return HealthCheckResponse(
      command: map['command'] == null ? null : (map['command'] as List).cast<String>(),
      interval: map['interval'] == null ? null : map['interval'] as int,
      retries: map['retries'] == null ? null : map['retries'] as int,
      startPeriod: map['startPeriod'] == null ? null : map['startPeriod'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

