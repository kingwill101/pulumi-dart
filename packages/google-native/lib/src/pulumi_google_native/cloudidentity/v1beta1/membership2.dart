import 'package:pulumi/pulumi.dart';
import 'entity_key_response2.dart';
import 'membership_args2.dart';
import 'membership_role_response2.dart';

/// Creates a `Membership`.
/// Auto-naming is currently not supported for this resource.
class Membership2 extends CustomResource {
  /// The time when the `Membership` was created.
  late final Output<String> createTime;

  /// Delivery setting associated with the membership.
  late final Output<String> deliverySetting;
  late final Output<String> groupId;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  late final Output<EntityKeyResponse2> memberKey;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  late final Output<String> name;

  /// Immutable. The `EntityKey` of the member. Either `member_key` or `preferred_member_key` must be set when calling MembershipsService.CreateMembership but not both; both shall be set when returned.
  late final Output<EntityKeyResponse2> preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  late final Output<List<MembershipRoleResponse2>> roles;

  /// The type of the membership.
  late final Output<String> type;

  /// The time when the `Membership` was last updated.
  late final Output<String> updateTime;

  Membership2(
    String name, {
    MembershipArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1beta1:Membership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deliverySetting = Output.createUnknown<String>();
    this.groupId = Output.createUnknown<String>();
    this.memberKey = Output.createUnknown<EntityKeyResponse2>();
    this.name = Output.createUnknown<String>();
    this.preferredMemberKey = Output.createUnknown<EntityKeyResponse2>();
    this.roles = Output.createUnknown<List<MembershipRoleResponse2>>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
