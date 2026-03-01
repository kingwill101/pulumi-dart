// ignore_for_file: unused_element, unnecessary_cast


class InstanceAlerts {
  /// The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  final int? cpu;
  /// The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  final int? io;
  /// The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  final int? networkIn;
  /// The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  final int? networkOut;
  /// The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  final int? transferQuota;

  /// Creates a new [InstanceAlerts].
  /// [cpu] The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  /// [io] The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  /// [networkIn] The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  /// [networkOut] The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  /// [transferQuota] The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  InstanceAlerts({
    this.cpu,
    this.io,
    this.networkIn,
    this.networkOut,
    this.transferQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'io': ?io,
      'networkIn': ?networkIn,
      'networkOut': ?networkOut,
      'transferQuota': ?transferQuota,
    };
  }

  factory InstanceAlerts.fromMap(Map<String, dynamic> map) {
    return InstanceAlerts(
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      io: map['io'] == null ? null : map['io'] as int,
      networkIn: map['networkIn'] == null ? null : map['networkIn'] as int,
      networkOut: map['networkOut'] == null ? null : map['networkOut'] as int,
      transferQuota: map['transferQuota'] == null ? null : map['transferQuota'] as int,
    );
  }
}

