// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workspace_network_access_control/workspace_network_access_control.dart';
import '../workspace_vpc_configuration/workspace_vpc_configuration.dart';

/// The set of arguments for Workspace.
class WorkspaceArgs2 {
  /// The type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizational_units` must also be present.
  final Input<String> accountAccessType;

  /// The authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  final Input<List<String>> authenticationProviders;

  /// The configuration string for the workspace that you create. For more information about the format and configuration options available, see [Working in your Grafana workspace](https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).
  final Input<String>? configuration;

  /// The data sources for the workspace. Valid values are `AMAZON_OPENSEARCH_SERVICE`, `ATHENA`, `CLOUDWATCH`, `PROMETHEUS`, `REDSHIFT`, `SITEWISE`, `TIMESTREAM`, `TWINMAKER`, XRAY`
  final Input<List<String>>? dataSources;

  /// The workspace description.
  final Input<String>? description;

  /// Specifies the version of Grafana to support in the new workspace. Supported values are `8.4`, `9.4` and `10.4`. If not specified, defaults to the latest version.
  final Input<String>? grafanaVersion;

  /// The Grafana workspace name.
  final Input<String>? name;

  /// Configuration for network access to your workspace.See Network Access Control below.
  final Input<WorkspaceNetworkAccessControl>? networkAccessControl;

  /// The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to `SNS`.
  final Input<List<String>>? notificationDestinations;

  /// The role name that the workspace uses to access resources through Amazon Organizations.
  final Input<String>? organizationRoleName;

  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  final Input<List<String>>? organizationalUnits;

  /// The permission type of the workspace. If `SERVICE_MANAGED` is specified, the IAM roles and IAM policy attachments are generated automatically. If `CUSTOMER_MANAGED` is specified, the IAM roles and IAM policy attachments will not be created.
  ///
  /// The following arguments are optional:
  final Input<String> permissionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IAM role ARN that the workspace assumes.
  final Input<String>? roleArn;

  /// The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  final Input<String>? stackSetName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

  /// The configuration settings for an Amazon VPC that contains data sources for your Grafana workspace to connect to. See VPC Configuration below.
  final Input<WorkspaceVpcConfiguration>? vpcConfiguration;

  WorkspaceArgs2({
    required this.accountAccessType,
    required this.authenticationProviders,
    this.configuration,
    this.dataSources,
    this.description,
    this.grafanaVersion,
    this.name,
    this.networkAccessControl,
    this.notificationDestinations,
    this.organizationRoleName,
    this.organizationalUnits,
    required this.permissionType,
    this.region,
    this.roleArn,
    this.stackSetName,
    this.tags,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountAccessType'] = accountAccessType;
    map['authenticationProviders'] = authenticationProviders;
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = configurationValue;
    }
    final dataSourcesValue = dataSources;
    if (dataSourcesValue != null) {
      map['dataSources'] = dataSourcesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final grafanaVersionValue = grafanaVersion;
    if (grafanaVersionValue != null) {
      map['grafanaVersion'] = grafanaVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkAccessControlValue = networkAccessControl;
    if (networkAccessControlValue != null) {
      map['networkAccessControl'] = Input.mapOptionalInputValue<
              WorkspaceNetworkAccessControl, Map<String, dynamic>>(
          networkAccessControlValue, (value) => value.toMap());
    }
    final notificationDestinationsValue = notificationDestinations;
    if (notificationDestinationsValue != null) {
      map['notificationDestinations'] = notificationDestinationsValue;
    }
    final organizationRoleNameValue = organizationRoleName;
    if (organizationRoleNameValue != null) {
      map['organizationRoleName'] = organizationRoleNameValue;
    }
    final organizationalUnitsValue = organizationalUnits;
    if (organizationalUnitsValue != null) {
      map['organizationalUnits'] = organizationalUnitsValue;
    }
    map['permissionType'] = permissionType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final stackSetNameValue = stackSetName;
    if (stackSetNameValue != null) {
      map['stackSetName'] = stackSetNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = Input.mapOptionalInputValue<
              WorkspaceVpcConfiguration, Map<String, dynamic>>(
          vpcConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkspaceArgs2.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs2(
      accountAccessType: Input.asInput<String>(map['accountAccessType']),
      authenticationProviders:
          Input.asInput<List<String>>(map['authenticationProviders']),
      configuration: Input.asOptionalInput<String>(map['configuration']),
      dataSources: Input.asOptionalInput<List<String>>(map['dataSources']),
      description: Input.asOptionalInput<String>(map['description']),
      grafanaVersion: Input.asOptionalInput<String>(map['grafanaVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      networkAccessControl:
          Input.asOptionalInput<WorkspaceNetworkAccessControl>(
              map['networkAccessControl']),
      notificationDestinations:
          Input.asOptionalInput<List<String>>(map['notificationDestinations']),
      organizationRoleName:
          Input.asOptionalInput<String>(map['organizationRoleName']),
      organizationalUnits:
          Input.asOptionalInput<List<String>>(map['organizationalUnits']),
      permissionType: Input.asInput<String>(map['permissionType']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      stackSetName: Input.asOptionalInput<String>(map['stackSetName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfiguration: Input.asOptionalInput<WorkspaceVpcConfiguration>(
          map['vpcConfiguration']),
    );
  }
}
