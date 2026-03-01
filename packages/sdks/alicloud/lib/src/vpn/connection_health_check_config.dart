// ignore_for_file: unused_element, unnecessary_cast


class ConnectionHealthCheckConfig {
  /// the destination IP address configured for health checks.
  final String? dip;
  /// specifies whether to enable health checks. Valid values: true and false. Default value: false.
  final bool? enable;
  /// the time interval of health check retries. Unit: seconds. Default value: 3.
  final int? interval;
  /// the maximum number of health check retries. Default value: 3.
  final int? retry;
  /// the source IP address that is used for health checks.
  final String? sip;

  /// Creates a new [ConnectionHealthCheckConfig].
  /// [dip] the destination IP address configured for health checks.
  /// [enable] specifies whether to enable health checks. Valid values: true and false. Default value: false.
  /// [interval] the time interval of health check retries. Unit: seconds. Default value: 3.
  /// [retry] the maximum number of health check retries. Default value: 3.
  /// [sip] the source IP address that is used for health checks.
  ConnectionHealthCheckConfig({
    this.dip,
    this.enable,
    this.interval,
    this.retry,
    this.sip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dip': ?dip,
      'enable': ?enable,
      'interval': ?interval,
      'retry': ?retry,
      'sip': ?sip,
    };
  }

  factory ConnectionHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionHealthCheckConfig(
      dip: map['dip'] == null ? null : map['dip'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as int,
      retry: map['retry'] == null ? null : map['retry'] as int,
      sip: map['sip'] == null ? null : map['sip'] as String,
    );
  }
}

