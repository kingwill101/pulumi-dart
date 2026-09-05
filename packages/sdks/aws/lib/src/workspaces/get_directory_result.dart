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
  /// Configuration for Active Directory integration when `workspaceType` is set to `POOLS`.
  final List<GetDirectoryActiveDirectoryConfig>? activeDirectoryConfigs;
  /// Directory alias.
  final String? alias;
  final List<GetDirectoryCertificateBasedAuthProperty>? certificateBasedAuthProperties;
  /// User name for the service account.
  final String? customerUserName;
  final String? directoryId;
  /// Name of the directory.
  final String? directoryName;
  /// Directory type.
  final String? directoryType;
  /// IP addresses of the DNS servers for the directory.
  final List<String>? dnsIpAddresses;
  /// Identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  final String? iamRoleId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Identifiers of the IP access control groups associated with the directory.
  final List<String>? ipGroupIds;
  final String? region;
  /// Registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  final String? registrationCode;
  final List<GetDirectorySamlProperty>? samlProperties;
  /// The permissions to enable or disable self-service capabilities.
  final List<GetDirectorySelfServicePermission>? selfServicePermissions;
  /// Identifiers of the subnets where the directory resides.
  final List<String>? subnetIds;
  /// A map of tags assigned to the WorkSpaces directory.
  final Map<String, String>? tags;
  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final String? tenancy;
  /// The user identity type for the WorkSpaces directory.
  final String? userIdentityType;
  /// Specifies which devices and operating systems users can use to access their WorkSpaces.
  final List<GetDirectoryWorkspaceAccessProperty>? workspaceAccessProperties;
  /// The default properties that are used for creating WorkSpaces.
  final List<GetDirectoryWorkspaceCreationProperty>? workspaceCreationProperties;
  /// The description of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  final String? workspaceDirectoryDescription;
  /// The name of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  final String? workspaceDirectoryName;
  /// The identifier of the security group that is assigned to new WorkSpaces.
  final String? workspaceSecurityGroupId;
  /// The type of WorkSpaces directory.
  final String? workspaceType;

  /// Creates a new [GetDirectoryResult].
  /// [activeDirectoryConfigs] Configuration for Active Directory integration when `workspaceType` is set to `POOLS`.
  /// [alias] Directory alias.
  /// [certificateBasedAuthProperties] Optional.
  /// [customerUserName] User name for the service account.
  /// [directoryId] Optional.
  /// [directoryName] Name of the directory.
  /// [directoryType] Directory type.
  /// [dnsIpAddresses] IP addresses of the DNS servers for the directory.
  /// [iamRoleId] Identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipGroupIds] Identifiers of the IP access control groups associated with the directory.
  /// [region] Optional.
  /// [registrationCode] Registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  /// [samlProperties] Optional.
  /// [selfServicePermissions] The permissions to enable or disable self-service capabilities.
  /// [subnetIds] Identifiers of the subnets where the directory resides.
  /// [tags] A map of tags assigned to the WorkSpaces directory.
  /// [tenancy] Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  /// [userIdentityType] The user identity type for the WorkSpaces directory.
  /// [workspaceAccessProperties] Specifies which devices and operating systems users can use to access their WorkSpaces.
  /// [workspaceCreationProperties] The default properties that are used for creating WorkSpaces.
  /// [workspaceDirectoryDescription] The description of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  /// [workspaceDirectoryName] The name of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  /// [workspaceSecurityGroupId] The identifier of the security group that is assigned to new WorkSpaces.
  /// [workspaceType] The type of WorkSpaces directory.
  const GetDirectoryResult({
    this.activeDirectoryConfigs,
    this.alias,
    this.certificateBasedAuthProperties,
    this.customerUserName,
    this.directoryId,
    this.directoryName,
    this.directoryType,
    this.dnsIpAddresses,
    this.iamRoleId,
    this.id,
    this.ipGroupIds,
    this.region,
    this.registrationCode,
    this.samlProperties,
    this.selfServicePermissions,
    this.subnetIds,
    this.tags,
    this.tenancy,
    this.userIdentityType,
    this.workspaceAccessProperties,
    this.workspaceCreationProperties,
    this.workspaceDirectoryDescription,
    this.workspaceDirectoryName,
    this.workspaceSecurityGroupId,
    this.workspaceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigs': ?(() { final guardedValue = activeDirectoryConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryActiveDirectoryConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'alias': ?alias,
      'certificateBasedAuthProperties': ?(() { final guardedValue = certificateBasedAuthProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryCertificateBasedAuthProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customerUserName': ?customerUserName,
      'directoryId': ?directoryId,
      'directoryName': ?directoryName,
      'directoryType': ?directoryType,
      'dnsIpAddresses': ?dnsIpAddresses,
      'iamRoleId': ?iamRoleId,
      'id': ?id,
      'ipGroupIds': ?ipGroupIds,
      'region': ?region,
      'registrationCode': ?registrationCode,
      'samlProperties': ?(() { final guardedValue = samlProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectorySamlProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfServicePermissions': ?(() { final guardedValue = selfServicePermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectorySelfServicePermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tenancy': ?tenancy,
      'userIdentityType': ?userIdentityType,
      'workspaceAccessProperties': ?(() { final guardedValue = workspaceAccessProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryWorkspaceAccessProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workspaceCreationProperties': ?(() { final guardedValue = workspaceCreationProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectoryWorkspaceCreationProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workspaceDirectoryDescription': ?workspaceDirectoryDescription,
      'workspaceDirectoryName': ?workspaceDirectoryName,
      'workspaceSecurityGroupId': ?workspaceSecurityGroupId,
      'workspaceType': ?workspaceType,
    };
  }

  factory GetDirectoryResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryResult(
      activeDirectoryConfigs: (() { final guardedValue = map['activeDirectoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryActiveDirectoryConfig>(guardedValue, (value) => GetDirectoryActiveDirectoryConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateBasedAuthProperties: (() { final guardedValue = map['certificateBasedAuthProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryCertificateBasedAuthProperty>(guardedValue, (value) => GetDirectoryCertificateBasedAuthProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      customerUserName: (() { final guardedValue = map['customerUserName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryName: (() { final guardedValue = map['directoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryType: (() { final guardedValue = map['directoryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsIpAddresses: (() { final guardedValue = map['dnsIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      iamRoleId: (() { final guardedValue = map['iamRoleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipGroupIds: (() { final guardedValue = map['ipGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationCode: (() { final guardedValue = map['registrationCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samlProperties: (() { final guardedValue = map['samlProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectorySamlProperty>(guardedValue, (value) => GetDirectorySamlProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfServicePermissions: (() { final guardedValue = map['selfServicePermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectorySelfServicePermission>(guardedValue, (value) => GetDirectorySelfServicePermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userIdentityType: (() { final guardedValue = map['userIdentityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceAccessProperties: (() { final guardedValue = map['workspaceAccessProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryWorkspaceAccessProperty>(guardedValue, (value) => GetDirectoryWorkspaceAccessProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      workspaceCreationProperties: (() { final guardedValue = map['workspaceCreationProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectoryWorkspaceCreationProperty>(guardedValue, (value) => GetDirectoryWorkspaceCreationProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      workspaceDirectoryDescription: (() { final guardedValue = map['workspaceDirectoryDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceDirectoryName: (() { final guardedValue = map['workspaceDirectoryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceSecurityGroupId: (() { final guardedValue = map['workspaceSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceType: (() { final guardedValue = map['workspaceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
