// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_vpn_client_certs_cert.dart';

/// Result data returned by getSslVpnClientCerts.
class GetSslVpnClientCertsResult {
  /// A list of SSL-VPN client certificates. Each element contains the following attributes:
  final List<GetSslVpnClientCertsCert> certs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of SSL-VPN client cert IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of SSL-VPN client cert names.
  final List<String> names;
  final String? outputFile;
  /// ID of the SSL-VPN Server.
  final String? sslVpnServerId;

  /// Creates a new [GetSslVpnClientCertsResult].
  /// [certs] A list of SSL-VPN client certificates. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SSL-VPN client cert IDs.
  /// [nameRegex] Optional.
  /// [names] A list of SSL-VPN client cert names.
  /// [outputFile] Optional.
  /// [sslVpnServerId] ID of the SSL-VPN Server.
  const GetSslVpnClientCertsResult({
    required this.certs,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.sslVpnServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certs': pulumi.Input.encodeList<GetSslVpnClientCertsCert, Map<String, dynamic>>(certs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sslVpnServerId': ?sslVpnServerId,
    };
  }

  factory GetSslVpnClientCertsResult.fromMap(Map<String, dynamic> map) {
    return GetSslVpnClientCertsResult(
      certs: pulumi.Input.decodeList<GetSslVpnClientCertsCert>(map['certs']!, (value) => GetSslVpnClientCertsCert.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sslVpnServerId: (() { final guardedValue = map['sslVpnServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

