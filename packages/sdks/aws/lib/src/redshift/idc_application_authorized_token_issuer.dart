// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdcApplicationAuthorizedTokenIssuer {
  /// List of audiences for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  final pulumi.Input<List<String>>? authorizedAudiencesLists;
  /// ARN for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  final pulumi.Input<String>? trustedTokenIssuerArn;

  /// Creates a new [IdcApplicationAuthorizedTokenIssuer].
  /// [authorizedAudiencesLists] List of audiences for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  /// [trustedTokenIssuerArn] ARN for the authorized token issuer for integrating Amazon Redshift with IDC Identity Center.
  const IdcApplicationAuthorizedTokenIssuer({
    this.authorizedAudiencesLists,
    this.trustedTokenIssuerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedAudiencesLists': ?authorizedAudiencesLists,
      'trustedTokenIssuerArn': ?trustedTokenIssuerArn,
    };
  }

  factory IdcApplicationAuthorizedTokenIssuer.fromMap(Map<String, dynamic> map) {
    return IdcApplicationAuthorizedTokenIssuer(
      authorizedAudiencesLists: (() { final guardedValue = map['authorizedAudiencesLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      trustedTokenIssuerArn: (() { final guardedValue = map['trustedTokenIssuerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

