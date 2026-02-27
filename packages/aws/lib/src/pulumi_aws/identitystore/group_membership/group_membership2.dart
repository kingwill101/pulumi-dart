import 'package:pulumi/pulumi.dart';
import 'group_membership_args2.dart';

/// Resource for managing an AWS IdentityStore Group Membership.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.identitystore.GroupMembership` using the `identity_store_id/membership_id`. For example:
///
/// ```sh
/// $ pulumi import aws:identitystore/groupMembership:GroupMembership example d-0000000000/00000000-0000-0000-0000-000000000000
/// ```
class GroupMembership2 extends CustomResource {
  /// The identifier for a group in the Identity Store.
  late final Output<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  late final Output<String> identityStoreId;

  /// The identifier for a user in the Identity Store.
  late final Output<String> memberId;

  /// The identifier of the newly created group membership in the Identity Store.
  late final Output<String> membershipId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  GroupMembership2(
    String name, {
    GroupMembershipArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/groupMembership:GroupMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupId = registerOutput<String>('groupId');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.memberId = registerOutput<String>('memberId');
    this.membershipId = registerOutput<String>('membershipId');
    this.region = registerOutput<String>('region');
  }
}
