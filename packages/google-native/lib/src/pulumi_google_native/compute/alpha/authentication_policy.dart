// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authentication_policy_principal_binding.dart';
import 'origin_authentication_method.dart';
import 'peer_authentication_method.dart';
import 'tls_context.dart';

/// [Deprecated] The authentication settings for the backend service. The authentication settings for the backend service.
class AuthenticationPolicy {
  /// List of authentication methods that can be used for origin authentication. Similar to peers, these will be evaluated in order the first valid one will be used to set origin identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if origin authentication is not required.
  final List<OriginAuthenticationMethod>? origins;

  /// List of authentication methods that can be used for peer authentication. They will be evaluated in order the first valid one will be used to set peer identity. If none of these methods pass, the request will be rejected with authentication failed error (401). Leave the list empty if peer authentication is not required.
  final List<PeerAuthenticationMethod>? peers;

  /// Define whether peer or origin identity should be used for principal. Default value is USE_PEER. If peer (or origin) identity is not available, either because peer/origin authentication is not defined, or failed, principal will be left unset. In other words, binding rule does not affect the decision to accept or reject request. This field can be set to one of the following: USE_PEER: Principal will be set to the identity from peer authentication. USE_ORIGIN: Principal will be set to the identity from origin authentication.
  final AuthenticationPolicyPrincipalBinding? principalBinding;

  /// Configures the mechanism to obtain server-side security certificates and identity information.
  final TlsContext? serverTlsContext;

  AuthenticationPolicy({
    this.origins,
    this.peers,
    this.principalBinding,
    this.serverTlsContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final originsValue = origins;
    if (originsValue != null) {
      map['origins'] = pulumi.Input.encodeList<OriginAuthenticationMethod,
          Map<String, dynamic>>(originsValue, (value) => value.toMap());
    }
    final peersValue = peers;
    if (peersValue != null) {
      map['peers'] = pulumi.Input.encodeList<PeerAuthenticationMethod,
          Map<String, dynamic>>(peersValue, (value) => value.toMap());
    }
    final principalBindingValue = principalBinding;
    if (principalBindingValue != null) {
      map['principalBinding'] = principalBindingValue.value;
    }
    final serverTlsContextValue = serverTlsContext;
    if (serverTlsContextValue != null) {
      map['serverTlsContext'] = serverTlsContextValue.toMap();
    }
    return map;
  }

  factory AuthenticationPolicy.fromMap(Map<String, dynamic> map) {
    return AuthenticationPolicy(
      origins: map['origins'] == null
          ? null
          : pulumi.Input.decodeList<OriginAuthenticationMethod>(
              map['origins'],
              (value) => OriginAuthenticationMethod.fromMap(
                  (value as Map).cast<String, dynamic>())),
      peers: map['peers'] == null
          ? null
          : pulumi.Input.decodeList<PeerAuthenticationMethod>(
              map['peers'],
              (value) => PeerAuthenticationMethod.fromMap(
                  (value as Map).cast<String, dynamic>())),
      principalBinding: map['principalBinding'] == null
          ? null
          : AuthenticationPolicyPrincipalBinding.fromValue(
              map['principalBinding'] as String),
      serverTlsContext: map['serverTlsContext'] == null
          ? null
          : TlsContext.fromMap(
              (map['serverTlsContext'] as Map).cast<String, dynamic>()),
    );
  }
}
