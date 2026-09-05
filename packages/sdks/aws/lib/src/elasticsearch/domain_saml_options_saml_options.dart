// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_saml_options_idp.dart';

class DomainSamlOptionsSamlOptions {
  /// Whether SAML authentication is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Information from your identity provider.
  final pulumi.Input<DomainSamlOptionsSamlOptionsIdp?>? idp;
  /// This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final pulumi.Input<String?>? masterBackendRole;
  /// This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  final pulumi.Input<String?>? masterUserName;
  /// Element of the SAML assertion to use for backend roles. Default is roles.
  final pulumi.Input<String?>? rolesKey;
  /// Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
  final pulumi.Input<int?>? sessionTimeoutMinutes;
  /// Custom SAML attribute to use for user names. Default is an empty string - `""`. This will cause Elasticsearch to use the `NameID` element of the `Subject`, which is the default location for name identifiers in the SAML specification.
  final pulumi.Input<String?>? subjectKey;

  /// Creates a new [DomainSamlOptionsSamlOptions].
  /// [enabled] Whether SAML authentication is enabled.
  /// [idp] Information from your identity provider.
  /// [masterBackendRole] This backend role from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  /// [masterUserName] This username from the SAML IdP receives full permissions to the cluster, equivalent to a new master user.
  /// [rolesKey] Element of the SAML assertion to use for backend roles. Default is roles.
  /// [sessionTimeoutMinutes] Duration of a session in minutes after a user logs in. Default is 60. Maximum value is 1,440.
  /// [subjectKey] Custom SAML attribute to use for user names. Default is an empty string - `""`. This will cause Elasticsearch to use the `NameID` element of the `Subject`, which is the default location for name identifiers in the SAML specification.
  const DomainSamlOptionsSamlOptions({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idp: (() { final guardedValue = map['idp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainSamlOptionsSamlOptionsIdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterBackendRole: (() { final guardedValue = map['masterBackendRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserName: (() { final guardedValue = map['masterUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolesKey: (() { final guardedValue = map['rolesKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionTimeoutMinutes: (() { final guardedValue = map['sessionTimeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      subjectKey: (() { final guardedValue = map['subjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
