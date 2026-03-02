// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_principals.dart';

/// The configuration settings of the Azure Active Directory default authorization policy.
class DefaultAuthorizationPolicy {
  /// The configuration settings of the Azure Active Directory allowed applications.
  final pulumi.Input<List<String>>? allowedApplications;
  /// The configuration settings of the Azure Active Directory allowed principals.
  final pulumi.Input<AllowedPrincipals>? allowedPrincipals;

  /// Creates a new [DefaultAuthorizationPolicy].
  /// [allowedApplications] The configuration settings of the Azure Active Directory allowed applications.
  /// [allowedPrincipals] The configuration settings of the Azure Active Directory allowed principals.
  DefaultAuthorizationPolicy({
    this.allowedApplications,
    this.allowedPrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications,
      'allowedPrincipals': ?pulumi.Input.mapOptionalInputValue<AllowedPrincipals, Map<String, dynamic>>(allowedPrincipals, (value) => value.toMap()),
    };
  }

  factory DefaultAuthorizationPolicy.fromMap(Map<String, dynamic> map) {
    return DefaultAuthorizationPolicy(
      allowedApplications: map['allowedApplications'] == null ? null : ((map['allowedApplications'] as List).cast<String>()).input(),
      allowedPrincipals: map['allowedPrincipals'] == null ? null : (AllowedPrincipals.fromMap((map['allowedPrincipals'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

