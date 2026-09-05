// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// (Required) Type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizationalUnits` must also be present.
  final String? accountAccessType;
  /// ARN of the Grafana workspace.
  final String? arn;
  /// (Required) Authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  final List<String>? authenticationProviders;
  /// Creation date of the Grafana workspace.
  final String? createdDate;
  /// Data sources for the workspace.
  final List<String>? dataSources;
  /// Workspace description.
  final String? description;
  /// Endpoint of the Grafana workspace.
  final String? endpoint;
  /// Version of Grafana running on the workspace.
  final String? grafanaVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID or ARN of the AWS KMS key for encrypting workspace data.
  final String? kmsKeyId;
  /// Last updated date of the Grafana workspace.
  final String? lastUpdatedDate;
  /// Grafana workspace name.
  final String? name;
  /// The notification destinations.
  final List<String>? notificationDestinations;
  /// The role name that the workspace uses to access resources through Amazon Organizations.
  final String? organizationRoleName;
  /// The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  final List<String>? organizationalUnits;
  /// Permission type of the workspace.
  final String? permissionType;
  final String? region;
  /// IAM role ARN that the workspace assumes.
  final String? roleArn;
  final String? samlConfigurationStatus;
  /// AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  final String? stackSetName;
  /// Status of the Grafana workspace.
  final String? status;
  /// Tags assigned to the resource
  final Map<String, String>? tags;
  final String? workspaceId;

  /// Creates a new [GetWorkspaceResult].
  /// [accountAccessType] (Required) Type of account access for the workspace. Valid values are `CURRENT_ACCOUNT` and `ORGANIZATION`. If `ORGANIZATION` is specified, then `organizationalUnits` must also be present.
  /// [arn] ARN of the Grafana workspace.
  /// [authenticationProviders] (Required) Authentication providers for the workspace. Valid values are `AWS_SSO`, `SAML`, or both.
  /// [createdDate] Creation date of the Grafana workspace.
  /// [dataSources] Data sources for the workspace.
  /// [description] Workspace description.
  /// [endpoint] Endpoint of the Grafana workspace.
  /// [grafanaVersion] Version of Grafana running on the workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] The ID or ARN of the AWS KMS key for encrypting workspace data.
  /// [lastUpdatedDate] Last updated date of the Grafana workspace.
  /// [name] Grafana workspace name.
  /// [notificationDestinations] The notification destinations.
  /// [organizationRoleName] The role name that the workspace uses to access resources through Amazon Organizations.
  /// [organizationalUnits] The Amazon Organizations organizational units that the workspace is authorized to use data sources from.
  /// [permissionType] Permission type of the workspace.
  /// [region] Optional.
  /// [roleArn] IAM role ARN that the workspace assumes.
  /// [samlConfigurationStatus] Optional.
  /// [stackSetName] AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace.
  /// [status] Status of the Grafana workspace.
  /// [tags] Tags assigned to the resource
  /// [workspaceId] Optional.
  const GetWorkspaceResult({
    this.accountAccessType,
    this.arn,
    this.authenticationProviders,
    this.createdDate,
    this.dataSources,
    this.description,
    this.endpoint,
    this.grafanaVersion,
    this.id,
    this.kmsKeyId,
    this.lastUpdatedDate,
    this.name,
    this.notificationDestinations,
    this.organizationRoleName,
    this.organizationalUnits,
    this.permissionType,
    this.region,
    this.roleArn,
    this.samlConfigurationStatus,
    this.stackSetName,
    this.status,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountAccessType': ?accountAccessType,
      'arn': ?arn,
      'authenticationProviders': ?authenticationProviders,
      'createdDate': ?createdDate,
      'dataSources': ?dataSources,
      'description': ?description,
      'endpoint': ?endpoint,
      'grafanaVersion': ?grafanaVersion,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'lastUpdatedDate': ?lastUpdatedDate,
      'name': ?name,
      'notificationDestinations': ?notificationDestinations,
      'organizationRoleName': ?organizationRoleName,
      'organizationalUnits': ?organizationalUnits,
      'permissionType': ?permissionType,
      'region': ?region,
      'roleArn': ?roleArn,
      'samlConfigurationStatus': ?samlConfigurationStatus,
      'stackSetName': ?stackSetName,
      'status': ?status,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      accountAccessType: (() { final guardedValue = map['accountAccessType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationProviders: (() { final guardedValue = map['authenticationProviders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grafanaVersion: (() { final guardedValue = map['grafanaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationDestinations: (() { final guardedValue = map['notificationDestinations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      organizationRoleName: (() { final guardedValue = map['organizationRoleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationalUnits: (() { final guardedValue = map['organizationalUnits']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samlConfigurationStatus: (() { final guardedValue = map['samlConfigurationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackSetName: (() { final guardedValue = map['stackSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
