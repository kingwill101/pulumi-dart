// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_principals_response.dart';

/// The configuration settings of the Azure Active Directory default authorization policy.
class DefaultAuthorizationPolicyResponse {
  /// The configuration settings of the Azure Active Directory allowed applications.
  final pulumi.Input<List<String>>? allowedApplications;
  /// The configuration settings of the Azure Active Directory allowed principals.
  final pulumi.Input<AllowedPrincipalsResponse>? allowedPrincipals;

  /// Creates a new [DefaultAuthorizationPolicyResponse].
  /// [allowedApplications] The configuration settings of the Azure Active Directory allowed applications.
  /// [allowedPrincipals] The configuration settings of the Azure Active Directory allowed principals.
  const DefaultAuthorizationPolicyResponse({
    this.allowedApplications,
    this.allowedPrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications,
      'allowedPrincipals': ?pulumi.Input.mapOptionalInputValue<AllowedPrincipalsResponse, Map<String, dynamic>>(allowedPrincipals, (value) => value.toMap()),
    };
  }

  factory DefaultAuthorizationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DefaultAuthorizationPolicyResponse(
      allowedApplications: (() { final guardedValue = map['allowedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedPrincipals: (() { final guardedValue = map['allowedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllowedPrincipalsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

