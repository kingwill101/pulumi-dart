// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../directory_active_directory_config/directory_active_directory_config.dart';
import '../directory_certificate_based_auth_properties/directory_certificate_based_auth_properties.dart';
import '../directory_saml_properties/directory_saml_properties.dart';
import '../directory_self_service_permissions/directory_self_service_permissions.dart';
import '../directory_workspace_access_properties/directory_workspace_access_properties.dart';
import '../directory_workspace_creation_properties/directory_workspace_creation_properties.dart';

/// The set of arguments for Directory.
class DirectoryArgs2 {
  /// Configuration for Active Directory integration when <span pulumi-lang-nodejs="`workspaceType`" pulumi-lang-dotnet="`WorkspaceType`" pulumi-lang-go="`workspaceType`" pulumi-lang-python="`workspace_type`" pulumi-lang-yaml="`workspaceType`" pulumi-lang-java="`workspaceType`">`workspace_type`</span> is set to `POOLS`. Defined below.
  final Input<DirectoryActiveDirectoryConfig>? activeDirectoryConfig;

  /// Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  final Input<DirectoryCertificateBasedAuthProperties>?
      certificateBasedAuthProperties;

  /// The directory identifier for registration in WorkSpaces service.
  final Input<String>? directoryId;

  /// The identifiers of the IP access control groups associated with the directory.
  final Input<List<String>>? ipGroupIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration of SAML authentication integration. Defined below.
  final Input<DirectorySamlProperties>? samlProperties;

  /// Permissions to enable or disable self-service capabilities when <span pulumi-lang-nodejs="`workspaceType`" pulumi-lang-dotnet="`WorkspaceType`" pulumi-lang-go="`workspaceType`" pulumi-lang-python="`workspace_type`" pulumi-lang-yaml="`workspaceType`" pulumi-lang-java="`workspaceType`">`workspace_type`</span> is set to `PERSONAL`.. Defined below.
  final Input<DirectorySelfServicePermissions>? selfServicePermissions;

  /// The identifiers of the subnets where the directory resides.
  final Input<List<String>>? subnetIds;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final Input<String>? tenancy;

  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// > **Note:** When <span pulumi-lang-nodejs="`workspaceType`" pulumi-lang-dotnet="`WorkspaceType`" pulumi-lang-go="`workspaceType`" pulumi-lang-python="`workspace_type`" pulumi-lang-yaml="`workspaceType`" pulumi-lang-java="`workspaceType`">`workspace_type`</span> is set to `POOLS`, the <span pulumi-lang-nodejs="`directoryId`" pulumi-lang-dotnet="`DirectoryId`" pulumi-lang-go="`directoryId`" pulumi-lang-python="`directory_id`" pulumi-lang-yaml="`directoryId`" pulumi-lang-java="`directoryId`">`directory_id`</span> is automatically generated and cannot be manually set.
  final Input<String>? userIdentityType;

  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  final Input<DirectoryWorkspaceAccessProperties>? workspaceAccessProperties;

  /// Default properties that are used for creating WorkSpaces. Defined below.
  final Input<DirectoryWorkspaceCreationProperties>?
      workspaceCreationProperties;

  /// The description of the WorkSpaces directory when <span pulumi-lang-nodejs="`workspaceType`" pulumi-lang-dotnet="`WorkspaceType`" pulumi-lang-go="`workspaceType`" pulumi-lang-python="`workspace_type`" pulumi-lang-yaml="`workspaceType`" pulumi-lang-java="`workspaceType`">`workspace_type`</span> is set to `POOLS`.
  final Input<String>? workspaceDirectoryDescription;

  /// The name of the WorkSpaces directory when <span pulumi-lang-nodejs="`workspaceType`" pulumi-lang-dotnet="`WorkspaceType`" pulumi-lang-go="`workspaceType`" pulumi-lang-python="`workspace_type`" pulumi-lang-yaml="`workspaceType`" pulumi-lang-java="`workspaceType`">`workspace_type`</span> is set to `POOLS`.
  final Input<String>? workspaceDirectoryName;

  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  final Input<String>? workspaceType;

