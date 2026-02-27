import 'package:pulumi/pulumi.dart';
import 'role_membership_args.dart';

/// Resource for managing an AWS QuickSight Role Membership.
///
/// > The role membership APIs are disabled for identities managed by QuickSight. This resource can only be used when the QuickSight account subscription uses the Active Directory or IAM Identity Center authentication method.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Role Membership using a comma-delimited string combining the `aws_account_id`, `namespace`, `role`, and `member_name`. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/roleMembership:RoleMembership example 012345678901,default,READER,example-group
/// ```
class RoleMembership extends CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Name of the group to be added to the role.
  late final Output<String> memberName;

  /// Name of the namespace. Defaults to `default`.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Role to add the group to. Valid values are `ADMIN`, `AUTHOR`, `READER`, `ADMIN_PRO`, `AUTHOR_PRO`, and `READER_PRO`.
  ///
  /// The following arguments are optional:
  late final Output<String> role;

  RoleMembership(
    String name, {
    RoleMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/roleMembership:RoleMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.memberName = registerOutput<String>('memberName');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
