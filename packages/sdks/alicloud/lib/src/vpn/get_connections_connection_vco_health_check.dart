// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionVcoHealthCheck {
  /// The destination ip address.
  final pulumi.Input<String>? dip;
  /// The health check on status. Valid values: `true`, `false`.
  final pulumi.Input<String>? enable;
  /// The time interval between health checks.
  final pulumi.Input<int>? interval;
  /// The number of retries for health checks issued.
  final pulumi.Input<int>? retry;
  /// The source ip address.
  final pulumi.Input<String>? sip;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetConnectionsConnectionVcoHealthCheck].
  /// [dip] The destination ip address.
  /// [enable] The health check on status. Valid values: `true`, `false`.
  /// [interval] The time interval between health checks.
  /// [retry] The number of retries for health checks issued.
  /// [sip] The source ip address.
  /// [status] The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  const GetConnectionsConnectionVcoHealthCheck({
    this.dip,
    this.enable,
    this.interval,
    this.retry,
    this.sip,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dip': ?dip,
      'enable': ?enable,
      'interval': ?interval,
      'retry': ?retry,
      'sip': ?sip,
      'status': ?status,
    };
  }

  factory GetConnectionsConnectionVcoHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionVcoHealthCheck(
      dip: (() { final guardedValue = map['dip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retry: (() { final guardedValue = map['retry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sip: (() { final guardedValue = map['sip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

