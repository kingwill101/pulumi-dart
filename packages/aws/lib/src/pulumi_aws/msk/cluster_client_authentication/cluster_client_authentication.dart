// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_client_authentication_sasl/cluster_client_authentication_sasl.dart';
import '../cluster_client_authentication_tls/cluster_client_authentication_tls.dart';

class ClusterClientAuthentication {
  /// Configuration block for specifying SASL client authentication. See<span pulumi-lang-nodejs=" clientAuthentication " pulumi-lang-dotnet=" ClientAuthentication " pulumi-lang-go=" clientAuthentication " pulumi-lang-python=" client_authentication " pulumi-lang-yaml=" clientAuthentication " pulumi-lang-java=" clientAuthentication "> client_authentication </span>sasl Argument Reference below.
  final ClusterClientAuthenticationSasl? sasl;

  /// Configuration block for specifying TLS client authentication. See<span pulumi-lang-nodejs=" clientAuthentication " pulumi-lang-dotnet=" ClientAuthentication " pulumi-lang-go=" clientAuthentication " pulumi-lang-python=" client_authentication " pulumi-lang-yaml=" clientAuthentication " pulumi-lang-java=" clientAuthentication "> client_authentication </span>tls Argument Reference below.
  final ClusterClientAuthenticationTls? tls;

  /// Enables unauthenticated access.
  final bool? unauthenticated;

  ClusterClientAuthentication({
    this.sasl,
    this.tls,
    this.unauthenticated,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final saslValue = sasl;
    if (saslValue != null) {
      map['sasl'] = saslValue.toMap();
    }
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue.toMap();
    }
    final unauthenticatedValue = unauthenticated;
    if (unauthenticatedValue != null) {
      map['unauthenticated'] = unauthenticatedValue;
    }
    return map;
  }

  factory ClusterClientAuthentication.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthentication(
      sasl: map['sasl'] == null
          ? null
          : ClusterClientAuthenticationSasl.fromMap(
              (map['sasl'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null
          ? null
          : ClusterClientAuthenticationTls.fromMap(
              (map['tls'] as Map).cast<String, dynamic>()),
      unauthenticated: map['unauthenticated'] == null
          ? null
          : map['unauthenticated'] as bool,
    );
  }
}
