// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobJobMonitorInfoMonitorConfig {
  /// Enable failure alarm
  final pulumi.Input<bool>? failEnable;
  /// Whether no available Machine alarm is on
  final pulumi.Input<bool>? missWorkerEnable;
  /// Alarm sending form
  /// - sms: sms alarm
  /// - phone: phone alarm
  /// - mail: mail alarm
  /// - webhook:webhook alarm
  final pulumi.Input<String>? sendChannel;
  /// Timeout threshold, unit s, default 7200.
  final pulumi.Input<int>? timeout;
  /// Time-out alarm switch. The values are as follows:
  final pulumi.Input<bool>? timeoutEnable;
  /// The trigger switch is terminated by timeout and is turned off by default.
  final pulumi.Input<bool>? timeoutKillEnable;

  /// Creates a new [JobJobMonitorInfoMonitorConfig].
  /// [failEnable] Enable failure alarm
  /// [missWorkerEnable] Whether no available Machine alarm is on
  /// [sendChannel] Alarm sending form
  /// [timeout] Timeout threshold, unit s, default 7200.
  /// [timeoutEnable] Time-out alarm switch. The values are as follows:
  /// [timeoutKillEnable] The trigger switch is terminated by timeout and is turned off by default.
  const JobJobMonitorInfoMonitorConfig({
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
      failEnable: (() { final guardedValue = map['failEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      missWorkerEnable: (() { final guardedValue = map['missWorkerEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendChannel: (() { final guardedValue = map['sendChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutEnable: (() { final guardedValue = map['timeoutEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeoutKillEnable: (() { final guardedValue = map['timeoutKillEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

