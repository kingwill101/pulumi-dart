// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfNetIcmp {
  /// The interval between TCP connections. The unit is milliseconds (ms), the minimum value is 200, the maximum value is 10000, and the default value is 200.
  final int? interval;
  /// Number of ICMP(Ping) packets sent. The minimum value is 1, the maximum value is 50, and the default is 4.
  final int? packageNum;
  /// The size of the sent ICMP(Ping) packet. The unit is byte. The ICMP(PING) packet size is limited to 32, 64, 128, 256, 512, 1024, 1080, and 1450.
  final int? packageSize;
  /// Whether to split ICMP(Ping) packets. The default is true.
  final bool? splitPackage;
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

  /// Creates a new [SyntheticTaskMonitorConfNetIcmp].
  /// [interval] The interval between TCP connections. The unit is milliseconds (ms), the minimum value is 200, the maximum value is 10000, and the default value is 200.
  /// [packageNum] Number of ICMP(Ping) packets sent. The minimum value is 1, the maximum value is 50, and the default is 4.
  /// [packageSize] The size of the sent ICMP(Ping) packet. The unit is byte. The ICMP(PING) packet size is limited to 32, 64, 128, 256, 512, 1024, 1080, and 1450.
  /// [splitPackage] Whether to split ICMP(Ping) packets. The default is true.
  /// [targetUrl] The target URL.
  /// [timeout] TCP dial test timeout. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 20000.
  /// [tracertEnable] Whether to enable tracert. The default is true.
  /// [tracertNumMax] The maximum number of hops for tracert. The minimum value is 1, the maximum value is 128, and the default value is 20.
  /// [tracertTimeout] The time-out of tracert. The unit is milliseconds (ms), the minimum value is 1000, the maximum value is 300000, and the default value is 60000.
  SyntheticTaskMonitorConfNetIcmp({
    this.interval,
    this.packageNum,
    this.packageSize,
    this.splitPackage,
    required this.targetUrl,
    this.timeout,
    this.tracertEnable,
    this.tracertNumMax,
    this.tracertTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'packageNum': ?packageNum,
      'packageSize': ?packageSize,
      'splitPackage': ?splitPackage,
      'targetUrl': targetUrl,
      'timeout': ?timeout,
      'tracertEnable': ?tracertEnable,
      'tracertNumMax': ?tracertNumMax,
      'tracertTimeout': ?tracertTimeout,
    };
  }

  factory SyntheticTaskMonitorConfNetIcmp.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfNetIcmp(
      interval: map['interval'] == null ? null : map['interval'] as int,
      packageNum: map['packageNum'] == null ? null : map['packageNum'] as int,
      packageSize: map['packageSize'] == null ? null : map['packageSize'] as int,
      splitPackage: map['splitPackage'] == null ? null : map['splitPackage'] as bool,
      targetUrl: map['targetUrl'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      tracertEnable: map['tracertEnable'] == null ? null : map['tracertEnable'] as bool,
      tracertNumMax: map['tracertNumMax'] == null ? null : map['tracertNumMax'] as int,
      tracertTimeout: map['tracertTimeout'] == null ? null : map['tracertTimeout'] as int,
    );
  }
}

