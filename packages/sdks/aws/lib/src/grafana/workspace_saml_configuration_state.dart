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
    pulumi.Output<List<String>>? adminRoleValues,
    pulumi.Output<List<String>>? allowedOrganizations,
    pulumi.Output<List<String>>? editorRoleValues,
    pulumi.Output<String>? emailAssertion,
    pulumi.Output<String>? groupsAssertion,
    pulumi.Output<String>? idpMetadataUrl,
    pulumi.Output<String>? idpMetadataXml,
    pulumi.Output<String>? loginAssertion,
    pulumi.Output<int>? loginValidityDuration,
    pulumi.Output<String>? nameAssertion,
    pulumi.Output<String>? orgAssertion,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleAssertion,
    pulumi.Output<String>? status,
    pulumi.Output<String>? workspaceId,
  }) :
      adminRoleValues = pulumi.Input.asOptionalInput<List<String>>(adminRoleValues),
      allowedOrganizations = pulumi.Input.asOptionalInput<List<String>>(allowedOrganizations),
      editorRoleValues = pulumi.Input.asOptionalInput<List<String>>(editorRoleValues),
      emailAssertion = pulumi.Input.asOptionalInput<String>(emailAssertion),
      groupsAssertion = pulumi.Input.asOptionalInput<String>(groupsAssertion),
      idpMetadataUrl = pulumi.Input.asOptionalInput<String>(idpMetadataUrl),
      idpMetadataXml = pulumi.Input.asOptionalInput<String>(idpMetadataXml),
      loginAssertion = pulumi.Input.asOptionalInput<String>(loginAssertion),
      loginValidityDuration = pulumi.Input.asOptionalInput<int>(loginValidityDuration),
      nameAssertion = pulumi.Input.asOptionalInput<String>(nameAssertion),
      orgAssertion = pulumi.Input.asOptionalInput<String>(orgAssertion),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleAssertion = pulumi.Input.asOptionalInput<String>(roleAssertion),
      status = pulumi.Input.asOptionalInput<String>(status),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      adminRoleValues: map['adminRoleValues'] == null ? null : pulumi.Output.create<List<String>>((map['adminRoleValues'] as List).cast<String>()),
      allowedOrganizations: map['allowedOrganizations'] == null ? null : pulumi.Output.create<List<String>>((map['allowedOrganizations'] as List).cast<String>()),
      editorRoleValues: map['editorRoleValues'] == null ? null : pulumi.Output.create<List<String>>((map['editorRoleValues'] as List).cast<String>()),
      emailAssertion: map['emailAssertion'] == null ? null : pulumi.Output.create<String>(map['emailAssertion'] as String),
      groupsAssertion: map['groupsAssertion'] == null ? null : pulumi.Output.create<String>(map['groupsAssertion'] as String),
      idpMetadataUrl: map['idpMetadataUrl'] == null ? null : pulumi.Output.create<String>(map['idpMetadataUrl'] as String),
      idpMetadataXml: map['idpMetadataXml'] == null ? null : pulumi.Output.create<String>(map['idpMetadataXml'] as String),
      loginAssertion: map['loginAssertion'] == null ? null : pulumi.Output.create<String>(map['loginAssertion'] as String),
      loginValidityDuration: map['loginValidityDuration'] == null ? null : pulumi.Output.create<int>(map['loginValidityDuration'] as int),
      nameAssertion: map['nameAssertion'] == null ? null : pulumi.Output.create<String>(map['nameAssertion'] as String),
      orgAssertion: map['orgAssertion'] == null ? null : pulumi.Output.create<String>(map['orgAssertion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleAssertion: map['roleAssertion'] == null ? null : pulumi.Output.create<String>(map['roleAssertion'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

