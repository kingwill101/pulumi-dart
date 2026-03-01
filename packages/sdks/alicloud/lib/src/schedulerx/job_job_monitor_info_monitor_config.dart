// ignore_for_file: unused_element, unnecessary_cast


class JobJobMonitorInfoMonitorConfig {
  /// Enable failure alarm
  final bool? failEnable;
  /// Whether no available Machine alarm is on
  final bool? missWorkerEnable;
  /// Alarm sending form
  /// - sms: sms alarm
  /// - phone: phone alarm
  /// - mail: mail alarm
  /// - webhook:webhook alarm
  final String? sendChannel;
  /// Timeout threshold, unit s, default 7200.
  final int? timeout;
  /// Time-out alarm switch. The values are as follows:
  final bool? timeoutEnable;
  /// The trigger switch is terminated by timeout and is turned off by default.
  final bool? timeoutKillEnable;

  /// Creates a new [JobJobMonitorInfoMonitorConfig].
  /// [failEnable] Enable failure alarm
  /// [missWorkerEnable] Whether no available Machine alarm is on
  /// [sendChannel] Alarm sending form
  /// [timeout] Timeout threshold, unit s, default 7200.
  /// [timeoutEnable] Time-out alarm switch. The values are as follows:
  /// [timeoutKillEnable] The trigger switch is terminated by timeout and is turned off by default.
  JobJobMonitorInfoMonitorConfig({
    this.failEnable,
    this.missWorkerEnable,
    this.sendChannel,
    this.timeout,
    this.timeoutEnable,
    this.timeoutKillEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failEnable': ?failEnable,
      'missWorkerEnable': ?missWorkerEnable,
      'sendChannel': ?sendChannel,
      'timeout': ?timeout,
      'timeoutEnable': ?timeoutEnable,
      'timeoutKillEnable': ?timeoutKillEnable,
    };
  }

  factory JobJobMonitorInfoMonitorConfig.fromMap(Map<String, dynamic> map) {
    return JobJobMonitorInfoMonitorConfig(
      failEnable: map['failEnable'] == null ? null : map['failEnable'] as bool,
      missWorkerEnable: map['missWorkerEnable'] == null ? null : map['missWorkerEnable'] as bool,
      sendChannel: map['sendChannel'] == null ? null : map['sendChannel'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      timeoutEnable: map['timeoutEnable'] == null ? null : map['timeoutEnable'] as bool,
      timeoutKillEnable: map['timeoutKillEnable'] == null ? null : map['timeoutKillEnable'] as bool,
    );
  }
}

