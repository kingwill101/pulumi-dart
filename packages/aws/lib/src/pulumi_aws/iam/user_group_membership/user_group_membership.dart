import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_membership_args.dart';

/// Provides a resource for adding an IAM User to IAM Groups. This
/// resource can be used multiple times with the same user for non-overlapping
/// groups.
///
/// To exclusively manage the users in a group, see the
/// `aws.iam.GroupMembership` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM user group membership using the user name and group names separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userGroupMembership:UserGroupMembership example1 user1/group1/group2
/// ```
class UserGroupMembership extends pulumi.CustomResource {
  /// A list of IAM Groups to add the user to
  late final pulumi.Output<List<String>> groups;

  /// The name of the IAM User to add to groups
  late final pulumi.Output<String> user;

  UserGroupMembership(
    String name, {
    UserGroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userGroupMembership:UserGroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groups = registerOutput<List<String>>('groups');
    this.user = registerOutput<String>('user');
  }
}
