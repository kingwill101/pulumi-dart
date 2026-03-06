// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The X12 agreement security settings.
class X12SecuritySettings {
  /// The authorization qualifier.
  final pulumi.Input<String> authorizationQualifier;
  /// The authorization value.
  final pulumi.Input<String>? authorizationValue;
  /// The password value.
  final pulumi.Input<String>? passwordValue;
  /// The security qualifier.
  final pulumi.Input<String> securityQualifier;

  /// Creates a new [X12SecuritySettings].
  /// [authorizationQualifier] The authorization qualifier.
  /// [authorizationValue] The authorization value.
  /// [passwordValue] The password value.
  /// [securityQualifier] The security qualifier.
  const X12SecuritySettings({
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

  factory X12SecuritySettings.fromMap(Map<String, dynamic> map) {
    return X12SecuritySettings(
      authorizationQualifier: pulumi.Input.fromValue(map['authorizationQualifier'] as String),
      authorizationValue: (() { final guardedValue = map['authorizationValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordValue: (() { final guardedValue = map['passwordValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityQualifier: pulumi.Input.fromValue(map['securityQualifier'] as String),
    );
  }
}

