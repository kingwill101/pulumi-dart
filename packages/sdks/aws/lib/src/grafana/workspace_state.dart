// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_network_access_control.dart';
import 'workspace_vpc_configuration.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizational_units` must also be present.
  final pulumi.Input<String>? accountAccessType;
  /// The Amazon Resource Name (ARN) of the Grafana workspace.
  final pulumi.Input<String>? arn;
  /// The authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  final pulumi.Input<List<String>>? authenticationProviders;
  /// The configuration string for the workspace that you create. For more information about the format and configuration options available, see [Working in your Grafana workspace](https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).
  final pulumi.Input<String>? configuration;
  /// The data sources for the workspace. Valid values are `AMAZON_OPENSEARCH_SERVICE`, `ATHENA`, `CLOUDWATCH`, `PROMETHEUS`, `REDSHIFT`, `SITEWISE`, `TIMESTREAM`, `TWINMAKER`, XRAY`
  final pulumi.Input<List<String>>? dataSources;
  /// The workspace description.
  final pulumi.Input<String>? description;
  /// The endpoint of the Grafana workspace.
  final pulumi.Input<String>? endpoint;
  /// Specifies the version of Grafana to support in the new workspace. Supported values are `8.4`, `9.4` and `10.4`. If not specified, defaults to the latest version.
  final pulumi.Input<String>? grafanaVersion;
  /// The Grafana workspace name.
  final pulumi.Input<String>? name;
  /// Configuration for network access to your workspace.See Network Access Control below.
  final pulumi.Input<WorkspaceNetworkAccessControl>? networkAccessControl;
  /// The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to `SNS`.
  final pulumi.Input<List<String>>? notificationDestinations;
  /// The role name that the workspace uses to access resources through Amazon Organizations.
  final pulumi.Input<String>? organizationRoleName;
  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  final pulumi.Input<List<String>>? organizationalUnits;
  /// The permission type of the workspace. If `SERVICE_MANAGED` is specified, the IAM roles and IAM policy attachments are generated automatically. If `CUSTOMER_MANAGED` is specified, the IAM roles and IAM policy attachments will not be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? permissionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role ARN that the workspace assumes.
  final pulumi.Input<String>? roleArn;
  final pulumi.Input<String>? samlConfigurationStatus;
  /// The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  final pulumi.Input<String>? stackSetName;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The configuration settings for an Amazon VPC that contains data sources for your Grafana workspace to connect to. See VPC Configuration below.
  final pulumi.Input<WorkspaceVpcConfiguration>? vpcConfiguration;

  /// Creates a new [WorkspaceState].
  /// [accountAccessType] The type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizational_units` must also be present.
  /// [arn] The Amazon Resource Name (ARN) of the Grafana workspace.
  /// [authenticationProviders] The authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  /// [configuration] The configuration string for the workspace that you create. For more information about the format and configuration options available, see [Working in your Grafana workspace](https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).
  /// [dataSources] The data sources for the workspace. Valid values are `AMAZON_OPENSEARCH_SERVICE`, `ATHENA`, `CLOUDWATCH`, `PROMETHEUS`, `REDSHIFT`, `SITEWISE`, `TIMESTREAM`, `TWINMAKER`, XRAY`
  /// [description] The workspace description.
  /// [endpoint] The endpoint of the Grafana workspace.
  /// [grafanaVersion] Specifies the version of Grafana to support in the new workspace. Supported values are `8.4`, `9.4` and `10.4`. If not specified, defaults to the latest version.
  /// [name] The Grafana workspace name.
  /// [networkAccessControl] Configuration for network access to your workspace.See Network Access Control below.
  /// [notificationDestinations] The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to `SNS`.
  /// [organizationRoleName] The role name that the workspace uses to access resources through Amazon Organizations.
  /// [organizationalUnits] The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  /// [permissionType] The permission type of the workspace. If `SERVICE_MANAGED` is specified, the IAM roles and IAM policy attachments are generated automatically. If `CUSTOMER_MANAGED` is specified, the IAM roles and IAM policy attachments will not be created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role ARN that the workspace assumes.
  /// [samlConfigurationStatus] Optional.
  /// [stackSetName] The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConfiguration] The configuration settings for an Amazon VPC that contains data sources for your Grafana workspace to connect to. See VPC Configuration below.
  WorkspaceState({
    pulumi.Output<String>? accountAccessType,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? authenticationProviders,
    pulumi.Output<String>? configuration,
    pulumi.Output<List<String>>? dataSources,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? grafanaVersion,
    pulumi.Output<String>? name,
    pulumi.Output<WorkspaceNetworkAccessControl>? networkAccessControl,
    pulumi.Output<List<String>>? notificationDestinations,
    pulumi.Output<String>? organizationRoleName,
    pulumi.Output<List<String>>? organizationalUnits,
    pulumi.Output<String>? permissionType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? samlConfigurationStatus,
    pulumi.Output<String>? stackSetName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<WorkspaceVpcConfiguration>? vpcConfiguration,
  }) :
      accountAccessType = pulumi.Input.asOptionalInput<String>(accountAccessType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authenticationProviders = pulumi.Input.asOptionalInput<List<String>>(authenticationProviders),
      configuration = pulumi.Input.asOptionalInput<String>(configuration),
      dataSources = pulumi.Input.asOptionalInput<List<String>>(dataSources),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      grafanaVersion = pulumi.Input.asOptionalInput<String>(grafanaVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkAccessControl = pulumi.Input.asOptionalInput<WorkspaceNetworkAccessControl>(networkAccessControl),
      notificationDestinations = pulumi.Input.asOptionalInput<List<String>>(notificationDestinations),
      organizationRoleName = pulumi.Input.asOptionalInput<String>(organizationRoleName),
      organizationalUnits = pulumi.Input.asOptionalInput<List<String>>(organizationalUnits),
      permissionType = pulumi.Input.asOptionalInput<String>(permissionType),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      samlConfigurationStatus = pulumi.Input.asOptionalInput<String>(samlConfigurationStatus),
      stackSetName = pulumi.Input.asOptionalInput<String>(stackSetName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcConfiguration = pulumi.Input.asOptionalInput<WorkspaceVpcConfiguration>(vpcConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccessType': ?accountAccessType,
      'arn': ?arn,
      'authenticationProviders': ?authenticationProviders,
      'configuration': ?configuration,
      'dataSources': ?dataSources,
      'description': ?description,
      'endpoint': ?endpoint,
      'grafanaVersion': ?grafanaVersion,
      'name': ?name,
      'networkAccessControl': ?pulumi.Input.mapOptionalInputValue<WorkspaceNetworkAccessControl, Map<String, dynamic>>(networkAccessControl, (value) => value.toMap()),
      'notificationDestinations': ?notificationDestinations,
      'organizationRoleName': ?organizationRoleName,
      'organizationalUnits': ?organizationalUnits,
      'permissionType': ?permissionType,
      'region': ?region,
      'roleArn': ?roleArn,
      'samlConfigurationStatus': ?samlConfigurationStatus,
      'stackSetName': ?stackSetName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkspaceVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      accountAccessType: map['accountAccessType'] == null ? null : pulumi.Output.create<String>(map['accountAccessType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authenticationProviders: map['authenticationProviders'] == null ? null : pulumi.Output.create<List<String>>((map['authenticationProviders'] as List).cast<String>()),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<String>(map['configuration'] as String),
      dataSources: map['dataSources'] == null ? null : pulumi.Output.create<List<String>>((map['dataSources'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      grafanaVersion: map['grafanaVersion'] == null ? null : pulumi.Output.create<String>(map['grafanaVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkAccessControl: map['networkAccessControl'] == null ? null : pulumi.Output.create<WorkspaceNetworkAccessControl>(WorkspaceNetworkAccessControl.fromMap((map['networkAccessControl'] as Map).cast<String, dynamic>())),
      notificationDestinations: map['notificationDestinations'] == null ? null : pulumi.Output.create<List<String>>((map['notificationDestinations'] as List).cast<String>()),
      organizationRoleName: map['organizationRoleName'] == null ? null : pulumi.Output.create<String>(map['organizationRoleName'] as String),
      organizationalUnits: map['organizationalUnits'] == null ? null : pulumi.Output.create<List<String>>((map['organizationalUnits'] as List).cast<String>()),
      permissionType: map['permissionType'] == null ? null : pulumi.Output.create<String>(map['permissionType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      samlConfigurationStatus: map['samlConfigurationStatus'] == null ? null : pulumi.Output.create<String>(map['samlConfigurationStatus'] as String),
      stackSetName: map['stackSetName'] == null ? null : pulumi.Output.create<String>(map['stackSetName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : pulumi.Output.create<WorkspaceVpcConfiguration>(WorkspaceVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

