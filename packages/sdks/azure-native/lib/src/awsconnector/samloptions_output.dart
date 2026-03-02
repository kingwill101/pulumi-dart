// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'samlidp.dart';

/// Definition of SAMLOptionsOutput
class SAMLOptionsOutput {
  /// <p>True if SAML is enabled.</p>
  final pulumi.Input<bool>? enabled;
  /// <p>Describes the SAML identity provider's information.</p>
  final pulumi.Input<SAMLIdp>? idp;
  /// <p>The key used for matching the SAML roles attribute.</p>
  final pulumi.Input<String>? rolesKey;
  /// <p>The duration, in minutes, after which a user session becomes inactive.</p>
  final pulumi.Input<int>? sessionTimeoutMinutes;
  /// <p>The key used for matching the SAML subject attribute.</p>
  final pulumi.Input<String>? subjectKey;

  /// Creates a new [SAMLOptionsOutput].
  /// [enabled] <p>True if SAML is enabled.</p>
  /// [idp] <p>Describes the SAML identity provider's information.</p>
  /// [rolesKey] <p>The key used for matching the SAML roles attribute.</p>
  /// [sessionTimeoutMinutes] <p>The duration, in minutes, after which a user session becomes inactive.</p>
  /// [subjectKey] <p>The key used for matching the SAML subject attribute.</p>
  SAMLOptionsOutput({
    this.enabled,
    this.idp,
    this.rolesKey,
    this.sessionTimeoutMinutes,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'idp': ?pulumi.Input.mapOptionalInputValue<SAMLIdp, Map<String, dynamic>>(idp, (value) => value.toMap()),
      'rolesKey': ?rolesKey,
      'sessionTimeoutMinutes': ?sessionTimeoutMinutes,
      'subjectKey': ?subjectKey,
    };
  }

  factory SAMLOptionsOutput.fromMap(Map<String, dynamic> map) {
    return SAMLOptionsOutput(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      idp: map['idp'] == null ? null : (SAMLIdp.fromMap((map['idp'] as Map).cast<String, dynamic>())).input(),
      rolesKey: map['rolesKey'] == null ? null : (map['rolesKey'] as String).input(),
      sessionTimeoutMinutes: map['sessionTimeoutMinutes'] == null ? null : (map['sessionTimeoutMinutes'] as int).input(),
      subjectKey: map['subjectKey'] == null ? null : (map['subjectKey'] as String).input(),
    );
  }
}

