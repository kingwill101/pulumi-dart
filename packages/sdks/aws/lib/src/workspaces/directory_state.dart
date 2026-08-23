// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_active_directory_config.dart';
import 'directory_certificate_based_auth_properties.dart';
import 'directory_saml_properties.dart';
import 'directory_self_service_permissions.dart';
import 'directory_workspace_access_properties.dart';
import 'directory_workspace_creation_properties.dart';

/// Input properties used for looking up and filtering Directory resources.
class DirectoryState {
  /// Configuration for Active Directory integration when `workspaceType` is set to `POOLS`. Defined below.
  final pulumi.Input<DirectoryActiveDirectoryConfig>? activeDirectoryConfig;
  /// The directory alias.
  final pulumi.Input<String>? alias;
  /// Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  final pulumi.Input<DirectoryCertificateBasedAuthProperties>? certificateBasedAuthProperties;
  /// The user name for the service account.
  final pulumi.Input<String>? customerUserName;
  /// The directory identifier for registration in WorkSpaces service.
  final pulumi.Input<String>? directoryId;
  /// The name of the directory.
  final pulumi.Input<String>? directoryName;
  /// The directory type.
  final pulumi.Input<String>? directoryType;
  /// The IP addresses of the DNS servers for the directory.
  final pulumi.Input<List<String>>? dnsIpAddresses;
  /// The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  final pulumi.Input<String>? iamRoleId;
  /// The identifiers of the IP access control groups associated with the directory.
  final pulumi.Input<List<String>>? ipGroupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  final pulumi.Input<String>? registrationCode;
  /// Configuration of SAML authentication integration. Defined below.
  final pulumi.Input<DirectorySamlProperties>? samlProperties;
  /// Permissions to enable or disable self-service capabilities when `workspaceType` is set to `PERSONAL`.. Defined below.
  final pulumi.Input<DirectorySelfServicePermissions>? selfServicePermissions;
  /// The identifiers of the subnets where the directory resides.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final pulumi.Input<String>? tenancy;
  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// &gt; **Note:** When `workspaceType` is set to `POOLS`, the `directoryId` is automatically generated and cannot be manually set.
  final pulumi.Input<String>? userIdentityType;
  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceAccessProperties>? workspaceAccessProperties;
  /// Default properties that are used for creating WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceCreationProperties>? workspaceCreationProperties;
  /// The description of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryDescription;
  /// The name of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryName;
  /// The identifier of the security group that is assigned to new WorkSpaces.
  final pulumi.Input<String>? workspaceSecurityGroupId;
  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  final pulumi.Input<String>? workspaceType;

