// ignore_for_file: unused_element, unnecessary_cast

import 'domain_saml_options_saml_options_idp.dart';

class DomainSamlOptionsSamlOptions {
  /// Whether SAML authentication is enabled.
  final bool? enabled;

  /// Information from your identity provider.
  final DomainSamlOptionsSamlOptionsIdp? idp;

  /// This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final String? masterBackendRole;

  /// This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final String? masterUserName;

  /// Element of the SAML assertion to use for backend roles. Default is roles.
  final String? rolesKey;

  /// Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
  final int? sessionTimeoutMinutes;

  /// Element of the SAML assertion to use for username. Default is NameID.
  final String? subjectKey;

  /// Creates a new [DomainSamlOptionsSamlOptions].
  /// [enabled] Whether SAML authentication is enabled.
  /// [idp] Information from your identity provider.
  /// [masterBackendRole] This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  /// [masterUserName] This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  /// [rolesKey] Element of the SAML assertion to use for backend roles. Default is roles.
  /// [sessionTimeoutMinutes] Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
  /// [subjectKey] Element of the SAML assertion to use for username. Default is NameID.
  DomainSamlOptionsSamlOptions({
    this.enabled,
    this.idp,
    this.masterBackendRole,
    this.masterUserName,
    this.rolesKey,
    this.sessionTimeoutMinutes,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final idpValue = idp;
    if (idpValue != null) {
      map['idp'] = idpValue.toMap();
    }
    final masterBackendRoleValue = masterBackendRole;
    if (masterBackendRoleValue != null) {
      map['masterBackendRole'] = masterBackendRoleValue;
    }
    final masterUserNameValue = masterUserName;
    if (masterUserNameValue != null) {
      map['masterUserName'] = masterUserNameValue;
    }
    final rolesKeyValue = rolesKey;
    if (rolesKeyValue != null) {
      map['rolesKey'] = rolesKeyValue;
    }
    final sessionTimeoutMinutesValue = sessionTimeoutMinutes;
    if (sessionTimeoutMinutesValue != null) {
      map['sessionTimeoutMinutes'] = sessionTimeoutMinutesValue;
    }
    final subjectKeyValue = subjectKey;
    if (subjectKeyValue != null) {
      map['subjectKey'] = subjectKeyValue;
    }
    return map;
  }

  factory DomainSamlOptionsSamlOptions.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptions(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idp: map['idp'] == null
          ? null
          : DomainSamlOptionsSamlOptionsIdp.fromMap(
              (map['idp'] as Map).cast<String, dynamic>()),
      masterBackendRole: map['masterBackendRole'] == null
          ? null
          : map['masterBackendRole'] as String,
      masterUserName: map['masterUserName'] == null
          ? null
          : map['masterUserName'] as String,
      rolesKey: map['rolesKey'] == null ? null : map['rolesKey'] as String,
      sessionTimeoutMinutes: map['sessionTimeoutMinutes'] == null
          ? null
          : map['sessionTimeoutMinutes'] as int,
      subjectKey:
          map['subjectKey'] == null ? null : map['subjectKey'] as String,
    );
  }
}
