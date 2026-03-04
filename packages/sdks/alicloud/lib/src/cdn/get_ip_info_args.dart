// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_ip_info_get_ip_info_args_doc}
/// Arguments for getIpInfo.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_ip_info_get_ip_info_args_doc}
class GetIpInfoArgs {
  /// Specify IP address.
  final pulumi.Input<String> ip;

  /// Creates a new [GetIpInfoArgs].
  /// [ip] Specify IP address.
  GetIpInfoArgs({required this.ip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ip': ip};
  }

  factory GetIpInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetIpInfoArgs(ip: pulumi.Input.fromValue(map['ip'] as String));
  }
}
