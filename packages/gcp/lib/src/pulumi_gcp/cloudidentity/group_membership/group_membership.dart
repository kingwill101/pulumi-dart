import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_membership_member_key/group_membership_member_key.dart';
import '../group_membership_preferred_member_key/group_membership_preferred_member_key.dart';
import '../group_membership_role/group_membership_role.dart';
import 'group_membership_args.dart';

/// A Membership defines a relationship between a Group and an entity belonging to that Group, referred to as a "member".
///
///
/// To get more information about GroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the Cloud Identity API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Cloud Identity Group Membership
///
///
///
/// ### Cloud Identity Group Membership User
///
///
///
///
/// ## Import
///
/// GroupMembership can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, GroupMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/groupMembership:GroupMembership default {{name}}
/// ```
class GroupMembership extends pulumi.CustomResource {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  late final pulumi.Output<bool?> createIgnoreAlreadyExists;

  /// The time when the Membership was created.
  late final pulumi.Output<String> createTime;

  /// The name of the Group to create this membership in.
  late final pulumi.Output<String> group;

  /// EntityKey of the member.
  /// Structure is documented below.
  late final pulumi.Output<GroupMembershipMemberKey> memberKey;

  /// The resource name of the Membership, of the form groups/{group_id}/memberships/{membership_id}.
  late final pulumi.Output<String> name;

  /// EntityKey of the member.
  /// Structure is documented below.
  late final pulumi.Output<GroupMembershipPreferredMemberKey>
      preferredMemberKey;

  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  late final pulumi.Output<List<GroupMembershipRole>> roles;

  /// The type of the membership.
  late final pulumi.Output<String> type;

  /// The time when the Membership was last updated.
  late final pulumi.Output<String> updateTime;

  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createIgnoreAlreadyExists =
        registerOutput<bool?>('createIgnoreAlreadyExists');
    this.createTime = registerOutput<String>('createTime');
    this.group = registerOutput<String>('group');
    this.memberKey = registerOutput<GroupMembershipMemberKey>('memberKey');
    this.name = registerOutput<String>('name');
    this.preferredMemberKey =
        registerOutput<GroupMembershipPreferredMemberKey>('preferredMemberKey');
    this.roles = registerOutput<List<GroupMembershipRole>>('roles');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
