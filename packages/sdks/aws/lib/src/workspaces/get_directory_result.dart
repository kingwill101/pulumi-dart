// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_active_directory_config.dart';
import 'get_directory_certificate_based_auth_property.dart';
import 'get_directory_saml_property.dart';
import 'get_directory_self_service_permission.dart';
import 'get_directory_workspace_access_property.dart';
import 'get_directory_workspace_creation_property.dart';

/// Result data returned by getDirectory.
class GetDirectoryResult {
  /// Configuration for Active Directory integration when `workspace_type` is set to `POOLS`.
  final List<GetDirectoryActiveDirectoryConfig> activeDirectoryConfigs;
  /// Directory alias.
  final String alias;
  final List<GetDirectoryCertificateBasedAuthProperty> certificateBasedAuthProperties;
  /// User name for the service account.
  final String customerUserName;
  final String directoryId;
  /// Name of the directory.
  final String directoryName;
  /// Directory type.
  final String directoryType;
  /// IP addresses of the DNS servers for the directory.
  final List<String> dnsIpAddresses;
  /// Identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  final String iamRoleId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Identifiers of the IP access control groups associated with the directory.
  final List<String> ipGroupIds;
  final String region;
  /// Registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  final String registrationCode;
  final List<GetDirectorySamlProperty> samlProperties;
  /// The permissions to enable or disable self-service capabilities.
  final List<GetDirectorySelfServicePermission> selfServicePermissions;
  /// Identifiers of the subnets where the directory resides.
  final List<String> subnetIds;
  /// A map of tags assigned to the WorkSpaces directory.
  final Map<String, String> tags;
  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final String tenancy;
  /// The user identity type for the WorkSpaces directory.
  final String userIdentityType;
  /// Specifies which devices and operating systems users can use to access their WorkSpaces.
  final List<GetDirectoryWorkspaceAccessProperty> workspaceAccessProperties;
  /// The default properties that are used for creating WorkSpaces.
  final List<GetDirectoryWorkspaceCreationProperty> workspaceCreationProperties;
  /// The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final String workspaceDirectoryDescription;
  /// The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final String workspaceDirectoryName;
  /// The identifier of the security group that is assigned to new WorkSpaces.
  final String workspaceSecurityGroupId;
  /// The type of WorkSpaces directory.
  final String workspaceType;

  /// Creates a new [GetDirectoryResult].
  /// [activeDirectoryConfigs] Configuration for Active Directory integration when `workspace_type` is set to `POOLS`.
  /// [alias] Directory alias.
  /// [certificateBasedAuthProperties] Required.
  /// [customerUserName] User name for the service account.
  /// [directoryId] Required.
  /// [directoryName] Name of the directory.
  /// [directoryType] Directory type.
  /// [dnsIpAddresses] IP addresses of the DNS servers for the directory.
  /// [iamRoleId] Identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipGroupIds] Identifiers of the IP access control groups associated with the directory.
  /// [region] Required.
  /// [registrationCode] Registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  /// [samlProperties] Required.
  /// [selfServicePermissions] The permissions to enable or disable self-service capabilities.
  /// [subnetIds] Identifiers of the subnets where the directory resides.
  /// [tags] A map of tags assigned to the WorkSpaces directory.
  /// [tenancy] Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  /// [userIdentityType] The user identity type for the WorkSpaces directory.
  /// [workspaceAccessProperties] Specifies which devices and operating systems users can use to access their WorkSpaces.
  /// [workspaceCreationProperties] The default properties that are used for creating WorkSpaces.
  /// [workspaceDirectoryDescription] The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceDirectoryName] The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceSecurityGroupId] The identifier of the security group that is assigned to new WorkSpaces.
  /// [workspaceType] The type of WorkSpaces directory.
  GetDirectoryResult({
    required this.activeDirectoryConfigs,
    required this.alias,
    required this.certificateBasedAuthProperties,
    required this.customerUserName,
    required this.directoryId,
    required this.directoryName,
    required this.directoryType,
    required this.dnsIpAddresses,
    required this.iamRoleId,
    required this.id,
    required this.ipGroupIds,
    required this.region,
    required this.registrationCode,
    required this.samlProperties,
    required this.selfServicePermissions,
    required this.subnetIds,
    required this.tags,
    required this.tenancy,
    required this.userIdentityType,
    required this.workspaceAccessProperties,
    required this.workspaceCreationProperties,
    required this.workspaceDirectoryDescription,
    required this.workspaceDirectoryName,
    required this.workspaceSecurityGroupId,
    required this.workspaceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigs': pulumi.Input.encodeList<GetDirectoryActiveDirectoryConfig, Map<String, dynamic>>(activeDirectoryConfigs, (value) => value.toMap()),
      'alias': alias,
      'certificateBasedAuthProperties': pulumi.Input.encodeList<GetDirectoryCertificateBasedAuthProperty, Map<String, dynamic>>(certificateBasedAuthProperties, (value) => value.toMap()),
      'customerUserName': customerUserName,
      'directoryId': directoryId,
      'directoryName': directoryName,
      'directoryType': directoryType,
      'dnsIpAddresses': dnsIpAddresses,
      'iamRoleId': iamRoleId,
      'id': id,
      'ipGroupIds': ipGroupIds,
      'region': region,
      'registrationCode': registrationCode,
      'samlProperties': pulumi.Input.encodeList<GetDirectorySamlProperty, Map<String, dynamic>>(samlProperties, (value) => value.toMap()),
      'selfServicePermissions': pulumi.Input.encodeList<GetDirectorySelfServicePermission, Map<String, dynamic>>(selfServicePermissions, (value) => value.toMap()),
      'subnetIds': subnetIds,
      'tags': tags,
      'tenancy': tenancy,
      'userIdentityType': userIdentityType,
      'workspaceAccessProperties': pulumi.Input.encodeList<GetDirectoryWorkspaceAccessProperty, Map<String, dynamic>>(workspaceAccessProperties, (value) => value.toMap()),
      'workspaceCreationProperties': pulumi.Input.encodeList<GetDirectoryWorkspaceCreationProperty, Map<String, dynamic>>(workspaceCreationProperties, (value) => value.toMap()),
      'workspaceDirectoryDescription': workspaceDirectoryDescription,
      'workspaceDirectoryName': workspaceDirectoryName,
      'workspaceSecurityGroupId': workspaceSecurityGroupId,
      'workspaceType': workspaceType,
    };
  }

