import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_custom_permission_args.dart';

/// Manages the custom permissions that are associated with a role.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight role custom permissions using a comma-delimited string combining the `aws_account_id`, `namespace`, and `role`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleCustomPermission:RoleCustomPermission example 012345678901,default,READER
/// ```
class RoleCustomPermission extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final pulumi.Output<String> customPermissionsName;

  /// Namespace containing the role. Defaults to `default`.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> role;

  RoleCustomPermission(
    String name, {
    RoleCustomPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/roleCustomPermission:RoleCustomPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.customPermissionsName =
        registerOutput<String>('customPermissionsName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
