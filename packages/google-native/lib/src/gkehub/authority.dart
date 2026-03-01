// ignore_for_file: unused_element, unnecessary_cast

/// Authority encodes how Google will recognize identities from this Membership. See the workload identity documentation for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class Authority {
  /// Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length <2000 characters, it must use `location` rather than `zone` for GKE clusters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  final String? issuer;

  /// Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  final String? oidcJwks;

  /// Creates a new [Authority].
  /// [issuer] Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length <2000 characters, it must use `location` rather than `zone` for GKE clusters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  /// [oidcJwks] Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  Authority({this.issuer, this.oidcJwks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'issuer': ?issuer, 'oidcJwks': ?oidcJwks};
  }

  factory Authority.fromMap(Map<String, dynamic> map) {
    return Authority(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      oidcJwks: map['oidcJwks'] == null ? null : map['oidcJwks'] as String,
    );
  }
}
