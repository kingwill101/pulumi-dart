// ignore_for_file: unused_element, unnecessary_cast


class FastTcpAppMonitor {
  /// Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  final int? interval;

  /// Creates a new [FastTcpAppMonitor].
  /// [interval] Set the time between health checks,in seconds for FAST-Generated Pool Monitor.
  FastTcpAppMonitor({
    this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
    };
  }

  factory FastTcpAppMonitor.fromMap(Map<String, dynamic> map) {
    return FastTcpAppMonitor(
      interval: map['interval'] == null ? null : map['interval'] as int,
    );
  }
}

