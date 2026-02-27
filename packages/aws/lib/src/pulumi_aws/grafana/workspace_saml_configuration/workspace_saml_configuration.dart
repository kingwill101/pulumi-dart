import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_saml_configuration_args.dart';

/// Provides an Amazon Managed Grafana workspace SAML configuration resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Grafana Workspace SAML configuration using the workspace's `id`. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration example g-2054c75a02
/// ```
class WorkspaceSamlConfiguration extends pulumi.CustomResource {
  /// The admin role values.
  late final pulumi.Output<List<String>?> adminRoleValues;

  /// The allowed organizations.
  late final pulumi.Output<List<String>?> allowedOrganizations;

  /// The editor role values.
  late final pulumi.Output<List<String>> editorRoleValues;

  /// The email assertion.
  late final pulumi.Output<String> emailAssertion;

  /// The groups assertion.
  late final pulumi.Output<String?> groupsAssertion;

  /// The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final pulumi.Output<String?> idpMetadataUrl;

  /// The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final pulumi.Output<String?> idpMetadataXml;

  /// The login assertion.
  late final pulumi.Output<String> loginAssertion;

  /// The login validity duration.
  late final pulumi.Output<int> loginValidityDuration;

  /// The name assertion.
  late final pulumi.Output<String> nameAssertion;

  /// The org assertion.
  late final pulumi.Output<String?> orgAssertion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The role assertion.
  late final pulumi.Output<String?> roleAssertion;

  /// The status of the SAML configuration.
  late final pulumi.Output<String> status;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> workspaceId;

  WorkspaceSamlConfiguration(
    String name, {
    WorkspaceSamlConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adminRoleValues = registerOutput<List<String>?>('adminRoleValues');
    this.allowedOrganizations =
        registerOutput<List<String>?>('allowedOrganizations');
    this.editorRoleValues = registerOutput<List<String>>('editorRoleValues');
    this.emailAssertion = registerOutput<String>('emailAssertion');
    this.groupsAssertion = registerOutput<String?>('groupsAssertion');
    this.idpMetadataUrl = registerOutput<String?>('idpMetadataUrl');
    this.idpMetadataXml = registerOutput<String?>('idpMetadataXml');
    this.loginAssertion = registerOutput<String>('loginAssertion');
    this.loginValidityDuration = registerOutput<int>('loginValidityDuration');
    this.nameAssertion = registerOutput<String>('nameAssertion');
    this.orgAssertion = registerOutput<String?>('orgAssertion');
    this.region = registerOutput<String>('region');
    this.roleAssertion = registerOutput<String?>('roleAssertion');
    this.status = registerOutput<String>('status');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
