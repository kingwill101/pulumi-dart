// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOutboundWebIdentityFederation.
class GetOutboundWebIdentityFederationResult {
  /// A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  final String issuerIdentifier;

  /// Creates a new [GetOutboundWebIdentityFederationResult].
  /// [issuerIdentifier] A unique issuer URL for your AWS account that hosts the OpenID Connect (OIDC) discovery endpoints.
  const GetOutboundWebIdentityFederationResult({
    required this.issuerIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuerIdentifier': issuerIdentifier,
    };
  }

  factory GetOutboundWebIdentityFederationResult.fromMap(Map<String, dynamic> map) {
    return GetOutboundWebIdentityFederationResult(
      issuerIdentifier: map['issuerIdentifier'] as String,
    );
  }
}
