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
    this.accountAccessType,
    this.arn,
    this.authenticationProviders,
    this.configuration,
    this.dataSources,
    this.description,
    this.endpoint,
    this.grafanaVersion,
    this.name,
    this.networkAccessControl,
    this.notificationDestinations,
    this.organizationRoleName,
    this.organizationalUnits,
    this.permissionType,
    this.region,
    this.roleArn,
    this.samlConfigurationStatus,
    this.stackSetName,
    this.tags,
    this.tagsAll,
    this.vpcConfiguration,
  });

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
      accountAccessType: map['accountAccessType'] == null ? null : (map['accountAccessType'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      authenticationProviders: map['authenticationProviders'] == null ? null : ((map['authenticationProviders'] as List).cast<String>()).input(),
      configuration: map['configuration'] == null ? null : (map['configuration'] as String).input(),
      dataSources: map['dataSources'] == null ? null : ((map['dataSources'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      grafanaVersion: map['grafanaVersion'] == null ? null : (map['grafanaVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkAccessControl: map['networkAccessControl'] == null ? null : (WorkspaceNetworkAccessControl.fromMap((map['networkAccessControl'] as Map).cast<String, dynamic>())).input(),
      notificationDestinations: map['notificationDestinations'] == null ? null : ((map['notificationDestinations'] as List).cast<String>()).input(),
      organizationRoleName: map['organizationRoleName'] == null ? null : (map['organizationRoleName'] as String).input(),
      organizationalUnits: map['organizationalUnits'] == null ? null : ((map['organizationalUnits'] as List).cast<String>()).input(),
      permissionType: map['permissionType'] == null ? null : (map['permissionType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      samlConfigurationStatus: map['samlConfigurationStatus'] == null ? null : (map['samlConfigurationStatus'] as String).input(),
      stackSetName: map['stackSetName'] == null ? null : (map['stackSetName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : (WorkspaceVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

