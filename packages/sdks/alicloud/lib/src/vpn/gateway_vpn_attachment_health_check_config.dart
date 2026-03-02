// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpnAttachmentHealthCheckConfig {
  /// Target IP.
  final pulumi.Input<String>? dip;
  /// Whether health check is enabled:-`false`: not enabled. - `true`: enabled.
  final pulumi.Input<bool>? enable;
  /// The health check retry interval, in seconds.
  final pulumi.Input<int>? interval;
  /// Whether to revoke the published route when the health check fails
  final pulumi.Input<String>? policy;
  /// Number of retries for health check.
  final pulumi.Input<int>? retry;
  /// SOURCE IP.
  final pulumi.Input<String>? sip;
  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayVpnAttachmentHealthCheckConfig].
  /// [dip] Target IP.
  /// [enable] Whether health check is enabled:-`false`: not enabled. - `true`: enabled.
  /// [interval] The health check retry interval, in seconds.
  /// [policy] Whether to revoke the published route when the health check fails
  /// [retry] Number of retries for health check.
  /// [sip] SOURCE IP.
  /// [status] The negotiation status of Tunnel.
  GatewayVpnAttachmentHealthCheckConfig({
    this.dip,
    this.enable,
    this.interval,
    this.policy,
    this.retry,
    this.sip,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dip': ?dip,
      'enable': ?enable,
      'interval': ?interval,
      'policy': ?policy,
      'retry': ?retry,
      'sip': ?sip,
      'status': ?status,
    };
  }

  factory GatewayVpnAttachmentHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentHealthCheckConfig(
      dip: map['dip'] == null ? null : (map['dip']! as String).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      retry: map['retry'] == null ? null : (map['retry']! as int).input(),
      sip: map['sip'] == null ? null : (map['sip']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

