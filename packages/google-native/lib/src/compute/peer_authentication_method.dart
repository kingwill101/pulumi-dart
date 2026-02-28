// ignore_for_file: unused_element, unnecessary_cast

import 'mutual_tls.dart';

/// [Deprecated] Configuration for the peer authentication method. Configuration for the peer authentication method.
class PeerAuthenticationMethod {
  /// Set if mTLS is used for peer authentication.
  final MutualTls? mtls;

  /// Creates a new [PeerAuthenticationMethod].
  /// [mtls] Set if mTLS is used for peer authentication.
  PeerAuthenticationMethod({
    this.mtls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mtlsValue = mtls;
    if (mtlsValue != null) {
      map['mtls'] = mtlsValue.toMap();
    }
    return map;
  }

  factory PeerAuthenticationMethod.fromMap(Map<String, dynamic> map) {
    return PeerAuthenticationMethod(
      mtls: map['mtls'] == null
          ? null
          : MutualTls.fromMap((map['mtls'] as Map).cast<String, dynamic>()),
    );
  }
}
