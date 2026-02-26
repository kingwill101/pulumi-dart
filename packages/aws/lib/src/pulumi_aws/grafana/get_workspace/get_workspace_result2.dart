// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspace.
class GetWorkspaceResult2 {
  /// (Required) Type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then <span pulumi-lang-nodejs="`organizationalUnits`" pulumi-lang-dotnet="`OrganizationalUnits`" pulumi-lang-go="`organizationalUnits`" pulumi-lang-python="`organizational_units`" pulumi-lang-yaml="`organizationalUnits`" pulumi-lang-java="`organizationalUnits`">`organizational_units`</span> must also be present.
  final String accountAccessType;

  /// ARN of the Grafana workspace.
  final String arn;

  /// (Required) Authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  final List<String> authenticationProviders;

  /// Creation date of the Grafana workspace.
  final String createdDate;

  /// Data sources for the workspace.
  final List<String> dataSources;

  /// Workspace description.
  final String description;

  /// Endpoint of the Grafana workspace.
  final String endpoint;

  /// Version of Grafana running on the workspace.
  final String grafanaVersion;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Last updated date of the Grafana workspace.
  final String lastUpdatedDate;

  /// Grafana workspace name.
  final String name;

  /// The notification destinations.
  final List<String> notificationDestinations;

  /// The role name that the workspace uses to access resources through Amazon Organizations.
  final String organizationRoleName;

  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  final List<String> organizationalUnits;

  /// Permission type of the workspace.
  final String permissionType;
  final String region;

  /// IAM role ARN that the workspace assumes.
  final String roleArn;
  final String samlConfigurationStatus;

  /// AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  final String stackSetName;

  /// Status of the Grafana workspace.
  final String status;

  /// Tags assigned to the resource
  final Map<String, String> tags;
  final String workspaceId;

  GetWorkspaceResult2({
    required this.accountAccessType,
    required this.arn,
    required this.authenticationProviders,
    required this.createdDate,
    required this.dataSources,
    required this.description,
    required this.endpoint,
    required this.grafanaVersion,
    required this.id,
    required this.lastUpdatedDate,
    required this.name,
    required this.notificationDestinations,
    required this.organizationRoleName,
    required this.organizationalUnits,
    required this.permissionType,
    required this.region,
    required this.roleArn,
    required this.samlConfigurationStatus,
    required this.stackSetName,
    required this.status,
    required this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountAccessType'] = accountAccessType;
    map['arn'] = arn;
    map['authenticationProviders'] = authenticationProviders;
    map['createdDate'] = createdDate;
    map['dataSources'] = dataSources;
    map['description'] = description;
    map['endpoint'] = endpoint;
    map['grafanaVersion'] = grafanaVersion;
    map['id'] = id;
    map['lastUpdatedDate'] = lastUpdatedDate;
    map['name'] = name;
    map['notificationDestinations'] = notificationDestinations;
    map['organizationRoleName'] = organizationRoleName;
    map['organizationalUnits'] = organizationalUnits;
    map['permissionType'] = permissionType;
    map['region'] = region;
    map['roleArn'] = roleArn;
    map['samlConfigurationStatus'] = samlConfigurationStatus;
    map['stackSetName'] = stackSetName;
    map['status'] = status;
    map['tags'] = tags;
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory GetWorkspaceResult2.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult2(
      accountAccessType: map['accountAccessType'] as String,
      arn: map['arn'] as String,
      authenticationProviders:
          (map['authenticationProviders'] as List).cast<String>(),
      createdDate: map['createdDate'] as String,
      dataSources: (map['dataSources'] as List).cast<String>(),
      description: map['description'] as String,
      endpoint: map['endpoint'] as String,
      grafanaVersion: map['grafanaVersion'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      name: map['name'] as String,
      notificationDestinations:
          (map['notificationDestinations'] as List).cast<String>(),
      organizationRoleName: map['organizationRoleName'] as String,
      organizationalUnits: (map['organizationalUnits'] as List).cast<String>(),
      permissionType: map['permissionType'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      samlConfigurationStatus: map['samlConfigurationStatus'] as String,
      stackSetName: map['stackSetName'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}
