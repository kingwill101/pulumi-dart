import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_args.dart';

/// > **WARNING:** Multiple aws.iam.GroupMembership resources with the same group name will produce inconsistent behavior!
///
/// Provides a top level resource to manage IAM Group membership for IAM Users. For
/// more information on managing IAM Groups or IAM Users, see IAM Groups or
/// IAM Users
///
/// > **Note:** `aws.iam.GroupMembership` will conflict with itself if used more than once with the same group. To non-exclusively manage the users in a group, see the
/// `aws.iam.UserGroupMembership` resource.
class GroupMembership extends pulumi.CustomResource {
  /// The IAM Group name to attach the list of `users` to
  late final pulumi.Output<String> group;

  /// The name to identify the Group Membership
  late final pulumi.Output<String> name;

  /// A list of IAM User names to associate with the Group
  late final pulumi.Output<List<String>> users;

  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.users = registerOutput<List<String>>('users');
  }
}
