import 'package:pulumi/pulumi.dart' hide Config;
import 'entity_key_response.dart';
import 'membership_args.dart';
import 'membership_role_response.dart';

/// Creates a `Membership`.
/// Auto-naming is currently not supported for this resource.
class Membership extends CustomResource {
  /// The time when the `Membership` was created.
  late final Output<String> createTime;

  /// Delivery setting associated with the membership.
  late final Output<String> deliverySetting;
  late final Output<String> groupId;

  /// The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group}/memberships/{membership}`.
  late final Output<String> name;

  /// Immutable. The `EntityKey` of the member.
  late final Output<EntityKeyResponse> preferredMemberKey;

  /// The `MembershipRole`s that apply to the `Membership`. If unspecified, defaults to a single `MembershipRole` with `name` `MEMBER`. Must not contain duplicate `MembershipRole`s with the same `name`.
  late final Output<List<MembershipRoleResponse>> roles;

  /// The type of the membership.
  late final Output<String> type;

  /// The time when the `Membership` was last updated.
  late final Output<String> updateTime;

  Membership(
    String name, {
    MembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1:Membership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deliverySetting = registerOutput<String>('deliverySetting');
    this.groupId = registerOutput<String>('groupId');
    this.name = registerOutput<String>('name');
    this.preferredMemberKey =
        registerOutput<EntityKeyResponse>('preferredMemberKey');
    this.roles = registerOutput<List<MembershipRoleResponse>>('roles');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
