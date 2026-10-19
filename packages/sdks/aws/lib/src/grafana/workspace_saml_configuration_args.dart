// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_workspace_saml_configuration_workspace_saml_configuration_args_doc}
/// The set of arguments for WorkspaceSamlConfiguration.
/// {@endtemplate}
/// {@macro pulumi_grafana_workspace_saml_configuration_workspace_saml_configuration_args_doc}
class WorkspaceSamlConfigurationArgs {
  /// Admin role values.
  final pulumi.Input<List<String>?>? adminRoleValues;
  /// Allowed organizations.
  final pulumi.Input<List<String>?>? allowedOrganizations;
  /// Editor role values.
  final pulumi.Input<List<String>> editorRoleValues;
  /// Email assertion.
  final pulumi.Input<String?>? emailAssertion;
  /// Groups assertion.
  final pulumi.Input<String?>? groupsAssertion;
  /// IDP Metadata URL. Note that either `idpMetadataUrl` or `idpMetadataXml` (but not both) must be specified.
  final pulumi.Input<String?>? idpMetadataUrl;
  /// IDP Metadata XML. Note that either `idpMetadataUrl` or `idpMetadataXml` (but not both) must be specified.
  final pulumi.Input<String?>? idpMetadataXml;
  /// Login assertion.
  final pulumi.Input<String?>? loginAssertion;
  /// Login validity duration.
  final pulumi.Input<int?>? loginValidityDuration;
  /// Name assertion.
  final pulumi.Input<String?>? nameAssertion;
  /// Org assertion.
  final pulumi.Input<String?>? orgAssertion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Role assertion.
  final pulumi.Input<String?>? roleAssertion;
  /// Workspace ID.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceSamlConfigurationArgs].
  /// [adminRoleValues] Admin role values.
  /// [allowedOrganizations] Allowed organizations.
  /// [editorRoleValues] Editor role values.
  /// [emailAssertion] Email assertion.
  /// [groupsAssertion] Groups assertion.
  /// [idpMetadataUrl] IDP Metadata URL. Note that either `idpMetadataUrl` or `idpMetadataXml` (but not both) must be specified.
  /// [idpMetadataXml] IDP Metadata XML. Note that either `idpMetadataUrl` or `idpMetadataXml` (but not both) must be specified.
  /// [loginAssertion] Login assertion.
  /// [loginValidityDuration] Login validity duration.
  /// [nameAssertion] Name assertion.
  /// [orgAssertion] Org assertion.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleAssertion] Role assertion.
  /// [workspaceId] Workspace ID.
  const WorkspaceSamlConfigurationArgs({
    this.adminRoleValues,
    this.allowedOrganizations,
    required this.editorRoleValues,
    this.emailAssertion,
    this.groupsAssertion,
    this.idpMetadataUrl,
    this.idpMetadataXml,
    this.loginAssertion,
    this.loginValidityDuration,
    this.nameAssertion,
    this.orgAssertion,
    this.region,
    this.roleAssertion,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminRoleValues': ?adminRoleValues,
      'allowedOrganizations': ?allowedOrganizations,
      'editorRoleValues': editorRoleValues,
      'emailAssertion': ?emailAssertion,
      'groupsAssertion': ?groupsAssertion,
      'idpMetadataUrl': ?idpMetadataUrl,
      'idpMetadataXml': ?idpMetadataXml,
      'loginAssertion': ?loginAssertion,
      'loginValidityDuration': ?loginValidityDuration,
      'nameAssertion': ?nameAssertion,
      'orgAssertion': ?orgAssertion,
      'region': ?region,
      'roleAssertion': ?roleAssertion,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceSamlConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSamlConfigurationArgs(
      adminRoleValues: (() { final guardedValue = map['adminRoleValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrganizations: (() { final guardedValue = map['allowedOrganizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      editorRoleValues: pulumi.Input.fromValue((map['editorRoleValues'] as List).cast<String>()),
      emailAssertion: (() { final guardedValue = map['emailAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupsAssertion: (() { final guardedValue = map['groupsAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpMetadataUrl: (() { final guardedValue = map['idpMetadataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpMetadataXml: (() { final guardedValue = map['idpMetadataXml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginAssertion: (() { final guardedValue = map['loginAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginValidityDuration: (() { final guardedValue = map['loginValidityDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      nameAssertion: (() { final guardedValue = map['nameAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgAssertion: (() { final guardedValue = map['orgAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleAssertion: (() { final guardedValue = map['roleAssertion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
