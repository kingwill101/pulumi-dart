// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_saml_options_idp.dart';

class DomainSamlOptionsSamlOptions {
  /// Whether SAML authentication is enabled.
  final pulumi.Input<bool>? enabled;
  /// Information from your identity provider.
  final pulumi.Input<DomainSamlOptionsSamlOptionsIdp>? idp;
  /// This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final pulumi.Input<String>? masterBackendRole;
  /// This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final pulumi.Input<String>? masterUserName;
  /// Element of the SAML assertion to use for backend roles. Default is roles.
  final pulumi.Input<String>? rolesKey;
  /// Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
  final pulumi.Input<int>? sessionTimeoutMinutes;
  /// Element of the SAML assertion to use for username. Default is NameID.
  final pulumi.Input<String>? subjectKey;

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
    return <String, dynamic>{
      'enabled': ?enabled,
      'idp': ?pulumi.Input.mapOptionalInputValue<DomainSamlOptionsSamlOptionsIdp, Map<String, dynamic>>(idp, (value) => value.toMap()),
      'masterBackendRole': ?masterBackendRole,
      'masterUserName': ?masterUserName,
      'rolesKey': ?rolesKey,
      'sessionTimeoutMinutes': ?sessionTimeoutMinutes,
      'subjectKey': ?subjectKey,
    };
  }

  factory DomainSamlOptionsSamlOptions.fromMap(Map<String, dynamic> map) {
    return DomainSamlOptionsSamlOptions(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      idp: map['idp'] == null ? null : ((DomainSamlOptionsSamlOptionsIdp.fromMap((map['idp']! as Map).cast<String, dynamic>())).input()).input(),
      masterBackendRole: map['masterBackendRole'] == null ? null : ((map['masterBackendRole'] as String).input()).input(),
      masterUserName: map['masterUserName'] == null ? null : ((map['masterUserName'] as String).input()).input(),
      rolesKey: map['rolesKey'] == null ? null : ((map['rolesKey'] as String).input()).input(),
      sessionTimeoutMinutes: map['sessionTimeoutMinutes'] == null ? null : ((map['sessionTimeoutMinutes'] as int).input()).input(),
      subjectKey: map['subjectKey'] == null ? null : ((map['subjectKey'] as String).input()).input(),
    );
  }
}

