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
  /// Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
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
  /// Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  final pulumi.Input<DirectorySelfServicePermissions>? selfServicePermissions;
  /// The identifiers of the subnets where the directory resides.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final pulumi.Input<String>? tenancy;
  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// > **Note:** When `workspace_type` is set to `POOLS`, the `directory_id` is automatically generated and cannot be manually set.
  final pulumi.Input<String>? userIdentityType;
  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceAccessProperties>? workspaceAccessProperties;
  /// Default properties that are used for creating WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceCreationProperties>? workspaceCreationProperties;
  /// The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryDescription;
  /// The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryName;
  /// The identifier of the security group that is assigned to new WorkSpaces.
  final pulumi.Input<String>? workspaceSecurityGroupId;
  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  final pulumi.Input<String>? workspaceType;

  /// Creates a new [DirectoryState].
  /// [activeDirectoryConfig] Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
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
  /// [selfServicePermissions] Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  /// [subnetIds] The identifiers of the subnets where the directory resides.
  /// [tags] A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tenancy] Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  /// [userIdentityType] Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  /// [workspaceAccessProperties] Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  /// [workspaceCreationProperties] Default properties that are used for creating WorkSpaces. Defined below.
  /// [workspaceDirectoryDescription] The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceDirectoryName] The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceSecurityGroupId] The identifier of the security group that is assigned to new WorkSpaces.
  /// [workspaceType] Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  DirectoryState({
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
      activeDirectoryConfig: map['activeDirectoryConfig'] == null ? null : ((DirectoryActiveDirectoryConfig.fromMap((map['activeDirectoryConfig']! as Map).cast<String, dynamic>())).input()).input(),
      alias: map['alias'] == null ? null : ((map['alias'] as String).input()).input(),
      certificateBasedAuthProperties: map['certificateBasedAuthProperties'] == null ? null : ((DirectoryCertificateBasedAuthProperties.fromMap((map['certificateBasedAuthProperties']! as Map).cast<String, dynamic>())).input()).input(),
      customerUserName: map['customerUserName'] == null ? null : ((map['customerUserName'] as String).input()).input(),
      directoryId: map['directoryId'] == null ? null : ((map['directoryId'] as String).input()).input(),
      directoryName: map['directoryName'] == null ? null : ((map['directoryName'] as String).input()).input(),
      directoryType: map['directoryType'] == null ? null : ((map['directoryType'] as String).input()).input(),
      dnsIpAddresses: map['dnsIpAddresses'] == null ? null : (((map['dnsIpAddresses'] as List).cast<String>()).input()).input(),
      iamRoleId: map['iamRoleId'] == null ? null : ((map['iamRoleId'] as String).input()).input(),
      ipGroupIds: map['ipGroupIds'] == null ? null : (((map['ipGroupIds'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      registrationCode: map['registrationCode'] == null ? null : ((map['registrationCode'] as String).input()).input(),
      samlProperties: map['samlProperties'] == null ? null : ((DirectorySamlProperties.fromMap((map['samlProperties']! as Map).cast<String, dynamic>())).input()).input(),
      selfServicePermissions: map['selfServicePermissions'] == null ? null : ((DirectorySelfServicePermissions.fromMap((map['selfServicePermissions']! as Map).cast<String, dynamic>())).input()).input(),
      subnetIds: map['subnetIds'] == null ? null : (((map['subnetIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      tenancy: map['tenancy'] == null ? null : ((map['tenancy'] as String).input()).input(),
      userIdentityType: map['userIdentityType'] == null ? null : ((map['userIdentityType'] as String).input()).input(),
      workspaceAccessProperties: map['workspaceAccessProperties'] == null ? null : ((DirectoryWorkspaceAccessProperties.fromMap((map['workspaceAccessProperties']! as Map).cast<String, dynamic>())).input()).input(),
      workspaceCreationProperties: map['workspaceCreationProperties'] == null ? null : ((DirectoryWorkspaceCreationProperties.fromMap((map['workspaceCreationProperties']! as Map).cast<String, dynamic>())).input()).input(),
      workspaceDirectoryDescription: map['workspaceDirectoryDescription'] == null ? null : ((map['workspaceDirectoryDescription'] as String).input()).input(),
      workspaceDirectoryName: map['workspaceDirectoryName'] == null ? null : ((map['workspaceDirectoryName'] as String).input()).input(),
      workspaceSecurityGroupId: map['workspaceSecurityGroupId'] == null ? null : ((map['workspaceSecurityGroupId'] as String).input()).input(),
      workspaceType: map['workspaceType'] == null ? null : ((map['workspaceType'] as String).input()).input(),
    );
  }
}

