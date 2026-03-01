// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpnAttachmentHealthCheckConfig {
  /// Target IP.
  final String? dip;
  /// Whether health check is enabled:-`false`: not enabled. - `true`: enabled.
  final bool? enable;
  /// The health check retry interval, in seconds.
  final int? interval;
  /// Whether to revoke the published route when the health check fails
  final String? policy;
  /// Number of retries for health check.
  final int? retry;
  /// SOURCE IP.
  final String? sip;
  /// The negotiation status of Tunnel.
  final String? status;

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
      dip: map['dip'] == null ? null : map['dip'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      interval: map['interval'] == null ? null : map['interval'] as int,
      policy: map['policy'] == null ? null : map['policy'] as String,
      retry: map['retry'] == null ? null : map['retry'] as int,
      sip: map['sip'] == null ? null : map['sip'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

