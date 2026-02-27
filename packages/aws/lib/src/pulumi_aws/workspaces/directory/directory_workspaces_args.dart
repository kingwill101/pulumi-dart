// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_active_directory_config/directory_active_directory_config.dart';
import '../directory_certificate_based_auth_properties/directory_certificate_based_auth_properties.dart';
import '../directory_saml_properties/directory_saml_properties.dart';
import '../directory_self_service_permissions/directory_self_service_permissions.dart';
import '../directory_workspace_access_properties/directory_workspace_access_properties.dart';
import '../directory_workspace_creation_properties/directory_workspace_creation_properties.dart';

/// The set of arguments for Directory.
class DirectoryWorkspacesArgs {
  /// Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
  final pulumi.Input<DirectoryActiveDirectoryConfig>? activeDirectoryConfig;

  /// Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  final pulumi.Input<DirectoryCertificateBasedAuthProperties>?
      certificateBasedAuthProperties;

  /// The directory identifier for registration in WorkSpaces service.
  final pulumi.Input<String>? directoryId;

  /// The identifiers of the IP access control groups associated with the directory.
  final pulumi.Input<List<String>>? ipGroupIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration of SAML authentication integration. Defined below.
  final pulumi.Input<DirectorySamlProperties>? samlProperties;

  /// Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  final pulumi.Input<DirectorySelfServicePermissions>? selfServicePermissions;

  /// The identifiers of the subnets where the directory resides.
  final pulumi.Input<List<String>>? subnetIds;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  final pulumi.Input<String>? tenancy;

  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// > **Note:** When `workspace_type` is set to `POOLS`, the `directory_id` is automatically generated and cannot be manually set.
  final pulumi.Input<String>? userIdentityType;

  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceAccessProperties>?
      workspaceAccessProperties;

  /// Default properties that are used for creating WorkSpaces. Defined below.
  final pulumi.Input<DirectoryWorkspaceCreationProperties>?
      workspaceCreationProperties;

  /// The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryDescription;

  /// The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  final pulumi.Input<String>? workspaceDirectoryName;

  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  final pulumi.Input<String>? workspaceType;

  DirectoryWorkspacesArgs({
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
      map['activeDirectoryConfig'] = pulumi.Input.mapOptionalInputValue<
              DirectoryActiveDirectoryConfig, Map<String, dynamic>>(
          activeDirectoryConfigValue, (value) => value.toMap());
    }
    final certificateBasedAuthPropertiesValue = certificateBasedAuthProperties;
    if (certificateBasedAuthPropertiesValue != null) {
      map['certificateBasedAuthProperties'] =
          pulumi.Input.mapOptionalInputValue<
                  DirectoryCertificateBasedAuthProperties,
                  Map<String, dynamic>>(
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
      map['samlProperties'] = pulumi.Input.mapOptionalInputValue<
          DirectorySamlProperties,
          Map<String, dynamic>>(samlPropertiesValue, (value) => value.toMap());
    }
    final selfServicePermissionsValue = selfServicePermissions;
    if (selfServicePermissionsValue != null) {
      map['selfServicePermissions'] = pulumi.Input.mapOptionalInputValue<
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
      map['workspaceAccessProperties'] = pulumi.Input.mapOptionalInputValue<
              DirectoryWorkspaceAccessProperties, Map<String, dynamic>>(
          workspaceAccessPropertiesValue, (value) => value.toMap());
    }
    final workspaceCreationPropertiesValue = workspaceCreationProperties;
    if (workspaceCreationPropertiesValue != null) {
      map['workspaceCreationProperties'] = pulumi.Input.mapOptionalInputValue<
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

  factory DirectoryWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryWorkspacesArgs(
      activeDirectoryConfig:
          pulumi.Input.asOptionalInput<DirectoryActiveDirectoryConfig>(
              map['activeDirectoryConfig']),
      certificateBasedAuthProperties:
          pulumi.Input.asOptionalInput<DirectoryCertificateBasedAuthProperties>(
              map['certificateBasedAuthProperties']),
      directoryId: pulumi.Input.asOptionalInput<String>(map['directoryId']),
      ipGroupIds: pulumi.Input.asOptionalInput<List<String>>(map['ipGroupIds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      samlProperties: pulumi.Input.asOptionalInput<DirectorySamlProperties>(
          map['samlProperties']),
      selfServicePermissions:
          pulumi.Input.asOptionalInput<DirectorySelfServicePermissions>(
              map['selfServicePermissions']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancy: pulumi.Input.asOptionalInput<String>(map['tenancy']),
      userIdentityType:
          pulumi.Input.asOptionalInput<String>(map['userIdentityType']),
      workspaceAccessProperties:
          pulumi.Input.asOptionalInput<DirectoryWorkspaceAccessProperties>(
              map['workspaceAccessProperties']),
      workspaceCreationProperties:
          pulumi.Input.asOptionalInput<DirectoryWorkspaceCreationProperties>(
              map['workspaceCreationProperties']),
      workspaceDirectoryDescription: pulumi.Input.asOptionalInput<String>(
          map['workspaceDirectoryDescription']),
      workspaceDirectoryName:
          pulumi.Input.asOptionalInput<String>(map['workspaceDirectoryName']),
      workspaceType: pulumi.Input.asOptionalInput<String>(map['workspaceType']),
    );
  }
}
