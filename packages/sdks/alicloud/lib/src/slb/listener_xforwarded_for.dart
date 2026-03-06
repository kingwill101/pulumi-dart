// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerXForwardedFor {
  /// Whether to retrieve the client ip.
  final pulumi.Input<bool>? retriveClientIp;
  /// Indicates whether the SLB-ID header is used to retrieve the ID of the CLB instance. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? retriveSlbId;
  /// Indicates whether the SLB-IP header is used to retrieve the virtual IP address (VIP) requested by the client. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? retriveSlbIp;
  /// Specifies whether to use the X-Forwarded-Proto header to retrieve the listener protocol. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? retriveSlbProto;

  /// Creates a new [ListenerXForwardedFor].
  /// [retriveClientIp] Whether to retrieve the client ip.
  /// [retriveSlbId] Indicates whether the SLB-ID header is used to retrieve the ID of the CLB instance. Default value: `false`. Valid values: `true`, `false`.
  /// [retriveSlbIp] Indicates whether the SLB-IP header is used to retrieve the virtual IP address (VIP) requested by the client. Default value: `false`. Valid values: `true`, `false`.
  /// [retriveSlbProto] Specifies whether to use the X-Forwarded-Proto header to retrieve the listener protocol. Default value: `false`. Valid values: `true`, `false`.
  const ListenerXForwardedFor({
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
      retriveClientIp: (() { final guardedValue = map['retriveClientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retriveSlbId: (() { final guardedValue = map['retriveSlbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retriveSlbIp: (() { final guardedValue = map['retriveSlbIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      retriveSlbProto: (() { final guardedValue = map['retriveSlbProto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

