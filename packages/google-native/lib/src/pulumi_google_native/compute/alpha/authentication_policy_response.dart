// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'origin_authentication_method_response.dart';
import 'peer_authentication_method_response.dart';
import 'tls_context_response.dart';

/// [Deprecated] The authentication settings for the backend service. The authentication settings for the backend service.
class AuthenticationPolicyResponse {
  /// List of authentication methods that can be used for origin authentication. Similar to peers, these will be evaluated in order the first valid one will be used to set origin identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if origin authentication is not required.
  final List<OriginAuthenticationMethodResponse> origins;

  /// List of authentication methods that can be used for peer authentication. They will be evaluated in order the first valid one will be used to set peer identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if peer authentication is not required.
  final List<PeerAuthenticationMethodResponse> peers;

  /// Define whether peer or origin identity should be used for principal. Default value is USE_PEER. If peer (or origin) identity is not available, either because peer/origin authentication is not defined, or failed, principal will be left unset. In other words, binding rule does not affect the decision to accept or reject request. This field can be set to one of the following: USE_PEER: Principal will be set to the identity from peer authentication. USE_ORIGIN: Principal will be set to the identity from origin authentication.
  final String principalBinding;

  /// Configures the mechanism to obtain server-side security certificates and identity information.
  final TlsContextResponse serverTlsContext;

  AuthenticationPolicyResponse({
    required this.origins,
    required this.peers,
    required this.principalBinding,
    required this.serverTlsContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['origins'] = Input.encodeList<OriginAuthenticationMethodResponse,
        Map<String, dynamic>>(origins, (value) => value.toMap());
    map['peers'] = Input.encodeList<PeerAuthenticationMethodResponse,
        Map<String, dynamic>>(peers, (value) => value.toMap());
    map['principalBinding'] = principalBinding;
    map['serverTlsContext'] = serverTlsContext.toMap();
    return map;
  }

  factory AuthenticationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticationPolicyResponse(
      origins: Input.decodeList<OriginAuthenticationMethodResponse>(
          map['origins'],
          (value) => OriginAuthenticationMethodResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      peers: Input.decodeList<PeerAuthenticationMethodResponse>(
          map['peers'],
          (value) => PeerAuthenticationMethodResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      principalBinding: map['principalBinding'] as String,
      serverTlsContext: TlsContextResponse.fromMap(
          (map['serverTlsContext'] as Map).cast<String, dynamic>()),
    );
  }
}
