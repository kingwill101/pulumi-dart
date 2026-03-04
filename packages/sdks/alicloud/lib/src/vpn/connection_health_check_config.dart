// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionHealthCheckConfig {
  /// the destination IP address configured for health checks.
  final pulumi.Input<String>? dip;

  /// specifies whether to enable health checks. Valid values: true and false. Default value: false.
  final pulumi.Input<bool>? enable;

  /// the time interval of health check retries. Unit: seconds. Default value: 3.
  final pulumi.Input<int>? interval;

  /// the maximum number of health check retries. Default value: 3.
  final pulumi.Input<int>? retry;

  /// the source IP address that is used for health checks.
  final pulumi.Input<String>? sip;

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
      dip: (() {
        final guardedValue = map['dip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      retry: (() {
        final guardedValue = map['retry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sip: (() {
        final guardedValue = map['sip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