  /// Creates a new [DirectoryState].
  /// [activeDirectoryConfig] Configuration for Active Directory integration when `workspaceType` is set to `POOLS`. Defined below.
  /// [alias] The directory alias.
  /// [certificateBasedAuthProperties] Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  /// [customerUserName] The user name for the service account.
  /// [directoryId] The directory identifier for registration in WorkSpaces service.
  /// [directoryName] The name of the directory.
  /// [directoryType] The directory type.
  /// [dnsIpAddresses] The IP addresses of the DNS servers for the directory.
  /// [iamRoleId] The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  /// [ipGroupIds] The identifiers of the IP access control groups associated with the directory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationCode] The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  /// [samlProperties] Configuration of SAML authentication integration. Defined below.
  /// [selfServicePermissions] Permissions to enable or disable self-service capabilities when `workspaceType` is set to `PERSONAL`.. Defined below.
  /// [subnetIds] The identifiers of the subnets where the directory resides.
  /// [tags] A map of tags assigned to the WorkSpaces directory. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tenancy] Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  /// [userIdentityType] Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  /// [workspaceAccessProperties] Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  /// [workspaceCreationProperties] Default properties that are used for creating WorkSpaces. Defined below.
  /// [workspaceDirectoryDescription] The description of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  /// [workspaceDirectoryName] The name of the WorkSpaces directory when `workspaceType` is set to `POOLS`.
  /// [workspaceSecurityGroupId] The identifier of the security group that is assigned to new WorkSpaces.
  /// [workspaceType] Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  const DirectoryState({
    this.activeDirectoryConfig,
    this.alias,
    this.certificateBasedAuthProperties,
    this.customerUserName,
    this.directoryId,
    this.directoryName,
    this.directoryType,
    this.dnsIpAddresses,
    this.iamRoleId,
    this.ipGroupIds,
    this.region,
    this.registrationCode,
    this.samlProperties,
    this.selfServicePermissions,
    this.subnetIds,
    this.tags,
    this.tagsAll,
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
      'activeDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<DirectoryActiveDirectoryConfig, Map<String, dynamic>>(activeDirectoryConfig, (value) => value.toMap()),
      'alias': ?alias,
      'certificateBasedAuthProperties': ?pulumi.Input.mapOptionalInputValue<DirectoryCertificateBasedAuthProperties, Map<String, dynamic>>(certificateBasedAuthProperties, (value) => value.toMap()),
      'customerUserName': ?customerUserName,
      'directoryId': ?directoryId,
      'directoryName': ?directoryName,
      'directoryType': ?directoryType,
      'dnsIpAddresses': ?dnsIpAddresses,
      'iamRoleId': ?iamRoleId,
      'ipGroupIds': ?ipGroupIds,
      'region': ?region,
      'registrationCode': ?registrationCode,
      'samlProperties': ?pulumi.Input.mapOptionalInputValue<DirectorySamlProperties, Map<String, dynamic>>(samlProperties, (value) => value.toMap()),
      'selfServicePermissions': ?pulumi.Input.mapOptionalInputValue<DirectorySelfServicePermissions, Map<String, dynamic>>(selfServicePermissions, (value) => value.toMap()),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenancy': ?tenancy,
      'userIdentityType': ?userIdentityType,
      'workspaceAccessProperties': ?pulumi.Input.mapOptionalInputValue<DirectoryWorkspaceAccessProperties, Map<String, dynamic>>(workspaceAccessProperties, (value) => value.toMap()),
      'workspaceCreationProperties': ?pulumi.Input.mapOptionalInputValue<DirectoryWorkspaceCreationProperties, Map<String, dynamic>>(workspaceCreationProperties, (value) => value.toMap()),
      'workspaceDirectoryDescription': ?workspaceDirectoryDescription,
      'workspaceDirectoryName': ?workspaceDirectoryName,
      'workspaceSecurityGroupId': ?workspaceSecurityGroupId,
      'workspaceType': ?workspaceType,
    };
  }

  factory DirectoryState.fromMap(Map<String, dynamic> map) {
    return DirectoryState(
      activeDirectoryConfig: (() { final guardedValue = map['activeDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryActiveDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateBasedAuthProperties: (() { final guardedValue = map['certificateBasedAuthProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryCertificateBasedAuthProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customerUserName: (() { final guardedValue = map['customerUserName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryName: (() { final guardedValue = map['directoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryType: (() { final guardedValue = map['directoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsIpAddresses: (() { final guardedValue = map['dnsIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      iamRoleId: (() { final guardedValue = map['iamRoleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipGroupIds: (() { final guardedValue = map['ipGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationCode: (() { final guardedValue = map['registrationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlProperties: (() { final guardedValue = map['samlProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectorySamlProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfServicePermissions: (() { final guardedValue = map['selfServicePermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectorySelfServicePermissions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userIdentityType: (() { final guardedValue = map['userIdentityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceAccessProperties: (() { final guardedValue = map['workspaceAccessProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryWorkspaceAccessProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceCreationProperties: (() { final guardedValue = map['workspaceCreationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryWorkspaceCreationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceDirectoryDescription: (() { final guardedValue = map['workspaceDirectoryDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceDirectoryName: (() { final guardedValue = map['workspaceDirectoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceSecurityGroupId: (() { final guardedValue = map['workspaceSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceType: (() { final guardedValue = map['workspaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
