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
  final pulumi.Input<String?>? region;

  /// Creates a new [GetGroupMembershipsArgs].
  /// [groupId] The identifier for a group in the Identity Store.
  /// [identityStoreId] Identity Store ID associated with the Single Sign-On Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetGroupMembershipsArgs({
    required this.groupId,
    required this.identityStoreId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'identityStoreId': identityStoreId,
      'region': ?region,
    };
  }

  factory GetGroupMembershipsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsArgs(
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      identityStoreId: pulumi.Input.fromValue(map['identityStoreId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
