// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ssl_vpn_client_certs_get_ssl_vpn_client_certs_args_doc}
/// Arguments for getSslVpnClientCerts.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ssl_vpn_client_certs_get_ssl_vpn_client_certs_args_doc}
class GetSslVpnClientCertsArgs {
  /// IDs of the SSL-VPN client certificates.
  final pulumi.Input<List<String>>? ids;
  /// A regex string of SSL-VPN client certificate name.
  final pulumi.Input<String>? nameRegex;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;
  /// Use the SSL-VPN server ID as the search key.
  final pulumi.Input<String>? sslVpnServerId;

  /// Creates a new [GetSslVpnClientCertsArgs].
  /// [ids] IDs of the SSL-VPN client certificates.
  /// [nameRegex] A regex string of SSL-VPN client certificate name.
  /// [outputFile] Save the result to the file.
  /// [sslVpnServerId] Use the SSL-VPN server ID as the search key.
  const GetSslVpnClientCertsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.sslVpnServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'sslVpnServerId': ?sslVpnServerId,
    };
  }

  factory GetSslVpnClientCertsArgs.fromMap(Map<String, dynamic> map) {
    return GetSslVpnClientCertsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslVpnServerId: (() { final guardedValue = map['sslVpnServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

