// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_client_authentication_sasl.dart';
import 'cluster_client_authentication_tls.dart';

class ClusterClientAuthentication {
  /// Configuration block for specifying SASL client authentication. See client_authentication sasl Argument Reference below.
  final ClusterClientAuthenticationSasl? sasl;
  /// Configuration block for specifying TLS client authentication. See client_authentication tls Argument Reference below.
  final ClusterClientAuthenticationTls? tls;
  /// Enables unauthenticated access.
  final bool? unauthenticated;

  /// Creates a new [ClusterClientAuthentication].
  /// [sasl] Configuration block for specifying SASL client authentication. See client_authentication sasl Argument Reference below.
  /// [tls] Configuration block for specifying TLS client authentication. See client_authentication tls Argument Reference below.
  /// [unauthenticated] Enables unauthenticated access.
  ClusterClientAuthentication({
    this.sasl,
    this.tls,
    this.unauthenticated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasl': ?sasl == null ? null : sasl!.toMap(),
      'tls': ?tls == null ? null : tls!.toMap(),
      'unauthenticated': ?unauthenticated,
    };
  }

  factory ClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthentication(
      sasl: map['sasl'] == null ? null : ClusterClientAuthenticationSasl.fromMap((map['sasl'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : ClusterClientAuthenticationTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
      unauthenticated: map['unauthenticated'] == null ? null : map['unauthenticated'] as bool,
    );
  }
}