  DirectoryArgs2({
    this.activeDirectoryConfig,
    this.certificateBasedAuthProperties,
    this.directoryId,
    this.ipGroupIds,
    this.region,
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
    this.workspaceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activeDirectoryConfigValue = activeDirectoryConfig;
    if (activeDirectoryConfigValue != null) {
      map['activeDirectoryConfig'] = Input.mapOptionalInputValue<
              DirectoryActiveDirectoryConfig, Map<String, dynamic>>(
          activeDirectoryConfigValue, (value) => value.toMap());
    }
    final certificateBasedAuthPropertiesValue = certificateBasedAuthProperties;
    if (certificateBasedAuthPropertiesValue != null) {
      map['certificateBasedAuthProperties'] = Input.mapOptionalInputValue<
              DirectoryCertificateBasedAuthProperties, Map<String, dynamic>>(
          certificateBasedAuthPropertiesValue, (value) => value.toMap());
    }
    final directoryIdValue = directoryId;
    if (directoryIdValue != null) {
      map['directoryId'] = directoryIdValue;
    }
    final ipGroupIdsValue = ipGroupIds;
    if (ipGroupIdsValue != null) {
      map['ipGroupIds'] = ipGroupIdsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlPropertiesValue = samlProperties;
    if (samlPropertiesValue != null) {
      map['samlProperties'] = Input.mapOptionalInputValue<
          DirectorySamlProperties,
          Map<String, dynamic>>(samlPropertiesValue, (value) => value.toMap());
    }
    final selfServicePermissionsValue = selfServicePermissions;
    if (selfServicePermissionsValue != null) {
      map['selfServicePermissions'] = Input.mapOptionalInputValue<
              DirectorySelfServicePermissions, Map<String, dynamic>>(
          selfServicePermissionsValue, (value) => value.toMap());
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    final userIdentityTypeValue = userIdentityType;
    if (userIdentityTypeValue != null) {
      map['userIdentityType'] = userIdentityTypeValue;
    }
    final workspaceAccessPropertiesValue = workspaceAccessProperties;
    if (workspaceAccessPropertiesValue != null) {
      map['workspaceAccessProperties'] = Input.mapOptionalInputValue<
              DirectoryWorkspaceAccessProperties, Map<String, dynamic>>(
          workspaceAccessPropertiesValue, (value) => value.toMap());
    }
    final workspaceCreationPropertiesValue = workspaceCreationProperties;
    if (workspaceCreationPropertiesValue != null) {
      map['workspaceCreationProperties'] = Input.mapOptionalInputValue<
              DirectoryWorkspaceCreationProperties, Map<String, dynamic>>(
          workspaceCreationPropertiesValue, (value) => value.toMap());
    }
    final workspaceDirectoryDescriptionValue = workspaceDirectoryDescription;
    if (workspaceDirectoryDescriptionValue != null) {
      map['workspaceDirectoryDescription'] = workspaceDirectoryDescriptionValue;
    }
    final workspaceDirectoryNameValue = workspaceDirectoryName;
    if (workspaceDirectoryNameValue != null) {
      map['workspaceDirectoryName'] = workspaceDirectoryNameValue;
    }
    final workspaceTypeValue = workspaceType;
    if (workspaceTypeValue != null) {
      map['workspaceType'] = workspaceTypeValue;
    }
    return map;
  }

  factory DirectoryArgs2.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs2(
      activeDirectoryConfig:
          Input.asOptionalInput<DirectoryActiveDirectoryConfig>(
              map['activeDirectoryConfig']),
      certificateBasedAuthProperties:
          Input.asOptionalInput<DirectoryCertificateBasedAuthProperties>(
              map['certificateBasedAuthProperties']),
      directoryId: Input.asOptionalInput<String>(map['directoryId']),
      ipGroupIds: Input.asOptionalInput<List<String>>(map['ipGroupIds']),
      region: Input.asOptionalInput<String>(map['region']),
      samlProperties:
          Input.asOptionalInput<DirectorySamlProperties>(map['samlProperties']),
      selfServicePermissions:
          Input.asOptionalInput<DirectorySelfServicePermissions>(
              map['selfServicePermissions']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancy: Input.asOptionalInput<String>(map['tenancy']),
      userIdentityType: Input.asOptionalInput<String>(map['userIdentityType']),
      workspaceAccessProperties:
          Input.asOptionalInput<DirectoryWorkspaceAccessProperties>(
              map['workspaceAccessProperties']),
      workspaceCreationProperties:
          Input.asOptionalInput<DirectoryWorkspaceCreationProperties>(
              map['workspaceCreationProperties']),
      workspaceDirectoryDescription:
          Input.asOptionalInput<String>(map['workspaceDirectoryDescription']),
      workspaceDirectoryName:
          Input.asOptionalInput<String>(map['workspaceDirectoryName']),
      workspaceType: Input.asOptionalInput<String>(map['workspaceType']),
    );
  }
}
