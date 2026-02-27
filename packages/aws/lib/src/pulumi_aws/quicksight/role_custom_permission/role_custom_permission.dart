import 'package:pulumi/pulumi.dart';
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
class RoleCustomPermission extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final Output<String> customPermissionsName;

  /// Namespace containing the role. Defaults to `default`.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Role. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final Output<String> role;

  RoleCustomPermission(
    String name, {
    RoleCustomPermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/roleCustomPermission:RoleCustomPermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.customPermissionsName =
        registerOutput<String>('customPermissionsName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
