import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_custom_permission_args.dart';

/// Manages the custom permissions profile for a user.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight user custom permissions using a comma-delimited string combining the `aws_account_id`, `namespace`, and `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/userCustomPermission:UserCustomPermission example 012345678901,default,user1
/// ```
class UserCustomPermission extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Custom permissions profile name.
  late final pulumi.Output<String> customPermissionsName;

  /// Namespace that the user belongs to. Defaults to `default`.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Username of the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  UserCustomPermission(
    String name, {
    UserCustomPermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/userCustomPermission:UserCustomPermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.customPermissionsName =
        registerOutput<String>('customPermissionsName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.userName = registerOutput<String>('userName');
  }
}
