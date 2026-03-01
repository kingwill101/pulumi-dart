// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfNetTcp {
  /// The number of TCP connections established. The minimum value is 1, the maximum value is 16, and the default is 4.
  final int? connectTimes;
  /// The interval between TCP connections. The unit is milliseconds (ms), the minimum value is 200, the maximum value is 10000, and the default value is 200.
  final int? interval;
  /// The target URL.
  final String targetUrl;
  /// TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  final int? timeout;
  /// Whether to enable tracert. The default is true.
  final bool? tracertEnable;
  /// The maximum number of hops for tracert. The minimum value is 1, the maximum value is 128, and the default value is 20.
  final int? tracertNumMax;
  /// The time-out of tracert. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 60000.
  final int? tracertTimeout;

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
      connectTimes: map['connectTimes'] == null ? null : map['connectTimes'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      targetUrl: map['targetUrl'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      tracertEnable: map['tracertEnable'] == null ? null : map['tracertEnable'] as bool,
      tracertNumMax: map['tracertNumMax'] == null ? null : map['tracertNumMax'] as int,
      tracertTimeout: map['tracertTimeout'] == null ? null : map['tracertTimeout'] as int,
    );
  }
}

