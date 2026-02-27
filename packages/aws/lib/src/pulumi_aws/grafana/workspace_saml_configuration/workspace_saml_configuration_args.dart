// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WorkspaceSamlConfiguration.
class WorkspaceSamlConfigurationArgs {
  /// The admin role values.
  final Input<List<String>>? adminRoleValues;

  /// The allowed organizations.
  final Input<List<String>>? allowedOrganizations;

  /// The editor role values.
  final Input<List<String>> editorRoleValues;

  /// The email assertion.
  final Input<String>? emailAssertion;

  /// The groups assertion.
  final Input<String>? groupsAssertion;

  /// The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  final Input<String>? idpMetadataUrl;

  /// The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  final Input<String>? idpMetadataXml;

  /// The login assertion.
  final Input<String>? loginAssertion;

  /// The login validity duration.
  final Input<int>? loginValidityDuration;

  /// The name assertion.
  final Input<String>? nameAssertion;

  /// The org assertion.
  final Input<String>? orgAssertion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The role assertion.
  final Input<String>? roleAssertion;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  final Input<String> workspaceId;

  WorkspaceSamlConfigurationArgs({
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
    final map = <String, dynamic>{};
    final adminRoleValuesValue = adminRoleValues;
    if (adminRoleValuesValue != null) {
      map['adminRoleValues'] = adminRoleValuesValue;
    }
    final allowedOrganizationsValue = allowedOrganizations;
    if (allowedOrganizationsValue != null) {
      map['allowedOrganizations'] = allowedOrganizationsValue;
    }
    map['editorRoleValues'] = editorRoleValues;
    final emailAssertionValue = emailAssertion;
    if (emailAssertionValue != null) {
      map['emailAssertion'] = emailAssertionValue;
    }
    final groupsAssertionValue = groupsAssertion;
    if (groupsAssertionValue != null) {
      map['groupsAssertion'] = groupsAssertionValue;
    }
    final idpMetadataUrlValue = idpMetadataUrl;
    if (idpMetadataUrlValue != null) {
      map['idpMetadataUrl'] = idpMetadataUrlValue;
    }
    final idpMetadataXmlValue = idpMetadataXml;
    if (idpMetadataXmlValue != null) {
      map['idpMetadataXml'] = idpMetadataXmlValue;
    }
    final loginAssertionValue = loginAssertion;
    if (loginAssertionValue != null) {
      map['loginAssertion'] = loginAssertionValue;
    }
    final loginValidityDurationValue = loginValidityDuration;
    if (loginValidityDurationValue != null) {
      map['loginValidityDuration'] = loginValidityDurationValue;
    }
    final nameAssertionValue = nameAssertion;
    if (nameAssertionValue != null) {
      map['nameAssertion'] = nameAssertionValue;
    }
    final orgAssertionValue = orgAssertion;
    if (orgAssertionValue != null) {
      map['orgAssertion'] = orgAssertionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleAssertionValue = roleAssertion;
    if (roleAssertionValue != null) {
      map['roleAssertion'] = roleAssertionValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory WorkspaceSamlConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceSamlConfigurationArgs(
      adminRoleValues:
          Input.asOptionalInput<List<String>>(map['adminRoleValues']),
      allowedOrganizations:
          Input.asOptionalInput<List<String>>(map['allowedOrganizations']),
      editorRoleValues: Input.asInput<List<String>>(map['editorRoleValues']),
      emailAssertion: Input.asOptionalInput<String>(map['emailAssertion']),
      groupsAssertion: Input.asOptionalInput<String>(map['groupsAssertion']),
      idpMetadataUrl: Input.asOptionalInput<String>(map['idpMetadataUrl']),
      idpMetadataXml: Input.asOptionalInput<String>(map['idpMetadataXml']),
      loginAssertion: Input.asOptionalInput<String>(map['loginAssertion']),
      loginValidityDuration:
          Input.asOptionalInput<int>(map['loginValidityDuration']),
      nameAssertion: Input.asOptionalInput<String>(map['nameAssertion']),
      orgAssertion: Input.asOptionalInput<String>(map['orgAssertion']),
      region: Input.asOptionalInput<String>(map['region']),
      roleAssertion: Input.asOptionalInput<String>(map['roleAssertion']),
      workspaceId: Input.asInput<String>(map['workspaceId']),
    );
  }
}
