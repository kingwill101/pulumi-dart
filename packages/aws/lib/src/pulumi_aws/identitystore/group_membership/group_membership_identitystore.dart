import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_identitystore_args.dart';

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
class GroupMembershipIdentitystore extends pulumi.CustomResource {
  /// The identifier for a group in the Identity Store.
  late final pulumi.Output<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  late final pulumi.Output<String> identityStoreId;

  /// The identifier for a user in the Identity Store.
  late final pulumi.Output<String> memberId;

  /// The identifier of the newly created group membership in the Identity Store.
  late final pulumi.Output<String> membershipId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  GroupMembershipIdentitystore(
    String name, {
    GroupMembershipIdentitystoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupId = registerOutput<String>('groupId');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.memberId = registerOutput<String>('memberId');
    this.membershipId = registerOutput<String>('membershipId');
    this.region = registerOutput<String>('region');
  }
}
