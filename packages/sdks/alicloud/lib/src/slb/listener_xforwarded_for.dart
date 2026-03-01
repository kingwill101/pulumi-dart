// ignore_for_file: unused_element, unnecessary_cast


class ListenerXForwardedFor {
  /// Whether to retrieve the client ip.
  final bool? retriveClientIp;
  /// Indicates whether the SLB-ID header is used to retrieve the ID of the CLB instance. Default value: `false`. Valid values: `true`, `false`.
  final bool? retriveSlbId;
  /// Indicates whether the SLB-IP header is used to retrieve the virtual IP address (VIP) requested by the client. Default value: `false`. Valid values: `true`, `false`.
  final bool? retriveSlbIp;
  /// Specifies whether to use the X-Forwarded-Proto header to retrieve the listener protocol. Default value: `false`. Valid values: `true`, `false`.
  final bool? retriveSlbProto;

  /// Creates a new [ListenerXForwardedFor].
  /// [retriveClientIp] Whether to retrieve the client ip.
  /// [retriveSlbId] Indicates whether the SLB-ID header is used to retrieve the ID of the CLB instance. Default value: `false`. Valid values: `true`, `false`.
  /// [retriveSlbIp] Indicates whether the SLB-IP header is used to retrieve the virtual IP address (VIP) requested by the client. Default value: `false`. Valid values: `true`, `false`.
  /// [retriveSlbProto] Specifies whether to use the X-Forwarded-Proto header to retrieve the listener protocol. Default value: `false`. Valid values: `true`, `false`.
  ListenerXForwardedFor({
    this.retriveClientIp,
    this.retriveSlbId,
    this.retriveSlbIp,
    this.retriveSlbProto,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retriveClientIp': ?retriveClientIp,
      'retriveSlbId': ?retriveSlbId,
      'retriveSlbIp': ?retriveSlbIp,
      'retriveSlbProto': ?retriveSlbProto,
    };
  }

  factory ListenerXForwardedFor.fromMap(Map<String, dynamic> map) {
    return ListenerXForwardedFor(
      retriveClientIp: map['retriveClientIp'] == null ? null : map['retriveClientIp'] as bool,
      retriveSlbId: map['retriveSlbId'] == null ? null : map['retriveSlbId'] as bool,
      retriveSlbIp: map['retriveSlbIp'] == null ? null : map['retriveSlbIp'] as bool,
      retriveSlbProto: map['retriveSlbProto'] == null ? null : map['retriveSlbProto'] as bool,
    );
  }
}

