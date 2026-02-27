import 'package:pulumi/pulumi.dart' as pulumi;
import '../workspace_network_access_control/workspace_network_access_control.dart';
import '../workspace_vpc_configuration/workspace_vpc_configuration.dart';
import 'workspace_grafana_args.dart';

/// Provides an Amazon Managed Grafana workspace resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
///
/// ### Workspace configuration options
///
///
///
/// The optional argument `configuration` is a JSON string that disables the unified `Grafana Alerting` (Grafana version 10 or newer) and enables `Plugin Management` (Grafana version 9 or newer) on the Grafana Workspaces.
///
/// For more information about using Grafana alerting, and the effects of turning it on or off, see [Alerts in Grafana version 10](https://docs.aws.amazon.com/grafana/latest/userguide/v10-alerts.html).
///
/// ## Import
///
/// Using `pulumi import`, import Grafana Workspace using the workspace's `id`. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspace:Workspace example g-2054c75a02
/// ```
class WorkspaceGrafana extends pulumi.CustomResource {
  /// The type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizational_units` must also be present.
  late final pulumi.Output<String> accountAccessType;

  /// The Amazon Resource Name (ARN) of the Grafana workspace.
  late final pulumi.Output<String> arn;

  /// The authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  late final pulumi.Output<List<String>> authenticationProviders;

  /// The configuration string for the workspace that you create. For more information about the format and configuration options available, see [Working in your Grafana workspace](https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).
  late final pulumi.Output<String> configuration;

  /// The data sources for the workspace. Valid values are `AMAZON_OPENSEARCH_SERVICE`, `ATHENA`, `CLOUDWATCH`, `PROMETHEUS`, `REDSHIFT`, `SITEWISE`, `TIMESTREAM`, `TWINMAKER`, XRAY`
  late final pulumi.Output<List<String>?> dataSources;

  /// The workspace description.
  late final pulumi.Output<String?> description;

  /// The endpoint of the Grafana workspace.
  late final pulumi.Output<String> endpoint;

  /// Specifies the version of Grafana to support in the new workspace. Supported values are `8.4`, `9.4` and `10.4`. If not specified, defaults to the latest version.
  late final pulumi.Output<String> grafanaVersion;

  /// The Grafana workspace name.
  late final pulumi.Output<String> name;

  /// Configuration for network access to your workspace.See Network Access Control below.
  late final pulumi.Output<WorkspaceNetworkAccessControl?> networkAccessControl;

  /// The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to `SNS`.
  late final pulumi.Output<List<String>?> notificationDestinations;

  /// The role name that the workspace uses to access resources through Amazon Organizations.
  late final pulumi.Output<String?> organizationRoleName;

  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  late final pulumi.Output<List<String>?> organizationalUnits;

  /// The permission type of the workspace. If `SERVICE_MANAGED` is specified, the IAM roles and IAM policy attachments are generated automatically. If `CUSTOMER_MANAGED` is specified, the IAM roles and IAM policy attachments will not be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> permissionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IAM role ARN that the workspace assumes.
  late final pulumi.Output<String?> roleArn;
  late final pulumi.Output<String> samlConfigurationStatus;

  /// The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  late final pulumi.Output<String?> stackSetName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The configuration settings for an Amazon VPC that contains data sources for your Grafana workspace to connect to. See VPC Configuration below.
  late final pulumi.Output<WorkspaceVpcConfiguration?> vpcConfiguration;

  WorkspaceGrafana(
    String name, {
    WorkspaceGrafanaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspace:Workspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountAccessType = registerOutput<String>('accountAccessType');
    this.arn = registerOutput<String>('arn');
    this.authenticationProviders =
        registerOutput<List<String>>('authenticationProviders');
    this.configuration = registerOutput<String>('configuration');
    this.dataSources = registerOutput<List<String>?>('dataSources');
    this.description = registerOutput<String?>('description');
    this.endpoint = registerOutput<String>('endpoint');
    this.grafanaVersion = registerOutput<String>('grafanaVersion');
    this.name = registerOutput<String>('name');
    this.networkAccessControl =
        registerOutput<WorkspaceNetworkAccessControl?>('networkAccessControl');
    this.notificationDestinations =
        registerOutput<List<String>?>('notificationDestinations');
    this.organizationRoleName = registerOutput<String?>('organizationRoleName');
    this.organizationalUnits =
        registerOutput<List<String>?>('organizationalUnits');
    this.permissionType = registerOutput<String>('permissionType');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
    this.samlConfigurationStatus =
        registerOutput<String>('samlConfigurationStatus');
    this.stackSetName = registerOutput<String?>('stackSetName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfiguration =
        registerOutput<WorkspaceVpcConfiguration?>('vpcConfiguration');
  }
}
