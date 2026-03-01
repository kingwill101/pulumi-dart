// ignore_for_file: unused_element, unnecessary_cast

import 'samlidp_response.dart';

/// Definition of SAMLOptionsOutput
class SAMLOptionsOutputResponse {
  /// <p>True if SAML is enabled.</p>
  final bool? enabled;
  /// <p>Describes the SAML identity provider's information.</p>
  final SAMLIdpResponse? idp;
  /// <p>The key used for matching the SAML roles attribute.</p>
  final String? rolesKey;
  /// <p>The duration, in minutes, after which a user session becomes inactive.</p>
  final int? sessionTimeoutMinutes;
  /// <p>The key used for matching the SAML subject attribute.</p>
  final String? subjectKey;

  /// Creates a new [SAMLOptionsOutputResponse].
  /// [enabled] <p>True if SAML is enabled.</p>
  /// [idp] <p>Describes the SAML identity provider's information.</p>
  /// [rolesKey] <p>The key used for matching the SAML roles attribute.</p>
  /// [sessionTimeoutMinutes] <p>The duration, in minutes, after which a user session becomes inactive.</p>
  /// [subjectKey] <p>The key used for matching the SAML subject attribute.</p>
  SAMLOptionsOutputResponse({
    this.enabled,
    this.idp,
    this.rolesKey,
    this.sessionTimeoutMinutes,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'idp': ?idp == null ? null : idp!.toMap(),
      'rolesKey': ?rolesKey,
      'sessionTimeoutMinutes': ?sessionTimeoutMinutes,
      'subjectKey': ?subjectKey,
    };
  }

  factory SAMLOptionsOutputResponse.fromMap(Map<String, dynamic> map) {
    return SAMLOptionsOutputResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idp: map['idp'] == null ? null : SAMLIdpResponse.fromMap((map['idp'] as Map).cast<String, dynamic>()),
      rolesKey: map['rolesKey'] == null ? null : map['rolesKey'] as String,
      sessionTimeoutMinutes: map['sessionTimeoutMinutes'] == null ? null : map['sessionTimeoutMinutes'] as int,
      subjectKey: map['subjectKey'] == null ? null : map['subjectKey'] as String,
    );
  }
}

