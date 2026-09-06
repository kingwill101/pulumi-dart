// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_principals.dart';

/// The configuration settings of the Azure Active Directory default authorization policy.
class DefaultAuthorizationPolicy {
  /// The configuration settings of the Azure Active Directory allowed applications.
  final pulumi.Input<List<String>?>? allowedApplications;
  /// The configuration settings of the Azure Active Directory allowed principals.
  final pulumi.Input<AllowedPrincipals?>? allowedPrincipals;

  /// Creates a new [DefaultAuthorizationPolicy].
  /// [allowedApplications] The configuration settings of the Azure Active Directory allowed applications.
  /// [allowedPrincipals] The configuration settings of the Azure Active Directory allowed principals.
  const DefaultAuthorizationPolicy({
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
      allowedApplications: (() { final guardedValue = map['allowedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedPrincipals: (() { final guardedValue = map['allowedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllowedPrincipals.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
