// ignore_for_file: unused_element, unnecessary_cast

class IdcApplicationAuthorizedTokenIssuer {
  /// List of audiences for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  final List<String>? authorizedAudiencesLists;

  /// ARN for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  final String? trustedTokenIssuerArn;

  IdcApplicationAuthorizedTokenIssuer({
    this.authorizedAudiencesLists,
    this.trustedTokenIssuerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedAudiencesListsValue = authorizedAudiencesLists;
    if (authorizedAudiencesListsValue != null) {
      map['authorizedAudiencesLists'] = authorizedAudiencesListsValue;
    }
    final trustedTokenIssuerArnValue = trustedTokenIssuerArn;
    if (trustedTokenIssuerArnValue != null) {
      map['trustedTokenIssuerArn'] = trustedTokenIssuerArnValue;
    }
    return map;
  }

  factory IdcApplicationAuthorizedTokenIssuer.fromMap(
      Map<String, dynamic> map) {
    return IdcApplicationAuthorizedTokenIssuer(
      authorizedAudiencesLists: map['authorizedAudiencesLists'] == null
          ? null
          : (map['authorizedAudiencesLists'] as List).cast<String>(),
      trustedTokenIssuerArn: map['trustedTokenIssuerArn'] == null
          ? null
          : map['trustedTokenIssuerArn'] as String,
    );
  }
}
