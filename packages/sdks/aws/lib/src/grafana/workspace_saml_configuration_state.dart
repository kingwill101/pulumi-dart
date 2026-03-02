// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceSamlConfiguration resources.
class WorkspaceSamlConfigurationState {
  /// The admin role values.
  final pulumi.Input<List<String>>? adminRoleValues;
  /// The allowed organizations.
  final pulumi.Input<List<String>>? allowedOrganizations;
  /// The editor role values.
  final pulumi.Input<List<String>>? editorRoleValues;
  /// The email assertion.
  final pulumi.Input<String>? emailAssertion;
  /// The groups assertion.
  final pulumi.Input<String>? groupsAssertion;
  /// The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  final pulumi.Input<String>? idpMetadataUrl;
  /// The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  final pulumi.Input<String>? idpMetadataXml;
  /// The login assertion.
  final pulumi.Input<String>? loginAssertion;
  /// The login validity duration.
  final pulumi.Input<int>? loginValidityDuration;
  /// The name assertion.
  final pulumi.Input<String>? nameAssertion;
  /// The org assertion.
  final pulumi.Input<String>? orgAssertion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The role assertion.
  final pulumi.Input<String>? roleAssertion;
  /// The status of the SAML configuration.
  final pulumi.Input<String>? status;
  /// The workspace id.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceSamlConfigurationState].
  /// [adminRoleValues] The admin role values.
  /// [allowedOrganizations] The allowed organizations.
  /// [editorRoleValues] The editor role values.
  /// [emailAssertion] The email assertion.
  /// [groupsAssertion] The groups assertion.
  /// [idpMetadataUrl] The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  /// [idpMetadataXml] The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  /// [loginAssertion] The login assertion.
  /// [loginValidityDuration] The login validity duration.
  /// [nameAssertion] The name assertion.
  /// [orgAssertion] The org assertion.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleAssertion] The role assertion.
  /// [status] The status of the SAML configuration.
  /// [workspaceId] The workspace id.
  WorkspaceSamlConfigurationState({
    this.adminRoleValues,
    this.allowedOrganizations,
    this.editorRoleValues,
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
    this.status,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminRoleValues': ?adminRoleValues,
      'allowedOrganizations': ?allowedOrganizations,
      'editorRoleValues': ?editorRoleValues,
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
      'status': ?status,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceSamlConfigurationState.fromMap(Map<String, dynamic> map) {
    return WorkspaceSamlConfigurationState(
      adminRoleValues: map['adminRoleValues'] == null ? null : (((map['adminRoleValues'] as List).cast<String>()).input()).input(),
      allowedOrganizations: map['allowedOrganizations'] == null ? null : (((map['allowedOrganizations'] as List).cast<String>()).input()).input(),
      editorRoleValues: map['editorRoleValues'] == null ? null : (((map['editorRoleValues'] as List).cast<String>()).input()).input(),
      emailAssertion: map['emailAssertion'] == null ? null : ((map['emailAssertion'] as String).input()).input(),
      groupsAssertion: map['groupsAssertion'] == null ? null : ((map['groupsAssertion'] as String).input()).input(),
      idpMetadataUrl: map['idpMetadataUrl'] == null ? null : ((map['idpMetadataUrl'] as String).input()).input(),
      idpMetadataXml: map['idpMetadataXml'] == null ? null : ((map['idpMetadataXml'] as String).input()).input(),
      loginAssertion: map['loginAssertion'] == null ? null : ((map['loginAssertion'] as String).input()).input(),
      loginValidityDuration: map['loginValidityDuration'] == null ? null : ((map['loginValidityDuration'] as int).input()).input(),
      nameAssertion: map['nameAssertion'] == null ? null : ((map['nameAssertion'] as String).input()).input(),
      orgAssertion: map['orgAssertion'] == null ? null : ((map['orgAssertion'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleAssertion: map['roleAssertion'] == null ? null : ((map['roleAssertion'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      workspaceId: map['workspaceId'] == null ? null : ((map['workspaceId'] as String).input()).input(),
    );
  }
}

