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
    pulumi.Output<DirectoryActiveDirectoryConfig>? activeDirectoryConfig,
    pulumi.Output<String>? alias,
    pulumi.Output<DirectoryCertificateBasedAuthProperties>? certificateBasedAuthProperties,
    pulumi.Output<String>? customerUserName,
    pulumi.Output<String>? directoryId,
    pulumi.Output<String>? directoryName,
    pulumi.Output<String>? directoryType,
    pulumi.Output<List<String>>? dnsIpAddresses,
    pulumi.Output<String>? iamRoleId,
    pulumi.Output<List<String>>? ipGroupIds,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registrationCode,
    pulumi.Output<DirectorySamlProperties>? samlProperties,
    pulumi.Output<DirectorySelfServicePermissions>? selfServicePermissions,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenancy,
    pulumi.Output<String>? userIdentityType,
    pulumi.Output<DirectoryWorkspaceAccessProperties>? workspaceAccessProperties,
    pulumi.Output<DirectoryWorkspaceCreationProperties>? workspaceCreationProperties,
    pulumi.Output<String>? workspaceDirectoryDescription,
    pulumi.Output<String>? workspaceDirectoryName,
    pulumi.Output<String>? workspaceSecurityGroupId,
    pulumi.Output<String>? workspaceType,
  }) :
      activeDirectoryConfig = pulumi.Input.asOptionalInput<DirectoryActiveDirectoryConfig>(activeDirectoryConfig),
      alias = pulumi.Input.asOptionalInput<String>(alias),
      certificateBasedAuthProperties = pulumi.Input.asOptionalInput<DirectoryCertificateBasedAuthProperties>(certificateBasedAuthProperties),
      customerUserName = pulumi.Input.asOptionalInput<String>(customerUserName),
      directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
      directoryName = pulumi.Input.asOptionalInput<String>(directoryName),
      directoryType = pulumi.Input.asOptionalInput<String>(directoryType),
      dnsIpAddresses = pulumi.Input.asOptionalInput<List<String>>(dnsIpAddresses),
      iamRoleId = pulumi.Input.asOptionalInput<String>(iamRoleId),
      ipGroupIds = pulumi.Input.asOptionalInput<List<String>>(ipGroupIds),
      region = pulumi.Input.asOptionalInput<String>(region),
      registrationCode = pulumi.Input.asOptionalInput<String>(registrationCode),
      samlProperties = pulumi.Input.asOptionalInput<DirectorySamlProperties>(samlProperties),
      selfServicePermissions = pulumi.Input.asOptionalInput<DirectorySelfServicePermissions>(selfServicePermissions),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenancy = pulumi.Input.asOptionalInput<String>(tenancy),
      userIdentityType = pulumi.Input.asOptionalInput<String>(userIdentityType),
      workspaceAccessProperties = pulumi.Input.asOptionalInput<DirectoryWorkspaceAccessProperties>(workspaceAccessProperties),
      workspaceCreationProperties = pulumi.Input.asOptionalInput<DirectoryWorkspaceCreationProperties>(workspaceCreationProperties),
      workspaceDirectoryDescription = pulumi.Input.asOptionalInput<String>(workspaceDirectoryDescription),
      workspaceDirectoryName = pulumi.Input.asOptionalInput<String>(workspaceDirectoryName),
      workspaceSecurityGroupId = pulumi.Input.asOptionalInput<String>(workspaceSecurityGroupId),
      workspaceType = pulumi.Input.asOptionalInput<String>(workspaceType);

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
      activeDirectoryConfig: map['activeDirectoryConfig'] == null ? null : pulumi.Output.create<DirectoryActiveDirectoryConfig>(DirectoryActiveDirectoryConfig.fromMap((map['activeDirectoryConfig'] as Map).cast<String, dynamic>())),
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      certificateBasedAuthProperties: map['certificateBasedAuthProperties'] == null ? null : pulumi.Output.create<DirectoryCertificateBasedAuthProperties>(DirectoryCertificateBasedAuthProperties.fromMap((map['certificateBasedAuthProperties'] as Map).cast<String, dynamic>())),
      customerUserName: map['customerUserName'] == null ? null : pulumi.Output.create<String>(map['customerUserName'] as String),
      directoryId: map['directoryId'] == null ? null : pulumi.Output.create<String>(map['directoryId'] as String),
      directoryName: map['directoryName'] == null ? null : pulumi.Output.create<String>(map['directoryName'] as String),
      directoryType: map['directoryType'] == null ? null : pulumi.Output.create<String>(map['directoryType'] as String),
      dnsIpAddresses: map['dnsIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['dnsIpAddresses'] as List).cast<String>()),
      iamRoleId: map['iamRoleId'] == null ? null : pulumi.Output.create<String>(map['iamRoleId'] as String),
      ipGroupIds: map['ipGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['ipGroupIds'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registrationCode: map['registrationCode'] == null ? null : pulumi.Output.create<String>(map['registrationCode'] as String),
      samlProperties: map['samlProperties'] == null ? null : pulumi.Output.create<DirectorySamlProperties>(DirectorySamlProperties.fromMap((map['samlProperties'] as Map).cast<String, dynamic>())),
      selfServicePermissions: map['selfServicePermissions'] == null ? null : pulumi.Output.create<DirectorySelfServicePermissions>(DirectorySelfServicePermissions.fromMap((map['selfServicePermissions'] as Map).cast<String, dynamic>())),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenancy: map['tenancy'] == null ? null : pulumi.Output.create<String>(map['tenancy'] as String),
      userIdentityType: map['userIdentityType'] == null ? null : pulumi.Output.create<String>(map['userIdentityType'] as String),
      workspaceAccessProperties: map['workspaceAccessProperties'] == null ? null : pulumi.Output.create<DirectoryWorkspaceAccessProperties>(DirectoryWorkspaceAccessProperties.fromMap((map['workspaceAccessProperties'] as Map).cast<String, dynamic>())),
      workspaceCreationProperties: map['workspaceCreationProperties'] == null ? null : pulumi.Output.create<DirectoryWorkspaceCreationProperties>(DirectoryWorkspaceCreationProperties.fromMap((map['workspaceCreationProperties'] as Map).cast<String, dynamic>())),
      workspaceDirectoryDescription: map['workspaceDirectoryDescription'] == null ? null : pulumi.Output.create<String>(map['workspaceDirectoryDescription'] as String),
      workspaceDirectoryName: map['workspaceDirectoryName'] == null ? null : pulumi.Output.create<String>(map['workspaceDirectoryName'] as String),
      workspaceSecurityGroupId: map['workspaceSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['workspaceSecurityGroupId'] as String),
      workspaceType: map['workspaceType'] == null ? null : pulumi.Output.create<String>(map['workspaceType'] as String),
    );
  }
}

