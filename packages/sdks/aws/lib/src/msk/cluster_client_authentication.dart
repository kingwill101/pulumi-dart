// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_client_authentication_sasl.dart';
import 'cluster_client_authentication_tls.dart';

class ClusterClientAuthentication {
  /// Configuration block for specifying SASL client authentication. See client_authentication sasl Argument Reference below.
  final pulumi.Input<ClusterClientAuthenticationSasl>? sasl;
  /// Configuration block for specifying TLS client authentication. See client_authentication tls Argument Reference below.
  final pulumi.Input<ClusterClientAuthenticationTls>? tls;
  /// Enables unauthenticated access.
  final pulumi.Input<bool>? unauthenticated;

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
      'sasl': ?pulumi.Input.mapOptionalInputValue<ClusterClientAuthenticationSasl, Map<String, dynamic>>(sasl, (value) => value.toMap()),
      'tls': ?pulumi.Input.mapOptionalInputValue<ClusterClientAuthenticationTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
      'unauthenticated': ?unauthenticated,
    };
  }

  factory ClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthentication(
      sasl: map['sasl'] == null ? null : (ClusterClientAuthenticationSasl.fromMap((map['sasl'] as Map).cast<String, dynamic>())).input(),
      tls: map['tls'] == null ? null : (ClusterClientAuthenticationTls.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
      unauthenticated: map['unauthenticated'] == null ? null : (map['unauthenticated'] as bool).input(),
    );
  }
}

