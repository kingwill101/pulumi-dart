// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 agreement security settings.
class X12SecuritySettingsResponse {
  /// The authorization qualifier.
  final pulumi.Input<String> authorizationQualifier;
  /// The authorization value.
  final pulumi.Input<String>? authorizationValue;
  /// The password value.
  final pulumi.Input<String>? passwordValue;
  /// The security qualifier.
  final pulumi.Input<String> securityQualifier;

  /// Creates a new [X12SecuritySettingsResponse].
  /// [authorizationQualifier] The authorization qualifier.
  /// [authorizationValue] The authorization value.
  /// [passwordValue] The password value.
  /// [securityQualifier] The security qualifier.
  X12SecuritySettingsResponse({
    required this.authorizationQualifier,
    this.authorizationValue,
    this.passwordValue,
    required this.securityQualifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationQualifier': authorizationQualifier,
      'authorizationValue': ?authorizationValue,
      'passwordValue': ?passwordValue,
      'securityQualifier': securityQualifier,
    };
  }

  factory X12SecuritySettingsResponse.fromMap(Map<String, dynamic> map) {
    return X12SecuritySettingsResponse(
      authorizationQualifier: (map['authorizationQualifier'] as String).input(),
      authorizationValue: map['authorizationValue'] == null ? null : (map['authorizationValue']! as String).input(),
      passwordValue: map['passwordValue'] == null ? null : (map['passwordValue']! as String).input(),
      securityQualifier: (map['securityQualifier'] as String).input(),
    );
  }
}

