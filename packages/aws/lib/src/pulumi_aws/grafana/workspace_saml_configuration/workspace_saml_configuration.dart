import 'package:pulumi/pulumi.dart';
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
class WorkspaceSamlConfiguration extends CustomResource {
  /// The admin role values.
  late final Output<List<String>?> adminRoleValues;

  /// The allowed organizations.
  late final Output<List<String>?> allowedOrganizations;

  /// The editor role values.
  late final Output<List<String>> editorRoleValues;

  /// The email assertion.
  late final Output<String> emailAssertion;

  /// The groups assertion.
  late final Output<String?> groupsAssertion;

  /// The IDP Metadata URL. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final Output<String?> idpMetadataUrl;

  /// The IDP Metadata XML. Note that either `idp_metadata_url` or `idp_metadata_xml` (but not both) must be specified.
  late final Output<String?> idpMetadataXml;

  /// The login assertion.
  late final Output<String> loginAssertion;

  /// The login validity duration.
  late final Output<int> loginValidityDuration;

  /// The name assertion.
  late final Output<String> nameAssertion;

  /// The org assertion.
  late final Output<String?> orgAssertion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The role assertion.
  late final Output<String?> roleAssertion;

  /// The status of the SAML configuration.
  late final Output<String> status;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  WorkspaceSamlConfiguration(
    String name, {
    WorkspaceSamlConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
