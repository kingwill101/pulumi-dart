// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfNetTcp {
  /// The number of TCP connections established. The minimum value is 1, the maximum value is 16, and the default is 4.
  final pulumi.Input<int>? connectTimes;
  /// The interval between TCP connections. The unit is milliseconds (ms), the minimum value is 200, the maximum value is 10000, and the default value is 200.
  final pulumi.Input<int>? interval;
  /// The target URL.
  final pulumi.Input<String> targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final pulumi.Input<int>? timeout;
  /// Whether to enable tracert. The default is true.
  final pulumi.Input<bool>? tracertEnable;
  /// The maximum number of hops for tracert. The minimum value is 1, the maximum value is 128, and the default value is 20.
  final pulumi.Input<int>? tracertNumMax;
  /// The time-out of tracert. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 60000.
  final pulumi.Input<int>? tracertTimeout;

  /// Creates a new [SyntheticTaskMonitorConfNetTcp].
  /// [connectTimes] The number of TCP connections established. The minimum value is 1, the maximum value is 16, and the default is 4.
  /// [interval] The interval between TCP connections. The unit is milliseconds (ms), the minimum value is 200, the maximum value is 10000, and the default value is 200.
  /// [targetUrl] The target URL.
  /// [timeout] TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  /// [tracertEnable] Whether to enable tracert. The default is true.
  /// [tracertNumMax] The maximum number of hops for tracert. The minimum value is 1, the maximum value is 128, and the default value is 20.
  /// [tracertTimeout] The time-out of tracert. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 60000.
  SyntheticTaskMonitorConfNetTcp({
    this.connectTimes,
    this.interval,
    required this.targetUrl,
    this.timeout,
    this.tracertEnable,
    this.tracertNumMax,
    this.tracertTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimes': ?connectTimes,
      'interval': ?interval,
      'targetUrl': targetUrl,
      'timeout': ?timeout,
      'tracertEnable': ?tracertEnable,
      'tracertNumMax': ?tracertNumMax,
      'tracertTimeout': ?tracertTimeout,
    };
  }

  factory SyntheticTaskMonitorConfNetTcp.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfNetTcp(
      connectTimes: (() { final guardedValue = map['connectTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tracertEnable: (() { final guardedValue = map['tracertEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tracertNumMax: (() { final guardedValue = map['tracertNumMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tracertTimeout: (() { final guardedValue = map['tracertTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