  factory GetDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryResult(
      activeDirectoryConfigs: pulumi.Input.decodeList<GetDirectoryActiveDirectoryConfig>(map['activeDirectoryConfigs'], (value) => GetDirectoryActiveDirectoryConfig.fromMap((value as Map).cast<String, dynamic>())),
      alias: map['alias'] as String,
      certificateBasedAuthProperties: pulumi.Input.decodeList<GetDirectoryCertificateBasedAuthProperty>(map['certificateBasedAuthProperties'], (value) => GetDirectoryCertificateBasedAuthProperty.fromMap((value as Map).cast<String, dynamic>())),
      customerUserName: map['customerUserName'] as String,
      directoryId: map['directoryId'] as String,
      directoryName: map['directoryName'] as String,
      directoryType: map['directoryType'] as String,
      dnsIpAddresses: (map['dnsIpAddresses'] as List).cast<String>(),
      iamRoleId: map['iamRoleId'] as String,
      id: map['id'] as String,
      ipGroupIds: (map['ipGroupIds'] as List).cast<String>(),
      region: map['region'] as String,
      registrationCode: map['registrationCode'] as String,
      samlProperties: pulumi.Input.decodeList<GetDirectorySamlProperty>(map['samlProperties'], (value) => GetDirectorySamlProperty.fromMap((value as Map).cast<String, dynamic>())),
      selfServicePermissions: pulumi.Input.decodeList<GetDirectorySelfServicePermission>(map['selfServicePermissions'], (value) => GetDirectorySelfServicePermission.fromMap((value as Map).cast<String, dynamic>())),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      tenancy: map['tenancy'] as String,
      userIdentityType: map['userIdentityType'] as String,
      workspaceAccessProperties: pulumi.Input.decodeList<GetDirectoryWorkspaceAccessProperty>(map['workspaceAccessProperties'], (value) => GetDirectoryWorkspaceAccessProperty.fromMap((value as Map).cast<String, dynamic>())),
      workspaceCreationProperties: pulumi.Input.decodeList<GetDirectoryWorkspaceCreationProperty>(map['workspaceCreationProperties'], (value) => GetDirectoryWorkspaceCreationProperty.fromMap((value as Map).cast<String, dynamic>())),
      workspaceDirectoryDescription: map['workspaceDirectoryDescription'] as String,
      workspaceDirectoryName: map['workspaceDirectoryName'] as String,
      workspaceSecurityGroupId: map['workspaceSecurityGroupId'] as String,
      workspaceType: map['workspaceType'] as String,
    );
  }
}

