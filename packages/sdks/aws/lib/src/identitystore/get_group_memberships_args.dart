// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitystore_get_group_memberships_get_group_memberships_args_doc}
/// Arguments for getGroupMemberships.
/// {@endtemplate}
/// {@macro pulumi_identitystore_get_group_memberships_get_group_memberships_args_doc}
class GetGroupMembershipsArgs {
  /// The identifier for a group in the Identity Store.
  final pulumi.Input<String> groupId;
  /// Identity Store ID associated with the Single Sign-On Instance.
  final pulumi.Input<String> identityStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetGroupMembershipsArgs].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetGroupMembershipsArgs({
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> identityStoreId,
    pulumi.Output<String>? region,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      identityStoreId = pulumi.Input.asInput<String>(identityStoreId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'identityStoreId': identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      identityStoreId: pulumi.Output.create<String>(map['identityStoreId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

