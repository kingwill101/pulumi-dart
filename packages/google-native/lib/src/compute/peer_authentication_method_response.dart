// ignore_for_file: unused_element, unnecessary_cast

import 'mutual_tls_response.dart';

/// [Deprecated] Configuration for the peer authentication method. Configuration for the peer authentication method.
class PeerAuthenticationMethodResponse {
  /// Set if mTLS is used for peer authentication.
  final MutualTlsResponse mtls;

  /// Creates a new [PeerAuthenticationMethodResponse].
  /// [mtls] Set if mTLS is used for peer authentication.
  PeerAuthenticationMethodResponse({
    required this.mtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': mtls.toMap(),
    };
  }

  factory PeerAuthenticationMethodResponse.fromMap(Map<String, dynamic> map) {
    return PeerAuthenticationMethodResponse(
      mtls: MutualTlsResponse.fromMap((map['mtls'] as Map).cast<String, dynamic>()),
    );
  }
}

