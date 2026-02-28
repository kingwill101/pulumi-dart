// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_active_directory_config.dart';
import 'directory_certificate_based_auth_properties.dart';
import 'directory_saml_properties.dart';
import 'directory_self_service_permissions.dart';
import 'directory_workspace_access_properties.dart';
import 'directory_workspace_creation_properties.dart';

/// {@template pulumi_workspaces_directory_directory_args_doc}
/// The set of arguments for Directory.
/// {@endtemplate}
/// {@macro pulumi_workspaces_directory_directory_args_doc}
class DirectoryArgs {
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

  /// Creates a new [DirectoryArgs].
  /// [activeDirectoryConfig] Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
  /// [certificateBasedAuthProperties] Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  /// [directoryId] The directory identifier for registration in WorkSpaces service.
  /// [ipGroupIds] The identifiers of the IP access control groups associated with the directory.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlProperties] Configuration of SAML authentication integration. Defined below.
  /// [selfServicePermissions] Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  /// [subnetIds] The identifiers of the subnets where the directory resides.
  /// [tags] A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenancy] Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  /// [userIdentityType] Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  /// [workspaceAccessProperties] Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  /// [workspaceCreationProperties] Default properties that are used for creating WorkSpaces. Defined below.
  /// [workspaceDirectoryDescription] The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceDirectoryName] The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  /// [workspaceType] Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  DirectoryArgs({
    DirectoryActiveDirectoryConfig? activeDirectoryConfig,
    DirectoryCertificateBasedAuthProperties? certificateBasedAuthProperties,
    String? directoryId,
    List<String>? ipGroupIds,
    String? region,
    DirectorySamlProperties? samlProperties,
    DirectorySelfServicePermissions? selfServicePermissions,
    List<String>? subnetIds,
    Map<String, String>? tags,
    String? tenancy,
    String? userIdentityType,
    DirectoryWorkspaceAccessProperties? workspaceAccessProperties,
    DirectoryWorkspaceCreationProperties? workspaceCreationProperties,
    String? workspaceDirectoryDescription,
    String? workspaceDirectoryName,
    String? workspaceType,
  })  : activeDirectoryConfig =
            pulumi.Input.asOptionalInput<DirectoryActiveDirectoryConfig>(
                activeDirectoryConfig),
        certificateBasedAuthProperties = pulumi.Input.asOptionalInput<
                DirectoryCertificateBasedAuthProperties>(
            certificateBasedAuthProperties),
        directoryId = pulumi.Input.asOptionalInput<String>(directoryId),
        ipGroupIds = pulumi.Input.asOptionalInput<List<String>>(ipGroupIds),
        region = pulumi.Input.asOptionalInput<String>(region),
        samlProperties = pulumi.Input.asOptionalInput<DirectorySamlProperties>(
            samlProperties),
        selfServicePermissions =
            pulumi.Input.asOptionalInput<DirectorySelfServicePermissions>(
                selfServicePermissions),
        subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        tenancy = pulumi.Input.asOptionalInput<String>(tenancy),
        userIdentityType =
            pulumi.Input.asOptionalInput<String>(userIdentityType),
        workspaceAccessProperties =
            pulumi.Input.asOptionalInput<DirectoryWorkspaceAccessProperties>(
                workspaceAccessProperties),
        workspaceCreationProperties =
            pulumi.Input.asOptionalInput<DirectoryWorkspaceCreationProperties>(
                workspaceCreationProperties),
        workspaceDirectoryDescription =
            pulumi.Input.asOptionalInput<String>(workspaceDirectoryDescription),
        workspaceDirectoryName =
            pulumi.Input.asOptionalInput<String>(workspaceDirectoryName),
        workspaceType = pulumi.Input.asOptionalInput<String>(workspaceType);

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

  factory DirectoryArgs.fromMap(Map<String, dynamic> map) {
    return DirectoryArgs(
      activeDirectoryConfig: map['activeDirectoryConfig'] == null
          ? null
          : DirectoryActiveDirectoryConfig.fromMap(
              (map['activeDirectoryConfig'] as Map).cast<String, dynamic>()),
      certificateBasedAuthProperties:
          map['certificateBasedAuthProperties'] == null
              ? null
              : DirectoryCertificateBasedAuthProperties.fromMap(
                  (map['certificateBasedAuthProperties'] as Map)
                      .cast<String, dynamic>()),
      directoryId:
          map['directoryId'] == null ? null : map['directoryId'] as String,
      ipGroupIds: map['ipGroupIds'] == null
          ? null
          : (map['ipGroupIds'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      samlProperties: map['samlProperties'] == null
          ? null
          : DirectorySamlProperties.fromMap(
              (map['samlProperties'] as Map).cast<String, dynamic>()),
      selfServicePermissions: map['selfServicePermissions'] == null
          ? null
          : DirectorySelfServicePermissions.fromMap(
              (map['selfServicePermissions'] as Map).cast<String, dynamic>()),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
      userIdentityType: map['userIdentityType'] == null
          ? null
          : map['userIdentityType'] as String,
      workspaceAccessProperties: map['workspaceAccessProperties'] == null
          ? null
          : DirectoryWorkspaceAccessProperties.fromMap(
              (map['workspaceAccessProperties'] as Map)
                  .cast<String, dynamic>()),
      workspaceCreationProperties: map['workspaceCreationProperties'] == null
          ? null
          : DirectoryWorkspaceCreationProperties.fromMap(
              (map['workspaceCreationProperties'] as Map)
                  .cast<String, dynamic>()),
      workspaceDirectoryDescription:
          map['workspaceDirectoryDescription'] == null
              ? null
              : map['workspaceDirectoryDescription'] as String,
      workspaceDirectoryName: map['workspaceDirectoryName'] == null
          ? null
          : map['workspaceDirectoryName'] as String,
      workspaceType:
          map['workspaceType'] == null ? null : map['workspaceType'] as String,
    );
  }
}
