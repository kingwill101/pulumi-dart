import 'package:pulumi/pulumi.dart' as pulumi;
import '../directory_active_directory_config/directory_active_directory_config.dart';
import '../directory_certificate_based_auth_properties/directory_certificate_based_auth_properties.dart';
import '../directory_saml_properties/directory_saml_properties.dart';
import '../directory_self_service_permissions/directory_self_service_permissions.dart';
import '../directory_workspace_access_properties/directory_workspace_access_properties.dart';
import '../directory_workspace_creation_properties/directory_workspace_creation_properties.dart';
import 'directory_workspaces_args.dart';

/// Provides a WorkSpaces directory in AWS WorkSpaces Service.
///
/// > **NOTE:** AWS WorkSpaces service requires [`workspaces_DefaultRole`](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role) IAM role to operate normally.
///
/// ## Example Usage
///
///
///
/// ### WorkSpaces Pools
///
///
///
/// ### IP Groups
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Workspaces directory using the directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/directory:Directory main d-4444444444
/// ```
class DirectoryWorkspaces extends pulumi.CustomResource {
  /// Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
  late final pulumi.Output<DirectoryActiveDirectoryConfig?>
      activeDirectoryConfig;

  /// The directory alias.
  late final pulumi.Output<String> alias;

  /// Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  late final pulumi.Output<DirectoryCertificateBasedAuthProperties>
      certificateBasedAuthProperties;

  /// The user name for the service account.
  late final pulumi.Output<String> customerUserName;

  /// The directory identifier for registration in WorkSpaces service.
  late final pulumi.Output<String> directoryId;

  /// The name of the directory.
  late final pulumi.Output<String> directoryName;

  /// The directory type.
  late final pulumi.Output<String> directoryType;

  /// The IP addresses of the DNS servers for the directory.
  late final pulumi.Output<List<String>> dnsIpAddresses;

  /// The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  late final pulumi.Output<String> iamRoleId;

  /// The identifiers of the IP access control groups associated with the directory.
  late final pulumi.Output<List<String>> ipGroupIds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  late final pulumi.Output<String> registrationCode;

  /// Configuration of SAML authentication integration. Defined below.
  late final pulumi.Output<DirectorySamlProperties> samlProperties;

  /// Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  late final pulumi.Output<DirectorySelfServicePermissions>
      selfServicePermissions;

  /// The identifiers of the subnets where the directory resides.
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  late final pulumi.Output<String> tenancy;

  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// > **Note:** When `workspace_type` is set to `POOLS`, the `directory_id` is automatically generated and cannot be manually set.
  late final pulumi.Output<String> userIdentityType;

  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  late final pulumi.Output<DirectoryWorkspaceAccessProperties>
      workspaceAccessProperties;

  /// Default properties that are used for creating WorkSpaces. Defined below.
  late final pulumi.Output<DirectoryWorkspaceCreationProperties>
      workspaceCreationProperties;

  /// The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  late final pulumi.Output<String?> workspaceDirectoryDescription;

  /// The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  late final pulumi.Output<String?> workspaceDirectoryName;

  /// The identifier of the security group that is assigned to new WorkSpaces.
  late final pulumi.Output<String> workspaceSecurityGroupId;

  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  late final pulumi.Output<String?> workspaceType;

  DirectoryWorkspaces(
    String name, {
    DirectoryWorkspacesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectoryConfig =
        registerOutput<DirectoryActiveDirectoryConfig?>(
            'activeDirectoryConfig');
    this.alias = registerOutput<String>('alias');
    this.certificateBasedAuthProperties =
        registerOutput<DirectoryCertificateBasedAuthProperties>(
            'certificateBasedAuthProperties');
    this.customerUserName = registerOutput<String>('customerUserName');
    this.directoryId = registerOutput<String>('directoryId');
    this.directoryName = registerOutput<String>('directoryName');
    this.directoryType = registerOutput<String>('directoryType');
    this.dnsIpAddresses = registerOutput<List<String>>('dnsIpAddresses');
    this.iamRoleId = registerOutput<String>('iamRoleId');
    this.ipGroupIds = registerOutput<List<String>>('ipGroupIds');
    this.region = registerOutput<String>('region');
    this.registrationCode = registerOutput<String>('registrationCode');
    this.samlProperties =
        registerOutput<DirectorySamlProperties>('samlProperties');
    this.selfServicePermissions =
        registerOutput<DirectorySelfServicePermissions>(
            'selfServicePermissions');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userIdentityType = registerOutput<String>('userIdentityType');
    this.workspaceAccessProperties =
        registerOutput<DirectoryWorkspaceAccessProperties>(
            'workspaceAccessProperties');
    this.workspaceCreationProperties =
        registerOutput<DirectoryWorkspaceCreationProperties>(
            'workspaceCreationProperties');
    this.workspaceDirectoryDescription =
        registerOutput<String?>('workspaceDirectoryDescription');
    this.workspaceDirectoryName =
        registerOutput<String?>('workspaceDirectoryName');
    this.workspaceSecurityGroupId =
        registerOutput<String>('workspaceSecurityGroupId');
    this.workspaceType = registerOutput<String?>('workspaceType');
  }
}
