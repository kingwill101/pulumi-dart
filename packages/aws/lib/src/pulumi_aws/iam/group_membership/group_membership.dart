import 'package:pulumi/pulumi.dart';
import 'group_membership_args.dart';

/// > **WARNING:** Multiple aws.iam.GroupMembership resources with the same group name will produce inconsistent behavior!
///
/// Provides a top level resource to manage IAM Group membership for IAM Users. For
/// more information on managing IAM Groups or IAM Users, see IAM Groups or
/// IAM Users
///
/// > **Note:** `aws.iam.GroupMembership` will conflict with itself if used more than once with the same group. To non-exclusively manage the users in a group, see the
/// `aws.iam.UserGroupMembership` resource.
class GroupMembership extends CustomResource {
  /// The IAM Group name to attach the list of `users` to
  late final Output<String> group;

  /// The name to identify the Group Membership
  late final Output<String> name;

  /// A list of IAM User names to associate with the Group
  late final Output<List<String>> users;

  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/groupMembership:GroupMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.group = registerOutput<String>('group');
    this.name = registerOutput<String>('name');
    this.users = registerOutput<List<String>>('users');
  }
}
