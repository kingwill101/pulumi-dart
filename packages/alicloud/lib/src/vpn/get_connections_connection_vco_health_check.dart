// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionVcoHealthCheck {
  /// The destination ip address.
  final String? dip;
  /// The health check on status. Valid values: `true`, `false`.
  final String? enable;
  /// The time interval between health checks.
  final int? interval;
  /// The number of retries for health checks issued.
  final int? retry;
  /// The source ip address.
  final String? sip;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final String? status;

  /// Creates a new [GetConnectionsConnectionVcoHealthCheck].
  /// [dip] The destination ip address.
  /// [enable] The health check on status. Valid values: `true`, `false`.
  /// [interval] The time interval between health checks.
  /// [retry] The number of retries for health checks issued.
  /// [sip] The source ip address.
  /// [status] The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  GetConnectionsConnectionVcoHealthCheck({
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
      dip: map['dip'] == null ? null : map['dip'] as String,
      enable: map['enable'] == null ? null : map['enable'] as String,
      interval: map['interval'] == null ? null : map['interval'] as int,
      retry: map['retry'] == null ? null : map['retry'] as int,
      sip: map['sip'] == null ? null : map['sip'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

