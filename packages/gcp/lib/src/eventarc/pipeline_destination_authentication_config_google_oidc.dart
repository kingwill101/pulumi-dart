// ignore_for_file: unused_element, unnecessary_cast

class PipelineDestinationAuthenticationConfigGoogleOidc {
  /// Audience to be used to generate the OIDC Token. The audience claim
  /// identifies the recipient that the JWT is intended for. If
  /// unspecified, the destination URI will be used.
  final String? audience;

  /// Service account email used to generate the OIDC Token.
  /// The principal who calls this API must have
  /// iam.serviceAccounts.actAs permission in the service account. See
  /// https://cloud.google.com/iam/docs/understanding-service-accounts
  /// for more information. Eventarc service agents must have
  /// roles/roles/iam.serviceAccountTokenCreator role to allow the
  /// Pipeline to create OpenID tokens for authenticated requests.
  final String serviceAccount;

  /// Creates a new [PipelineDestinationAuthenticationConfigGoogleOidc].
  /// [audience] Audience to be used to generate the OIDC Token. The audience claim
  /// [serviceAccount] Service account email used to generate the OIDC Token.
  PipelineDestinationAuthenticationConfigGoogleOidc({
    this.audience,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'serviceAccount': serviceAccount,
    };
  }

  factory PipelineDestinationAuthenticationConfigGoogleOidc.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipelineDestinationAuthenticationConfigGoogleOidc(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
