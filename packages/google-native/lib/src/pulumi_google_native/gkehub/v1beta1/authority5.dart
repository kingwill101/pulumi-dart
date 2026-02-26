// ignore_for_file: unused_element, unnecessary_cast

/// Authority encodes how Google will recognize identities from this Membership. See the workload identity documentation for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
class Authority5 {
  /// Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and be a valid URL with length <2000 characters. If set, then Google will allow valid OIDC tokens from this issuer to authenticate within the workload_identity_pool. OIDC discovery will be performed on this URI to validate tokens from the issuer. Clearing `issuer` disables Workload Identity. `issuer` cannot be directly modified; it must be cleared (and Workload Identity disabled) before using a new issuer (and re-enabling Workload Identity).
  final String? issuer;

  /// Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517). When this field is set, OIDC discovery will NOT be performed on `issuer`, and instead OIDC tokens will be validated using this field.
  final String? oidcJwks;

  Authority5({
    this.issuer,
    this.oidcJwks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final oidcJwksValue = oidcJwks;
    if (oidcJwksValue != null) {
      map['oidcJwks'] = oidcJwksValue;
    }
    return map;
  }

  factory Authority5.fromMap(Map<String, dynamic> map) {
    return Authority5(
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      oidcJwks: map['oidcJwks'] == null ? null : map['oidcJwks'] as String,
    );
  }
}
